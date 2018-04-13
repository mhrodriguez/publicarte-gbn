<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Orden;
use AppBundle\Entity\OrdenItem;
use AppBundle\Entity\Cliente;
use AppBundle\Entity\Pago;
use AppBundle\Entity\Producto;
use AppBundle\Entity\Moneda;

use AppBundle\LN\OrdenLN;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

use Doctrine\Common\Collections\ArrayCollection;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Orden controller.
 *
 * @Route("orden")
 */
class OrdenController extends Controller
{
    /**
     * Lists all orden entities.
     *
     * @Route("/", name="orden_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $ordenLN = new OrdenLN($em);

        $ordenes = $ordenLN->obtenerSinTerminar();
        $usuarios = $em->getRepository('AppBundle:Usuario')->findBy(array(), array('nombre'=>'ASC'));
        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $tipos = $em->getRepository('AppBundle:OrdenTipo')->findAll();
        $maquinas = $em->getRepository('AppBundle:Maquina')->findAll();
        $estados = $ordenLN->obtenerEstadosSinTerminar2();

        $facturaForms = array();
        foreach ($ordenes as $orden)
        {
            $facturaForm = $this->createFacturaForm($orden);
            array_push($facturaForms, $facturaForm->createView());
        }

        $cobrarForms = array();
        foreach ($ordenes as $orden)
        {
            $cobrarForm = $this->createCobrarForm($orden);
            array_push($cobrarForms, $cobrarForm->createView());
        }

        $deleteForms = array();
        foreach ($ordenes as $orden)
        {
            $deleteForm = $this->createDeleteForm($orden);
            array_push($deleteForms, $deleteForm->createView());
        }

        $clonarForms = array();
        foreach ($ordenes as $orden)
        {
            $clonarForm = $this->createClonarForm('orden_clonar', $orden);
            array_push($clonarForms, $clonarForm->createView());
        }

        return $this->render('orden/index.html.twig', array(
            'ordenes' => $ordenes,
            'usuarios' => $usuarios,
            'clientes' => $clientes,
            'estados' => $estados,
            'tipos' => $tipos,
            'maquinas' => $maquinas,
            'facturaForms' => $facturaForms,
            'cobrarForms' => $cobrarForms,
            'deleteForms' => $deleteForms,
            'clonarForms' => $clonarForms
        ));
    }

    /**
     * Lists all orden entities.
     *
     * @Route("/indexfact", name="orden_indexfact")
     * @Method("GET")
     */
    public function indexfactAction()
    {
        $em = $this->getDoctrine()->getManager();
        $ordenLN = new OrdenLN($em);

        $ordenes = $ordenLN->obtenerFacturadasTerminadas();
        $estados = $ordenLN->obtenerEstadosTerminados();
        $usuarios = $em->getRepository('AppBundle:Usuario')->findBy(array(), array('nombre'=>'ASC'));
        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $tipos = $em->getRepository('AppBundle:OrdenTipo')->findAll();
        $maquinas = $em->getRepository('AppBundle:Maquina')->findAll();

        $clonarForms = array();
        foreach ($ordenes as $orden)
        {
            $clonarForm = $this->createClonarForm('orden_clonar2', $orden);
            array_push($clonarForms, $clonarForm->createView());
        }

        return $this->render('orden/indexterm.html.twig', array(
            'ordenes' => $ordenes,
            'usuarios' => $usuarios,
            'clientes' => $clientes,
            'estados' => $estados,
            'tipos' => $tipos,
            'maquinas' => $maquinas,
            'pathedit' => 'orden_editfact',
            'clonarForms' => $clonarForms,
            'facturadas' => true
        ));
    }

