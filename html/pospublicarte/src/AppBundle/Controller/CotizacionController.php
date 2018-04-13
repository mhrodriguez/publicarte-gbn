<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Cotizacion;
use AppBundle\Entity\CotizacionItem;
use AppBundle\Entity\Cliente;
use AppBundle\Entity\Producto;
use AppBundle\Entity\Moneda;
use AppBundle\Entity\Orden;
use AppBundle\Entity\OrdenEstado;
use AppBundle\Entity\OrdenItem;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Cotizacion controller.
 *
 * @Route("cotizacion")
 */
class CotizacionController extends Controller
{
    /**
     * Lists all cotizacion entities.
     *
     * @Route("/index", name="cotizacion_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        if ($this->get('security.authorization_checker')->isGranted('ROLE_COBRANZA')) {
            return $this->redirectToRoute('orden_indexfact');
        }

        $em = $this->getDoctrine()->getManager();

        $cotizaciones = $em->getRepository('AppBundle:Cotizacion')->findBy(array(), array('id'=>'DESC'));

        $usuarios = $em->getRepository('AppBundle:Usuario')->findBy(array(), array('nombre'=>'ASC'));
        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $estados = $em->getRepository('AppBundle:CotizacionEstado')->findAll();

        $ordenarForms = array();
        foreach ($cotizaciones as $cotizacion)
        {
            $ordenarForm = $this->createOrdenarForm($cotizacion);
            array_push($ordenarForms, $ordenarForm->createView());
        }

        $deleteForms = array();
        foreach ($cotizaciones as $cotizacion)
        {
            $deleteForm = $this->createDeleteForm($cotizacion);
            array_push($deleteForms, $deleteForm->createView());
        }

        return $this->render('cotizacion/index.html.twig', array(
            'cotizaciones' => $cotizaciones,
            'usuarios' => $usuarios,
            'clientes' => $clientes,
            'estados' => $estados,
            'ordenarForms' => $ordenarForms,
            'deleteForms' => $deleteForms
        ));
    }

    /**
     * Creates a new cotizacion entity.
     *
     * @Route("/new", name="cotizacion_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $subtotal = 0;
        $iva = 0;
        $total = 0;

        $em = $this->getDoctrine()->getManager();

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array('activo' => true), array('razonsocial'=>'ASC'));
        $productos = $em->getRepository('AppBundle:Producto')->findBy(array('activo' => true), array('nombre'=>'ASC'));
        $esquemapagos = $em->getRepository('AppBundle:EsquemaPago')->findAll();
        $contactos = array();

        // 1. Contactos
        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_cotizacion');

            if (isset($data["cliente"])) {
                $idCliente = $data["cliente"];

                if ($idCliente != null) {
                    $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);

                    foreach ($cliente->getContactos() as $contacto) { array_push($contactos, $contacto); }
                }
            }
        }

        $cotizacion = new Cotizacion();
        $form = $this->createForm('AppBundle\Form\CotizacionType', $cotizacion, array('clientes'=>$clientes, 'contactos'=>$contactos, 'esquemapagos'=>$esquemapagos));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $authuser = $this->get('security.context')->getToken()->getUser();

            $moneda = $em->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1);

            // 1. Obtener los elementos
            $items = $cotizacion->getItemsaux();
            $cotizacion = $this->agregarItems($cotizacion, $items);

            // 2. Totales
            $cotizacion->actualizarTotales();

            $cotizacion->setUsuario($authuser);
            $cotizacion->setEmpresa($authuser->getEmpresa());
            $cotizacion->setSucursal($authuser->getSucursales()[0]);
            $cotizacion->setMoneda($moneda);

            $estadoInicial = $em->getRepository('AppBundle:CotizacionEstado')->findOneById(1);

            $cotizacion->setEstado($estadoInicial);

            $em->persist($cotizacion);
            $em->flush();

            $url = $this->generateUrl('cotizacion_showprint', array('id' => $cotizacion->getId()));

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);
            FlashMensajeUtil::push("accion", "window.open('" . $url . "');");

            return $this->redirectToRoute('cotizacion_index', array());
        }

        return $this->render('cotizacion/new.html.twig', array(
            'cotizacion' => $cotizacion,
            'productos' => $productos,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a cotizacion entity.
     *
     * @Route("/{id}", name="cotizacion_show")
     * @Method("GET")
     */
    public function showAction(Cotizacion $cotizacion)
    {
        $em = $this->getDoctrine()->getManager();

        $deleteForm = $this->createDeleteForm($cotizacion);

        $productos = $em->getRepository('AppBundle:Producto')->findBy(array(), array('nombre'=>'ASC'));

        return $this->render('cotizacion/show.html.twig', array(
            'cotizacion' => $cotizacion,
            'productos' => $productos,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Finds and displays a cotizacion entity.
     *
     * @Route("/showpdf/{id}", name="cotizacion_showpdf")
     * @Method("GET")
     */
    public function showpdfAction(Cotizacion $cotizacion)
    {
        $nombrearchivo = $this->generarPdf($cotizacion);

        $response = new Response(
            'Content',
            Response::HTTP_OK,
            array('content-type' => 'application/pdf', 'Content-Disposition' => 'attachment; filename='.'Cotizacion' . strval($cotizacion->getId()) . '.pdf')
        );

        $response->setContent(file_get_contents($nombrearchivo));

        return $response;
    }

    /**
     * Finds and displays a cotizacion entity.
     *
     * @Route("/showprint/{id}", name="cotizacion_showprint")
     * @Method("GET")
     */
    public function showprintAction(Cotizacion $cotizacion)
    {
        return $this->render('cotizacion/showprint.html.twig', array(
            'cotizacion' => $cotizacion,
        ));
    }

    /**
     * Finds and displays a cotizacion entity.
     *
     * @Route("/mail/{id}", name="cotizacion_mail")
     * @Method("GET")
     */
    public function mailAction(Cotizacion $cotizacion)
    {
        $em = $this->getDoctrine()->getManager();

        //$nombrearchivo = $this->generarPdf($cotizacion);

        // Enviar E-Mail a cliente
        $message = \Swift_Message::newInstance()
                ->setSubject("Cotización Folio:" . strval($cotizacion->getId()))
                ->setFrom("publicarte@damtec.mx")
                ->setTo($cotizacion->getContacto()->getCorreo())
                ->setBody(
                    $this->renderView(
                        'cotizacion/mail.html.twig',
                        array(),
                        "text/html"
                    ));
                //->attach(\Swift_Attachment::fromPath($nombrearchivo));
            $message->setContentType("text/html");
            $this->get('mailer')->send($message);

        FlashMensajeUtil::push("alerta", "E-mail enviado a " . $cotizacion->getContacto()->getNombrecompleto() . " (" . $cotizacion->getContacto()->getCorreo() . ")");

        return $this->redirectToRoute('cotizacion_index', array());
    }


    /**
     * Displays a form to edit an existing cotizacion entity.
     *
     * @Route("/{id}/edit", name="cotizacion_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Cotizacion $cotizacion)
    {
        $em = $this->getDoctrine()->getManager();

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $productos = $em->getRepository('AppBundle:Producto')->findBy(array(), array('nombre'=>'ASC'));
        $esquemapagos = $em->getRepository('AppBundle:EsquemaPago')->findAll();
        $contactos = array();

        // 1. Contactos
        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_cotizacion');

            if (isset($data["cliente"])) {
                $idCliente = $data["cliente"];

                if ($idCliente != null) {
                    $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);
                    foreach ($cliente->getContactos() as $contacto) { array_push($contactos, $contacto); }
                }
            }
        }
        else
        {
            if ($cotizacion->getCliente() != null) {
                foreach ($cotizacion->getCliente()->getContactos() as $contacto) {
                    array_push($contactos, $contacto);
                }
            }
        }

        $deleteForm = $this->createDeleteForm($cotizacion);
        $editForm = $this->createForm('AppBundle\Form\CotizacionType', $cotizacion, array('clientes'=>$clientes, 'contactos'=>$contactos, 'esquemapagos'=>$esquemapagos, 'editando'=>true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            // 1. Obtener los elementos
            $items = $cotizacion->getItemsaux();
            $itemsactualizados = $cotizacion->getItemsauxactualizados();
            $itemsborrados = $cotizacion->getItemsauxborrados();

            // 1.1 Agregar
            $cotizacion = $this->agregarItems($cotizacion, $items);
            // 1.2 Actualizar
            $cotizacion = $this->actualizarItems($cotizacion, $itemsactualizados);
            // 1.3 Borrar
            $cotizacion = $this->borrarItems($cotizacion, $itemsborrados);

            // 2. Totales
            $cotizacion->actualizarTotales();

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            $url = $this->generateUrl('cotizacion_showprint', array('id' => $cotizacion->getId()));
            FlashMensajeUtil::push("accion", "window.open('" . $url . "');");

            return $this->redirectToRoute('cotizacion_index', array());
        }

        return $this->render('cotizacion/edit.html.twig', array(
            'cotizacion' => $cotizacion,
            'productos' => $productos,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a cotizacion entity.
     *
     * @Route("/{id}", name="cotizacion_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Cotizacion $cotizacion)
    {
        $form = $this->createDeleteForm($cotizacion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Validar
            $orden = $em->getRepository('AppBundle:Orden')->findOneByCotizacion($cotizacion);
            if ($orden != null)
            {
                FlashMensajeUtil::push("error", "No se puede borrar la cotización porque tiene una orden de trabajo asociada.");
                return $this->redirectToRoute('cotizacion_index');
            }

            $cotizacion->getItems()->clear();

            $em->remove($cotizacion);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
        }

        return $this->redirectToRoute('cotizacion_index');
    }

    /**
     * Creates a form to delete a cotizacion entity.
     *
     * @param Cotizacion $cotizacion The cotizacion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Cotizacion $cotizacion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cotizacion_delete', array('id' => $cotizacion->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    /**
     * Deletes a cotizacion entity.
     *
     * @Route("/{id}", name="cotizacion_ordenar")
     * @Method("PUT")
     */
    public function ordenarAction(Request $request, Cotizacion $cotizacion)
    {
        $form = $this->createOrdenarForm($cotizacion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Validar
            /* PERMITIR DUPLICADOS
             * $orden = $em->getRepository('AppBundle:Orden')->findOneByCotizacion($cotizacion);
            if ($orden != null)
            {
                FlashMensajeUtil::push("error", "Ya existe una Orden de trabajo para esta cotización.");
                return $this->redirectToRoute('cotizacion_index');
            }*/

            // Generar orden
            $orden = new Orden();
            $orden->setUsuario($cotizacion->getUsuario());
            $orden->setEmpresa($cotizacion->getEmpresa());
            $orden->setSucursal($cotizacion->getSucursal());
            $orden->setCliente($cotizacion->getCliente());
            $orden->setContacto($cotizacion->getContacto());

            $orden->setSubtotal($cotizacion->getSubtotal());
            $orden->setIva($cotizacion->getIva());
            $orden->setTotal($cotizacion->getTotal());

            $orden->setMoneda($cotizacion->getMoneda());

            $estado = $em->getRepository('AppBundle:OrdenEstado')->findOneById(1);
            $orden->setEstado($estado);

            $orden->setCotizacion($cotizacion);

            foreach ($cotizacion->getItems() as $item)
            {
                $item2 = new OrdenItem();

                $item2->setProducto($item->getProducto());
                $item2->setDescripcion($item->getDescripcion());
                $item2->setPrecio($item->getPrecio());
                $item2->setCantidad($item->getCantidad());
                $item2->setTotal($item->getTotal());
                $item2->setMoneda($item->getMoneda());

                $orden->addItem($item2);
            }

            $em->persist($orden);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);
            FlashMensajeUtil::push("alerta", "Se generó la Orden de Trabajo con folio " . $orden->getId() . ".");
        }

        return $this->redirectToRoute('cotizacion_index');
    }

    /**
     * Creates a form to delete a cotizacion entity.
     *
     * @param Cotizacion $cotizacion The cotizacion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createOrdenarForm(Cotizacion $cotizacion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cotizacion_ordenar', array('id' => $cotizacion->getId())))
            ->setMethod('PUT')
            ->getForm()
            ;
    }



    private function agregarItems(Cotizacion $cotizacion, $items)
    {
        $em = $this->getDoctrine()->getManager();
        $moneda = $em->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1);

        $jsonItems = json_decode($items);

        foreach ($jsonItems as $item) {
            $idProducto = $item->IdProducto;
            $descripcion = $item->Concepto;
            $precio = $item->Precio;
            $cantidad = $item->Cantidad;

            $cotizacionitem = new CotizacionItem();

            if ($idProducto != null && $idProducto > 0)
            {
                $producto = $em->getRepository('AppBundle:Producto')->findOneById($idProducto);
                $cotizacionitem->setProducto($producto);
            }
            $cotizacionitem->setDescripcion($descripcion);
            $cotizacionitem->setPrecio($precio);
            $cotizacionitem->setCantidad($cantidad);
            $cotizacionitem->setTotal($precio*$cantidad);
            $cotizacionitem->setMoneda($moneda);

            $cotizacion->addItem($cotizacionitem);
        }

        return $cotizacion;
    }

    private function actualizarItems(Cotizacion $cotizacion, $items)
    {
        $em = $this->getDoctrine()->getManager();

        $jsonItems = json_decode($items);

        foreach ($jsonItems as $item) {

            $id = $item->Id;

            foreach($cotizacion->getItems() as $cotizacionitem) {
                if ($cotizacionitem->getId() == $id) {

                    $idProducto = $item->IdProducto;
                    $descripcion = $item->Concepto;
                    $precio = $item->Precio;
                    $cantidad = $item->Cantidad;

                    if ($idProducto != null && $idProducto > 0)
                    {
                        $producto = $em->getRepository('AppBundle:Producto')->findOneById($idProducto);
                        $cotizacionitem->setProducto($producto);
                    }
                    $cotizacionitem->setDescripcion($descripcion);
                    $cotizacionitem->setPrecio($precio);
                    $cotizacionitem->setCantidad($cantidad);
                    $cotizacionitem->setTotal($precio*$cantidad);

                    break;
                }
            }
        }

        return $cotizacion;
    }

    private function borrarItems(Cotizacion $cotizacion, $items)
    {
        $jsonItems = json_decode($items);

        foreach ($jsonItems as $item) {
            $id = $item->Id;

            foreach($cotizacion->getItems() as $cotizacionitem)
            {
                if ($cotizacionitem->getId() == $id)
                {
                    $cotizacion->removeItem($cotizacionitem);
                }
            }
        }

        return $cotizacion;
    }

    private function generarPdf($cotizacion)
    {
        $nombre = __DIR__ . "/../../../repositorio/pdf/cotizacion/Cotizacion" . strval($cotizacion->getId()) . ".pdf";

        if (file_exists($nombre))
        {
            unlink($nombre);
        }

        $snappy = $this->container->get('knp_snappy.pdf');
        $options = [
            'margin-top'    => 10,
            'margin-right'  => 0,
            'margin-bottom' => 10,
            'margin-left'   => 0,
        ];
        foreach ($options as $margin => $value) {
            $snappy->setOption($margin, $value);
        }

        $snappy->generate($this->generateUrl("cotizacion_showprint", array('id'=>$cotizacion->getId()), true), $nombre);

        return $nombre;
    }
}
