<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Pago;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\FormError;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Pago controller.
 *
 * @Route("pago")
 */
class PagoController extends Controller
{
    /**
     * Count notificacion entities.
     *
     * @Route("/notificacion.{_format}", name="pago_notificacion", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     * @Method("GET")
     */
    public function notificacionAction()
    {
        $em = $this->getDoctrine()->getManager();

        $pagos = $em->getRepository('AppBundle:Pago')->findBy(array('validado'=>false));

        return new Response('{"resultado": true, "count": ' . count($pagos) . ' }');
    }

    /**
     * Lists all pago entities.
     *
     * @Route("/{idOrden}/index", name="pago_index")
     * @Method("GET")
     */
    public function indexAction($idOrden)
    {
        $em = $this->getDoctrine()->getManager();

        $orden = $em->getRepository('AppBundle:Orden')->findOneById($idOrden);
        $usuarios = $em->getRepository('AppBundle:Usuario')->findAll();
        $tipos = $em->getRepository('AppBundle:PagoTipo')->findAll();

        $pagos = $orden->getPagos();

        $validarForms = array();
        foreach ($pagos as $pago)
        {
            $validarForm = $this->createValidarForm('pago_validar', $pago);
            array_push($validarForms, $validarForm->createView());
        }

        $borrarForms = array();
        foreach ($pagos as $pago)
        {
            $borrarForm = $this->createDeleteForm($pago);
            array_push($borrarForms, $borrarForm->createView());
        }

        return $this->render('pago/index.html.twig', array(
            'pagos' => $pagos,
            'usuarios' => $usuarios,
            'tipos' => $tipos,
            'orden' => $orden,
            'validarForms' => $validarForms,
            'borrarForms' => $borrarForms
        ));
    }

    /**
     * Lists all pago entities.
     *
     * @Route("/estadistica", name="pago_estadistica")
     * @Method("GET")
     */
    public function estadisticaAction()
    {
        $em = $this->getDoctrine()->getManager();

        $pagos = $em->getRepository('AppBundle:Pago')->findBy(array(), array('validado'=>'ASC'));
        $usuarios = $em->getRepository('AppBundle:Usuario')->findAll();
        $tipos = $em->getRepository('AppBundle:PagoTipo')->findAll();
        $clientes = $em->getRepository('AppBundle:Cliente')->findAll();

        $validarForms = array();
        foreach ($pagos as $pago)
        {
            $validarForm = $this->createValidarForm('pago_validar2', $pago);
            array_push($validarForms, $validarForm->createView());
        }

        return $this->render('pago/estadistica.html.twig', array(
            'pagos' => $pagos,
            'usuarios' => $usuarios,
            'validarForms' => $validarForms,
            'clientes' => $clientes,
            'tipos' => $tipos
        ));
    }