    /**
     * Lists all orden entities.
     *
     * @Route("/indexesp", name="orden_indexesp")
     * @Method("GET")
     */
    public function indexespAction()
    {
        $em = $this->getDoctrine()->getManager();
        $ordenLN = new OrdenLN($em);

        $ordenes = $ordenLN->obtenerFacturadasEspeciales();
        $estados = $ordenLN->obtenerEstadosTerminados();
        $usuarios = $em->getRepository('AppBundle:Usuario')->findBy(array(), array('nombre'=>'ASC'));
        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $tipos = $em->getRepository('AppBundle:OrdenTipo')->findAll();
        $maquinas = $em->getRepository('AppBundle:Maquina')->findAll();

        $clonarForms = array();
        foreach ($ordenes as $orden)
        {
            $clonarForm = $this->createClonarForm('orden_clonar3', $orden);
            array_push($clonarForms, $clonarForm->createView());
        }

        return $this->render('orden/indexterm.html.twig', array(
            'ordenes' => $ordenes,
            'usuarios' => $usuarios,
            'clientes' => $clientes,
            'estados' => $estados,
            'tipos' => $tipos,
            'maquinas' => $maquinas,
            'pathedit' => 'orden_editesp',
            'clonarForms' => $clonarForms,
            'facturadas' => false
        ));
    }

