<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Sucursal;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\LN\SucursalLN;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Sucursal controller.
 *
 * @Route("sucursal")
 */
class SucursalController extends Controller
{
    /**
     * Lists all sucursal entities.
     *
     * @Route("/", name="sucursal_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $sucursalLN = new SucursalLN($em, $this->get('security.context'));

        $sucursales = $sucursalLN->listado();

        return $this->render('sucursal/index.html.twig', array(
            'sucursales' => $sucursales,
        ));
    }

    /**
     * Creates a new sucursal entity.
     *
     * @Route("/new", name="sucursal_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $sucursal = new Sucursal();
        $form = $this->createForm('AppBundle\Form\SucursalType', $sucursal);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            $authuser = $this->get('security.context')->getToken()->getUser();

            $sucursal->setEmpresa($authuser->getEmpresa());
            $sucursal->setActivo(true);

            $em->persist($sucursal);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('sucursal_index', array('id' => $sucursal->getId()));
        }

        return $this->render('sucursal/new.html.twig', array(
            'sucursal' => $sucursal,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a sucursal entity.
     *
     * @Route("/{id}", name="sucursal_show")
     * @Method("GET")
     */
    public function showAction(Sucursal $sucursal)
    {
        $deleteForm = $this->createDeleteForm($sucursal);

        return $this->render('sucursal/show.html.twig', array(
            'sucursal' => $sucursal,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing sucursal entity.
     *
     * @Route("/{id}/edit", name="sucursal_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Sucursal $sucursal)
    {
        $deleteForm = $this->createDeleteForm($sucursal);
        $editForm = $this->createForm('AppBundle\Form\SucursalType', $sucursal, array('editando' => true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('sucursal_index', array('id' => $sucursal->getId()));
        }

        return $this->render('sucursal/edit.html.twig', array(
            'sucursal' => $sucursal,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a sucursal entity.
     *
     * @Route("/{id}", name="sucursal_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Sucursal $sucursal)
    {
        $form = $this->createDeleteForm($sucursal);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($sucursal);
            $em->flush();
        }

        return $this->redirectToRoute('sucursal_index');
    }

    /**
     * Creates a form to delete a sucursal entity.
     *
     * @param Sucursal $sucursal The sucursal entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Sucursal $sucursal)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('sucursal_delete', array('id' => $sucursal->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
