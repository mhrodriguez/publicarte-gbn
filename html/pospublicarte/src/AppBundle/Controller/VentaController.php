<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Venta;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use WSBundle\LN\VentaLN;
/**
 * Ventum controller.
 *
 * @Route("venta")
 */
class VentaController extends Controller
{
    /**
     * Lists all ventum entities.
     *
     * @Route("/", name="venta_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        date_default_timezone_set('America/Monterrey');

        $authuser = $this->get('security.context')->getToken()->getUser();

        $fechaIniciostr = $request->query->get('fechaInicio');
        $fechaFinstr = $request->query->get('fechaFin');

        $em = $this->getDoctrine()->getManager();

        if ($fechaIniciostr == null || $fechaFinstr == null)
        {
            $fechaInicio = new \DateTime();
            $fechaFin = new \DateTime();

            $fechaIniciostr = $fechaInicio->format('d-m-Y');
            $fechaFinstr = $fechaFin->format('d-m-Y');
        }
        else
        {
            $fechaInicio = \DateTime::createFromFormat("d-m-Y", $fechaIniciostr);
            $fechaFin = \DateTime::createFromFormat("d-m-Y", $fechaFinstr);
        }

        $fechaInicio->setTime(0, 0, 0);
        $fechaFin->setTime(23, 59, 59);

        $ventas = $em->getRepository('AppBundle:Venta')->obtenerVentasDeEmpresaPorFecha($authuser->getEmpresa(), $fechaInicio, $fechaFin);

        $sucursales = $em->getRepository('AppBundle:Sucursal')->findBy(array('empresa'=>$authuser->getEmpresa()));

        return $this->render('venta/index.html.twig', array(
            'ventas' => $ventas,
            'sucursales' => $sucursales,
            'fechaIniciostr' => $fechaIniciostr,
            'fechaFinstr' => $fechaFinstr
        ));
    }

    /**
     * Lists all ventum entities.
     *
     * @Route("/indexgrf", name="venta_indexgrf")
     * @Method("GET")
     */
    public function indexgrfAction(Request $request)
    {
        date_default_timezone_set('America/Monterrey');

        $authuser = $this->get('security.context')->getToken()->getUser();

        $fechaIniciostr = $request->query->get('fechaInicio');
        $fechaFinstr = $request->query->get('fechaFin');

        $em = $this->getDoctrine()->getManager();

        if ($fechaIniciostr == null || $fechaFinstr == null)
        {
            $fechaInicio = new \DateTime();
            $fechaFin = new \DateTime();

            $fechaIniciostr = $fechaInicio->format('d-m-Y');
            $fechaFinstr = $fechaFin->format('d-m-Y');
        }
        else
        {
            $fechaInicio = \DateTime::createFromFormat("d-m-Y", $fechaIniciostr);
            $fechaFin = \DateTime::createFromFormat("d-m-Y", $fechaFinstr);
        }

        $fechaInicio->setTime(0, 0, 0);
        $fechaFin->setTime(23, 59, 59);

        $ventas = $em->getRepository('AppBundle:Venta')->obtenerVentasDeEmpresaPorDia($authuser->getEmpresa(), $fechaInicio, $fechaFin);

        for($index=0; $index<count($ventas); $index++)
        {
            $num = array("-1-", "-2-", "-3-", "-4-", "-5-", "-6-", "-7-", "-8-", "-9-", "-10-", "-11-", "-12-");
            $nom   = array("-Ene-", "-Feb-", "-Mar-", "-Abr-", "-May-", "-Jun-", "-Jul-", "-Ago-", "-Sept-", "-Oct-", "-Nov-", "-Dic-");

            $ventas[$index]["dia"] = str_replace($num, $nom, $ventas[$index]["fecha"]);
        }

        return $this->render('venta/indexgrf.html.twig', array(
            'ventas' => $ventas,
            'fechaIniciostr' => $fechaIniciostr,
            'fechaFinstr' => $fechaFinstr
        ));
    }

    /**
     * Lists all ventum entities.
     *
     * @Route("/comparativogrf", name="venta_comparativoanualgrf")
     * @Method("GET")
     */
    public function comparativoanualgrfAction(Request $request)
    {
        date_default_timezone_set('America/Monterrey');

        $authuser = $this->get('security.context')->getToken()->getUser();

        $em = $this->getDoctrine()->getManager();

        $fecha = new \DateTime();

        $ventas = $em->getRepository('AppBundle:Venta')->obtenerVentasComparativoAnual($authuser->getEmpresa(), $fecha);

        for($index=0; $index<count($ventas); $index++)
        {
            $num = array("1-", "2-", "3-", "4-", "5-", "6-", "7-", "8-", "9-", "10-", "11-", "12-");
            $nom   = array("Ene-", "Feb-", "Mar-", "Abr-", "May-", "Jun-", "Jul-", "Ago-", "Sept-", "Oct-", "Nov-", "Dic-");

            $ventas[$index]["periodo"] = str_replace($num, $nom, $ventas[$index]["periodo"]);
       }

        return $this->render('venta/comparativoanualgrf.html.twig', array(
            'ventas' => $ventas
        ));
    }

    /**
     * Creates a new ventum entity.
     *
     * @Route("/new", name="venta_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $ventum = new Ventum();
        $form = $this->createForm('AppBundle\Form\VentaType', $ventum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($ventum);
            $em->flush();

            return $this->redirectToRoute('venta_show', array('id' => $ventum->getId()));
        }

        return $this->render('venta/new.html.twig', array(
            'ventum' => $ventum,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a ventum entity.
     *
     * @Route("/{id}", name="venta_show")
     * @Method("GET")
     */
    public function showAction(Venta $ventum)
    {
        $deleteForm = $this->createDeleteForm($ventum);

        return $this->render('venta/show.html.twig', array(
            'ventum' => $ventum,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing ventum entity.
     *
     * @Route("/{id}/edit", name="venta_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Venta $ventum)
    {
        $deleteForm = $this->createDeleteForm($ventum);
        $editForm = $this->createForm('AppBundle\Form\VentaType', $ventum);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('venta_edit', array('id' => $ventum->getId()));
        }

        return $this->render('venta/edit.html.twig', array(
            'ventum' => $ventum,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a ventum entity.
     *
     * @Route("/{id}", name="venta_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Venta $ventum)
    {
        $form = $this->createDeleteForm($ventum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($ventum);
            $em->flush();
        }

        return $this->redirectToRoute('venta_index');
    }

    /**
     * Creates a form to delete a ventum entity.
     *
     * @param Venta $ventum The ventum entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Venta $ventum)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('venta_delete', array('id' => $ventum->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }


}