    /**
     * Creates a new pago entity.
     *
     * @Route("/{idOrden}/new", name="pago_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $idOrden)
    {
        $em = $this->getDoctrine()->getManager();

        $authuser = $this->get('security.context')->getToken()->getUser();

        $orden = $em->getRepository('AppBundle:Orden')->findOneById($idOrden);
        $tipos = $em->getRepository('AppBundle:PagoTipo')->findAll();
        $mediopagos = $em->getRepository('AppBundle:MedioPago')->findAll();

        $pago = new Pago();
        $form = $this->createForm('AppBundle\Form\PagoType', $pago, array('tipos'=>$tipos, 'mediopagos'=>$mediopagos));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $validacion = true;

            // 1. Validar monto
            if ( ($orden->getSaldopagado() + $pago->getMonto() - 0.01) > $orden->getTotal())
            {
                $validacion=false;

                $form->get('monto')->addError(new FormError('El monto capturado mas los pagos registrados exceden el total de la orden.'));
            }

            if ($validacion) {
                $moneda = $em->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1);

                $pago->setUsuario($authuser);
                $pago->setEmpresa($authuser->getEmpresa());
                $pago->setMoneda($moneda);
                $pago->setOrden($orden);

                $em->persist($pago);
                $em->flush();

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

                return $this->redirectToRoute('pago_index', array('idOrden' => $idOrden));
            }
        }

        return $this->render('pago/new.html.twig', array(
            'pago' => $pago,
            'form' => $form->createView(),
            'orden' => $orden,
        ));
    }

    /**
     * Finds and displays a pago entity.
     *
     * @Route("/{id}", name="pago_show")
     * @Method("GET")
     */
    public function showAction(Pago $pago)
    {
        $deleteForm = $this->createDeleteForm($pago);

        return $this->render('pago/show.html.twig', array(
            'pago' => $pago,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Finds and displays a pago entity.
     *
     * @Route("/showprint/{id}", name="pago_showprint")
     * @Method("GET")
     */
    public function showprintAction(Pago $pago)
    {
        return $this->render('pago/showprint.html.twig', array(
            'pago' => $pago,
        ));
    }

    /**
     * Finds and displays a cotizacion entity.
     *
     * @Route("/showpdf/{id}", name="pago_showpdf")
     * @Method("GET")
     */
    public function showpdfAction(Pago $pago)
    {
        $nombrearchivo = $this->generarPdf($pago);

        $response = new Response(
            'Content',
            Response::HTTP_OK,
            array('content-type' => 'application/pdf', 'Content-Disposition' => 'attachment; filename='.'Pago' . strval($pago->getId()) . '.pdf')
        );

        $response->setContent(file_get_contents($nombrearchivo));

        return $response;
    }

    /**
     * Displays a form to edit an existing pago entity.
     *
     * @Route("/edit/{id}", name="pago_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Pago $pago)
    {
        $response = $this->redirectToRoute('pago_index', array('idOrden' => $pago->getOrden()->getId()));

        return $this->editActionHelper($request, $pago, $response);
    }

    /**
     * Displays a form to edit an existing pago entity.
     *
     * @Route("/edit2/{id}", name="pago_edit2")
     * @Method({"GET", "POST"})
     */
    public function editAction2(Request $request, Pago $pago)
    {
        $response = $this->redirectToRoute('pago_estadistica', array());

        return $this->editActionHelper($request, $pago, $response);
    }

    private function editActionHelper(Request $request, Pago $pago, $response)
    {
        $em = $this->getDoctrine()->getManager();

        $tipos = $em->getRepository('AppBundle:PagoTipo')->findAll();
        $mediopagos = $em->getRepository('AppBundle:MedioPago')->findAll();

        $deleteForm = $this->createDeleteForm($pago);
        $editForm = $this->createForm('AppBundle\Form\PagoType', $pago, array('tipos'=>$tipos, 'mediopagos'=>$mediopagos));
        $editForm->handleRequest($request);

        $orden = $pago->getOrden();

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            $validacion = true;

            // 1. Validar monto
            if (($orden->getSaldopagado() + $pago->getMonto()  - 0.01) > $orden->getTotal())
            {
                $validacion=false;
                $editForm->get('monto')->addError(new FormError('El monto capturado mas los pagos registrados exceden el total de la orden'));
            }

            if ($validacion) {
                $em->flush();

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

                return $response;
            }
        }

        return $this->render('pago/edit.html.twig', array(
            'pago' => $pago,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }


    /**
     * Deletes a pago entity.
     *
     * @Route("/{id}", name="pago_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Pago $pago)
    {
        $response = $this->redirectToRoute('pago_index', array('idOrden'=>$pago->getOrden()->getId()));

        $form = $this->createDeleteForm($pago);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($pago);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
        }

        return $response;
    }

    /**
     * Creates a form to delete a pago entity.
     *
     * @param Pago $pago The pago entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Pago $pago)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('pago_delete', array('id' => $pago->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    /**
     * Valida a pago entity.
     *
     * @Route("/validar/{id}", name="pago_validar")
     * @Method("PUT")
     */
    public function validarAction(Request $request, Pago $pago)
    {
        $metodoValidar = "pago_validar";
        $response = $this->redirectToRoute('pago_index', array('idOrden'=>$pago->getOrden()->getId()));

        return $this->validarActionHelper($request, $pago, $metodoValidar, $response);
    }

    /**
     * Valida a pago entity.
     *
     * @Route("/validar2/{id}", name="pago_validar2")
     * @Method("PUT")
     */
    public function validarAction2(Request $request, Pago $pago)
    {
        $metodoValidar = "pago_validar2";
        $response = $this->redirectToRoute('pago_estadistica', array());

        return $this->validarActionHelper($request, $pago, $metodoValidar, $response);
    }

    public function validarActionHelper(Request $request, Pago $pago, $metodoValidar, $response)
    {
        $form = $this->createValidarForm($metodoValidar, $pago);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Validar monto
            $orden = $pago->getOrden();

            if ( ($orden->getSaldopagado() + $pago->getMonto() - 0.01) > $orden->getTotal())
            {
                FlashMensajeUtil::push("error", "El monto capturado mas los pagos registrados exceden el total de la orden.");

                return $response;
            }

            $pago->setValidado(true);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_OPERACIONEXITOSA);
        }

        return $response;
    }

    /**
     * Creates a form to delete a pago entity.
     *
     * @param Pago $pago The pago entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createValidarForm($metodo, Pago $pago)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl($metodo, array('id' => $pago->getId())))
            ->setMethod('PUT')
            ->getForm()
            ;
    }

    private function generarPdf($pago)
    {
        $nombre = __DIR__ . "/../../../repositorio/pdf/pago/Pago" . strval($pago->getId()) . ".pdf";

        if (file_exists($nombre))
        {
            unlink($nombre);
        }

        $this->container->get('knp_snappy.pdf')->generate($this->generateUrl("pago_showprint", array('id'=>$pago->getId()), true), $nombre);

        return $nombre;
    }

}