    /**
     * Creates a new orden entity.
     *
     * @Route("/new", name="orden_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array('activo' => true), array('razonsocial'=>'ASC'));
        $productos = $em->getRepository('AppBundle:Producto')->findBy(array('activo' => true), array('nombre'=>'ASC'));
        $metodopagos = $em->getRepository('AppBundle:MetodoPago')->findAll();
        $impresionopciones = $em->getRepository('AppBundle:ImpresionOpcion')->findBy(array('activo' => true));
        $usocfdis = $em->getRepository('AppBundle:UsoCFDI')->findAll();
        $tipos = $em->getRepository('AppBundle:OrdenTipo')->findAll();
        $maquinas = $em->getRepository('AppBundle:Maquina')->findAll();
        $contactos = array();
        $mediopagos= array();

        // 1. Contactos
        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_orden');

            if (isset($data["cliente"])) {
                $idCliente = $data["cliente"];

                if ($idCliente != null) {
                    $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);

                    foreach ($cliente->getContactos() as $contacto) { array_push($contactos, $contacto); }
                }
            }

            if (isset($data["metodopago"])) {
                $idMetodoPago = $data["metodopago"];

                if ($idMetodoPago != null) {
                    $metodoPago = $em->getRepository('AppBundle:MetodoPago')->findOneById($idMetodoPago);

                    foreach ($metodoPago->getMediopagos() as $medioPago) { array_push($mediopagos, $medioPago); }
                }
            }
        }

        $orden = new Orden();
        $form = $this->createForm('AppBundle\Form\OrdenType', $orden, array('clientes'=>$clientes, 'contactos'=>$contactos, 'impresionopciones'=>$impresionopciones, 'estados'=>array(), 'usocfdis'=>$usocfdis, 'metodopagos'=>$metodopagos, 'mediopagos'=>$mediopagos, 'tipos'=>$tipos, 'maquinas'=>$maquinas));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $authuser = $this->get('security.context')->getToken()->getUser();

            $moneda = $em->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1);

            // 1. Obtener los elementos
            $items = $orden->getItemsaux();
            $orden = $this->agregarItems($orden, $items);

            // 2. Totales
            $orden->actualizarTotales();

            $orden->setUsuario($authuser);
            $orden->setEmpresa($authuser->getEmpresa());
            $orden->setSucursal($authuser->getSucursales()[0]);
            $orden->setMoneda($moneda);

            $estadoInicial = $em->getRepository('AppBundle:OrdenEstado')->findOneById(1);

            $orden->setEstado($estadoInicial);

            $em->persist($orden);
            $em->flush();

            $url = $this->generateUrl('orden_showprint', array('id' => $orden->getId()));

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);
            FlashMensajeUtil::push("accion", "window.open('" . $url . "');");

            return $this->redirectToRoute('orden_index', array());
        }

        return $this->render('orden/new.html.twig', array(
            'orden' => $orden,
            'productos' => $productos,
            'form' => $form->createView(),
        ));
    }

    /**
     * Creates a new orden entity.
     *
     * @Route("/hnew", name="orden_hnew")
     * @Method({"GET", "POST"})
     */
    public function hnewAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array('activo' => true), array('razonsocial'=>'ASC'));

        $orden = new Orden();
        $form = $this->createForm('AppBundle\Form\HOrdenType', $orden, array('clientes'=>$clientes));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $authuser = $this->get('security.context')->getToken()->getUser();

            $moneda = $em->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1);

            // 1. Totales
            $orden->setSubtotal($orden->getTotal()/1.16);
            $orden->setIva($orden->getSubtotal()*0.16);

            // 2.
            $orden->setUsuario($authuser);
            $orden->setEmpresa($authuser->getEmpresa());
            $orden->setSucursal($authuser->getSucursales()[0]);
            $orden->setMoneda($moneda);
            $orden->setEspecial(false);

            $estadoNoPagado = $em->getRepository('AppBundle:OrdenEstado')->findOneById(10);
            $orden->setEstado($estadoNoPagado);

            // 3. Abono
            $tipo = $em->getRepository('AppBundle:PagoTipo')->findOneById(1);

            $pago = new Pago();
            $pago->setUsuario($authuser);
            $pago->setEmpresa($authuser->getEmpresa());
            $pago->setMoneda($moneda);
            $pago->setMonto($orden->getAbono());
            $pago->setOrden($orden);
            $pago->setTipo($tipo);

            $em->persist($orden);
            $em->persist($pago);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('orden_indexfact', array());
        }

        return $this->render('orden/hnew.html.twig', array(
            'orden' => $orden,
            'form' => $form->createView(),
        ));
    }





    /**
     * Finds and displays a orden entity.
     *
     * @Route("/{id}", name="orden_show")
     * @Method("GET")
     */
    public function showAction(Orden $orden)
    {
        $em = $this->getDoctrine()->getManager();

        $deleteForm = $this->createDeleteForm($orden);

        $productos = $em->getRepository('AppBundle:Producto')->findBy(array(), array('nombre'=>'ASC'));

        return $this->render('orden/show.html.twig', array(
            'orden' => $orden,
            'productos' => $productos,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Finds and displays a orden entity.
     *
     * @Route("/showprint/{id}", name="orden_showprint")
     * @Method("GET")
     */
    public function showprintAction(Request $request, Orden $orden)
    {
        $conprecios = $request->query->get('cp');

        return $this->render('orden/showprint.html.twig', array(
            'orden' => $orden,
            'conprecios' => $conprecios
        ));
    }

    /**
     * Finds and displays a cotizacion entity.
     *
     * @Route("/showpdf/{id}", name="orden_showpdf")
     * @Method("GET")
     */
    public function showpdfAction(Request $request, Orden $orden)
    {
        $conprecios = $request->query->get('cp');

        $nombrearchivo = $this->generarPdf($orden, $conprecios);

        $response = new Response(
            'Content',
            Response::HTTP_OK,
            array('content-type' => 'application/pdf', 'Content-Disposition' => 'attachment; filename='.'Orden' . strval($orden->getId()) . '.pdf')
        );

        $response->setContent(file_get_contents($nombrearchivo));

        return $response;
    }

    /**
     * Displays a form to edit an existing orden entity.
     *
     * @Route("/{id}/edit", name="orden_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Orden $orden)
    {
        $em = $this->getDoctrine()->getManager();
        $ordenLN = new OrdenLN($em);

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $metodopagos = $em->getRepository('AppBundle:MetodoPago')->findAll();
        $productos = $em->getRepository('AppBundle:Producto')->findBy(array(), array('nombre'=>'ASC'));
        $usocfdis = $em->getRepository('AppBundle:UsoCFDI')->findAll();
        $impresionopciones = $em->getRepository('AppBundle:ImpresionOpcion')->findBy(array('activo' => true));
        $tipos = $em->getRepository('AppBundle:OrdenTipo')->findAll();
        $maquinas = $em->getRepository('AppBundle:Maquina')->findAll();
        $estados = $ordenLN->obtenerEstadosSinTerminar();

        $contactos = array();
        $mediopagos= array();

        // 1. Contactos
        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_orden');

            if (isset($data["cliente"])) {
                $idCliente = $data["cliente"];

                if ($idCliente != null) {
                    $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);
                    foreach ($cliente->getContactos() as $contacto) { array_push($contactos, $contacto); }
                }
            }

            if (isset($data["metodopago"])) {
                $idMetodoPago = $data["metodopago"];

                if ($idMetodoPago != null) {
                    $metodoPago = $em->getRepository('AppBundle:MetodoPago')->findOneById($idMetodoPago);

                    foreach ($metodoPago->getMediopagos() as $medioPago) { array_push($mediopagos, $medioPago); }
                }
            }
        }
        else
        {
            if ($orden->getCliente() != null) {
                foreach ($orden->getCliente()->getContactos() as $contacto) {
                    array_push($contactos, $contacto);
                }
            }

            if ($orden->getMetodopago() != null) {
                foreach ($orden->getMetodopago()->getMediopagos() as $mediopago) {
                    array_push($mediopagos, $mediopago);
                }
            }
        }

        $deleteForm = $this->createDeleteForm($orden);
        $editForm = $this->createForm('AppBundle\Form\OrdenType', $orden, array('clientes'=>$clientes, 'contactos'=>$contactos, 'impresionopciones'=>$impresionopciones, 'estados'=>$estados, 'usocfdis'=>$usocfdis, 'metodopagos'=>$metodopagos, 'mediopagos'=>$mediopagos, 'tipos'=>$tipos, 'maquinas'=>$maquinas, 'editando'=>true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            // 1. Obtener los elementos
            $itemsactualizados = $orden->getItemsauxactualizados();
            $itemsborrados = $orden->getItemsauxborrados();
            $items = $orden->getItemsaux();

            // 1.2 Actualizar
            $orden = $this->agregarItems($orden, $items);
            $orden = $this->actualizarItems($orden, $itemsactualizados);
            $orden = $this->borrarItems($orden, $itemsborrados);

            // 2. Si el estado es Terminado, poner en No pagado
            if ($orden->getEstado()->getId() == 9)
            {
                if ($orden->getSaldopendiente() > 0)
                {
                    $estado = $em->getRepository('AppBundle:OrdenEstado')->findOneById(10); // No pagado
                }
                else
                {
                    $estado = $em->getRepository('AppBundle:OrdenEstado')->findOneById(11); // Pagado
                }
                $orden->setEstado($estado);
            }

            // 3. Totales
            $orden->actualizarTotales();

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            $url = $this->generateUrl('orden_showprint', array('id' => $orden->getId()));
            FlashMensajeUtil::push("accion", "window.open('" . $url . "');");

            return $this->redirectToRoute('orden_index', array());
        }

        return $this->render('orden/edit.html.twig', array(
            'orden' => $orden,
            'productos' => $productos,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing orden entity.
     *
     * @Route("/{id}/editfact", name="orden_editfact")
     * @Method({"GET", "POST"})
     */
    public function editfactAction(Request $request, Orden $orden)
    {
        return $this->edittermHelperAction($request, $orden, 'orden_indexfact');
    }

    /**
     * Displays a form to edit an existing orden entity.
     *
     * @Route("/{id}/editesp", name="orden_editesp")
     * @Method({"GET", "POST"})
     */
    public function editespAction(Request $request, Orden $orden)
    {
        return $this->edittermHelperAction($request, $orden, 'orden_indexesp');
    }

    public function edittermHelperAction(Request $request, Orden $orden, $pathback)
    {
        $em = $this->getDoctrine()->getManager();
        $ordenLN = new OrdenLN($em);

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('razonsocial'=>'ASC'));
        $productos = $em->getRepository('AppBundle:Producto')->findBy(array(), array('nombre'=>'ASC'));
        $usocfdis = $em->getRepository('AppBundle:UsoCFDI')->findAll();
        $metodopagos = $em->getRepository('AppBundle:MetodoPago')->findAll();
        $impresionopciones = $em->getRepository('AppBundle:ImpresionOpcion')->findBy(array('activo' => true));
        $tipos = $em->getRepository('AppBundle:OrdenTipo')->findAll();
        $maquinas = $em->getRepository('AppBundle:Maquina')->findAll();
        $estados = $ordenLN->obtenerEstadosTerminadosParaEdicion();

        $contactos = array();
        $mediopagos= array();

        // 1. Contactos
        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_orden');

            if (isset($data["cliente"])) {
                $idCliente = $data["cliente"];

                if ($idCliente != null) {
                    $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);
                    foreach ($cliente->getContactos() as $contacto) { array_push($contactos, $contacto); }
                }
            }

            if (isset($data["metodopago"])) {
                $idMetodoPago = $data["metodopago"];

                if ($idMetodoPago != null) {
                    $metodoPago = $em->getRepository('AppBundle:MetodoPago')->findOneById($idMetodoPago);

                    foreach ($metodoPago->getMediopagos() as $medioPago) { array_push($mediopagos, $medioPago); }
                }
            }
        }
        else
        {
            if ($orden->getCliente() != null) {
                foreach ($orden->getCliente()->getContactos() as $contacto) {
                    array_push($contactos, $contacto);
                }
            }
            if ($orden->getMetodopago() != null) {
                foreach ($orden->getMetodopago()->getMediopagos() as $mediopago) {
                    array_push($mediopagos, $mediopago);
                }
            }
        }

        $deleteForm = $this->createDeleteForm($orden);
        $editForm = $this->createForm('AppBundle\Form\OrdenType', $orden, array('clientes'=>$clientes, 'contactos'=>$contactos, 'impresionopciones'=>$impresionopciones, 'estados'=>$estados, 'usocfdis'=>$usocfdis, 'metodopagos'=>$metodopagos, 'mediopagos'=>$mediopagos, 'tipos'=>$tipos, 'maquinas'=>$maquinas, 'editando'=>true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            // 1. Actualizar
            //$itemsactualizados = $orden->getItemsauxactualizados();
            //$this->actualizarItems($orden, $itemsactualizados);

            // 2. Totales
            //$orden->actualizarTotales();

            // 3. Si el estado es Terminado, limpiar campo factura
            if ($orden->getEstado()->getId() == 8)
            {
                $orden->setFoliofactura(null);
            }

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute($pathback, array());
        }

        return $this->render('orden/editterm.html.twig', array(
            'orden' => $orden,
            'productos' => $productos,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
            'pathback' => $pathback
        ));
    }



    /**
     * Deletes a orden entity.
     *
     * @Route("/{id}", name="orden_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Orden $orden)
    {
        $form = $this->createDeleteForm($orden);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            $orden->getItems()->clear();
            $orden->getPagos()->clear();

            $em->remove($orden);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
        }

        return $this->redirectToRoute('orden_index');
    }

    /**
     * Creates a form to delete a orden entity.
     *
     * @param Orden $orden The orden entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Orden $orden)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('orden_delete', array('id' => $orden->getId())))
            ->setMethod('DELETE')
            ->getForm()
            ;
    }

    /**
     * Factura orden entity.
     *
     * @Route("/factura/{id}", name="orden_factura")
     * @Method("PUT")
     */
    public function facturaAction(Request $request, Orden $orden)
    {
        /*$authuser = $this->get('security.context')->getToken()->getUser();

        $form = $this->createFacturaForm($orden);
        $form->handleRequest($request);

        $folio = $request->query->get('folio');

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Validar
            if ( count($orden->getPagos()) == 0 )
            {
                FlashMensajeUtil::push("error", "La orden no tiene ningún pago registrado.");

                return $this->redirectToRoute('orden_index');
            }
            else
            {
                foreach ($orden->getPagos() as $pago)
                {
                    if ($pago->getValidado() == false)
                    {
                        FlashMensajeUtil::push("error", "La orden no tiene todos los pagos validados.");

                        return $this->redirectToRoute('orden_index');
                    }
                }
            }

            if ($orden->getSaldopendiente() > 0)
            {
                FlashMensajeUtil::push("error", "La orden tiene saldo pendiente.");

                return $this->redirectToRoute('orden_index');
            }

            if ($folio == null)
            {
                FlashMensajeUtil::push("error", "El folio es inválido.");

                return $this->redirectToRoute('orden_index');
            }

            // 2. Crear Factura
            //$estadoSinPagar = $em->getRepository('AppBundle:FacturaEstado')->findOneById(1);
            $estadoFacturada = $em->getRepository('AppBundle:OrdenEstado')->findOneById(4);

            $orden->setEstado($estadoFacturada);
            $orden->setFoliofactura($folio);

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_OPERACIONEXITOSA);
        }

        return $this->redirectToRoute('orden_index');*/
    }

    /**
     * Creates a form to Factura a orden entity.
     *
     * @param Orden $orden The orden entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createFacturaForm(Orden $orden)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('orden_factura', array('id' => $orden->getId())))
            ->setMethod('PUT')
            ->getForm()
            ;
    }

    /**
     * Valida a pago entity.
     *
     * @Route("/orden/{id}", name="orden_cobrar")
     * @Method("PUT")
     */
    public function cobrarAction(Request $request, Orden $orden)
    {
        $form = $this->createCobrarForm($orden);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            $cobrada = $em->getRepository('AppBundle:OrdenEstado')->findOneById(11);
            $orden->setEstado($cobrada);

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_OPERACIONEXITOSA);
        }

        return $this->redirectToRoute('orden_index', array());
    }

    /**
     * Creates a form to delete a pago entity.
     *
     * @param Pago $pago The pago entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createCobrarForm(Orden $orden)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('orden_cobrar', array('id' => $orden->getId())))
            ->setMethod('PUT')
            ->getForm()
            ;
    }



    /**
     * Valida a orden entity.
     *
     * @Route("/clonar/{id}", name="orden_clonar")
     * @Method("PUT")
     */
    public function clonarAction(Request $request, Orden $orden)
    {
        $metodoClonar = "orden_clonar";
        $response = $this->redirectToRoute('orden_index', array());

        return $this->clonarActionHelper($request, $orden, $metodoClonar, $response);
    }

    /**
     * Valida a orden entity.
     *
     * @Route("/clonar2/{id}", name="orden_clonar2")
     * @Method("PUT")
     */
    public function clonarAction2(Request $request, Orden $orden)
    {
        $metodoClonar = "orden_clonar2";
        $response = $this->redirectToRoute('orden_indexfact', array());

        return $this->clonarActionHelper($request, $orden, $metodoClonar, $response);
    }

    /**
     * Valida a orden entity.
     *
     * @Route("/clonar3/{id}", name="orden_clonar3")
     * @Method("PUT")
     */
    public function clonarAction3(Request $request, Orden $orden)
    {
        $metodoClonar = "orden_clonar3";
        $response = $this->redirectToRoute('orden_indexesp', array());

        return $this->clonarActionHelper($request, $orden, $metodoClonar, $response);
    }

    public function clonarActionHelper(Request $request, Orden $orden, $metodoClonar, $response)
    {
        $form = $this->createClonarForm($metodoClonar, $orden);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Clonar monto
            $nuevaorden = clone $orden;
            $nuevaorden->setFecha(new \DateTime());
            $nuevaorden->setPagos(new ArrayCollection());
            $nuevaorden->setFoliofactura(null);
            $nuevaorden->setEspecial(false);

            $nuevaorden->setItems(new ArrayCollection());
            foreach ($orden->getItems() as $item) {
                $nuevoitem = clone $item;

                $nuevaorden->getItems()->add($nuevoitem);
            }

            // 1.1 Poner estatus
            $estadoInicial = $em->getRepository('AppBundle:OrdenEstado')->findOneById(1); // Inicial
            $nuevaorden->setEstado($estadoInicial);

            $em->persist($nuevaorden);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_OPERACIONEXITOSA . " - Clon Id: " . $nuevaorden->getId());
        }

        return $response;
    }

    /**
     * Creates a form to delete a orden entity.
     *
     * @param Orden $orden The orden entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createClonarForm($metodo, Orden $orden)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl($metodo, array('id' => $orden->getId())))
            ->setMethod('PUT')
            ->getForm()
            ;
    }




    private function agregarItems(Orden $orden, $items)
    {
        $em = $this->getDoctrine()->getManager();
        $moneda = $em->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1);

        $jsonItems = json_decode($items);

        foreach ($jsonItems as $item) {
            $idProducto = $item->IdProducto;
            $descripcion = $item->Concepto;
            $precio = $item->Precio;
            $cantidad = $item->Cantidad;
            $codigo = $item->Codigo;
            $tinta = $item->Tinta;

            $ordenitem = new OrdenItem();

            if ($idProducto != null && $idProducto > 0)
            {
                $producto = $em->getRepository('AppBundle:Producto')->findOneById($idProducto);
                $ordenitem->setProducto($producto);
            }
            $ordenitem->setDescripcion($descripcion);
            $ordenitem->setPrecio($precio);
            $ordenitem->setCantidad($cantidad);
            $ordenitem->setTotal($precio*$cantidad);
            $ordenitem->setMoneda($moneda);
            $ordenitem->setCodigo($codigo);
            $ordenitem->setTinta($tinta);

            $orden->addItem($ordenitem);
        }

        return $orden;
    }

    private function actualizarItems(Orden $orden, $items)
    {
        $em = $this->getDoctrine()->getManager();

        $jsonItems = json_decode($items);

        foreach ($jsonItems as $item) {

            $id = $item->Id;

            foreach($orden->getItems() as $ordenitem) {
                if ($ordenitem->getId() == $id) {

                    $idProducto = $item->IdProducto;
                    $descripcion = $item->Concepto;
                    $precio = $item->Precio;
                    $cantidad = $item->Cantidad;
                    $codigo = $item->Codigo;
                    $tinta = $item->Tinta;

                    if ($idProducto != null && $idProducto > 0)
                    {
                        $producto = $em->getRepository('AppBundle:Producto')->findOneById($idProducto);
                        $ordenitem->setProducto($producto);
                    }
                    $ordenitem->setDescripcion($descripcion);
                    $ordenitem->setPrecio($precio);
                    $ordenitem->setCantidad($cantidad);
                    $ordenitem->setTotal($precio*$cantidad);
                    $ordenitem->setCodigo($codigo);
                    $ordenitem->setTinta($tinta);
                    break;
                }
            }
        }

        return $orden;
    }

    private function borrarItems(Orden $orden, $items)
    {
        $jsonItems = json_decode($items);

        foreach ($jsonItems as $item) {
            $id = $item->Id;

            foreach($orden->getItems() as $ordenitem)
            {
                if ($ordenitem->getId() == $id)
                {
                    $orden->removeItem($ordenitem);
                }
            }
        }

        return $orden;
    }

    private function generarPdf($orden, $conprecios)
    {
        $nombre = __DIR__ . "/../../../repositorio/pdf/orden/Orden" . strval($orden->getId()) . ".pdf";

        if (file_exists($nombre))
        {
            unlink($nombre);
        }

        $p = "";
        if ($conprecios == true)
        {
            $p = "?cp=1";
        }

        $this->container->get('knp_snappy.pdf')->generate($this->generateUrl("orden_showprint", array('id'=>$orden->getId()), true) . $p, $nombre);

        return $nombre;
    }

}
