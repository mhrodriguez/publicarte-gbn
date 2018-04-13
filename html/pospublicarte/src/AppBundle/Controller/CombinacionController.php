<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Combinacion;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\LN\CombinacionLN;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Combinacion controller.
 *
 * @Route("combinacion")
 */
class CombinacionController extends Controller
{
    /**
     * Lists all combinacion entities.
     *
     * @Route("/", name="combinacion_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $combinacionLN = new CombinacionLN($em, $this->get('security.context'));

        $combinaciones = $combinacionLN->listado();

        return $this->render('combinacion/index.html.twig', array(
            'combinaciones' => $combinaciones,
        ));
    }

    /**
     * Creates a new combinacion entity.
     *
     * @Route("/new", name="combinacion_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $monedas = $em->getRepository('AppBundle:Moneda')->findBy(array('activo' => true));

        $combinacion = new Combinacion();
        $form = $this->createForm('AppBundle\Form\CombinacionType', $combinacion,
            array('monedas' => $monedas));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $authuser = $this->get('security.context')->getToken()->getUser();

            $combinacion->setEmpresa($authuser->getEmpresa());
            $combinacion->setActivo(true);

            /* CAMPOS DEFAULT */
            $unidad = $em->getRepository('AppBundle:Unidad')->findOneById(1);
            $combinacion->setUnidad($unidad);

            $combinacion->setSatclaveprodserv('90101501');

            /* CAMPOS DEFAULT */

            $em->persist($combinacion);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('combinacion_index', array());
        }

        return $this->render('combinacion/new.html.twig', array(
            'combinacion' => $combinacion,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a combinacion entity.
     *
     * @Route("/{id}", name="combinacion_show")
     * @Method("GET")
     */
    public function showAction(Combinacion $combinacion)
    {
        $deleteForm = $this->createDeleteForm($combinacion);

        return $this->render('combinacion/show.html.twig', array(
            'combinacion' => $combinacion,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing combinacion entity.
     *
     * @Route("/{id}/edit", name="combinacion_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Combinacion $combinacion)
    {
        $em = $this->getDoctrine()->getManager();

        // 1. Categorias
        $monedas = $em->getRepository('AppBundle:Moneda')->findBy(array('activo' => true));

        $deleteForm = $this->createDeleteForm($combinacion);
        $editForm = $this->createForm('AppBundle\Form\CombinacionType', $combinacion,
            array('editando'=>true, 'monedas' => $monedas));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('combinacion_index', array());
        }

        return $this->render('combinacion/edit.html.twig', array(
            'combinacion' => $combinacion,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a combinacion entity.
     *
     * @Route("/{id}", name="combinacion_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Combinacion $combinacion)
    {
        $form = $this->createDeleteForm($combinacion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($combinacion);
            $em->flush();
        }

        return $this->redirectToRoute('combinacion_index');
    }

    /**
     * Creates a form to delete a combinacion entity.
     *
     * @param Combinacion $combinacion The combinacion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Combinacion $combinacion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('combinacion_delete', array('id' => $combinacion->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
