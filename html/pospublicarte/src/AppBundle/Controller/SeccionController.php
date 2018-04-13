<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Seccion;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

use AppBundle\LN\ConfiguracionLN;

/**
 * Seccion controller.
 *
 * @Route("seccion")
 */
class SeccionController extends Controller
{
    /**
     * Lists all seccion entities.
     *
     * @Route("/index/{idSucursal}", name="seccion_index")
     * @Method("GET")
     */
    public function indexAction(Request $request, $idSucursal)
    {
        $em = $this->getDoctrine()->getManager();

        $sucursal = $em->getRepository('AppBundle:Sucursal')->findOneById($idSucursal);

        return $this->render('seccion/index.html.twig', array(
            'sucursal' => $sucursal,
        ));
    }

    /**
     * Creates a new seccion entity.
     *
     * @Route("/new/{idSucursal}", name="seccion_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $idSucursal)
    {
        $em = $this->getDoctrine()->getManager();

        $sucursal = $em->getRepository('AppBundle:Sucursal')->findOneById($idSucursal);

        $seccion = new Seccion();
        $form = $this->createForm('AppBundle\Form\SeccionType', $seccion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            // Obtener l verión
            $configuracionLN = new ConfiguracionLN($em, $this->get('security.context'));
            $version = $configuracionLN->incrementarSiguienteVersion();

            $seccion->setActivo(true);
            $seccion->setVersion($version);
            $sucursal->addSeccion($seccion);

            $em->persist($seccion);
            $em->persist($sucursal);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('seccion_index', array('idSucursal' => $sucursal->getId()));
        }

        return $this->render('seccion/new.html.twig', array(
            'seccion' => $seccion,
            'sucursal' => $sucursal,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a seccion entity.
     *
     * @Route("/{id}", name="seccion_show")
     * @Method("GET")
     */
    public function showAction(Seccion $seccion)
    {
        $deleteForm = $this->createDeleteForm($seccion);

        return $this->render('seccion/show.html.twig', array(
            'seccion' => $seccion,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing seccion entity.
     *
     * @Route("/{id}/edit/{idSucursal}", name="seccion_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Seccion $seccion, $idSucursal)
    {
        $em = $this->getDoctrine()->getManager();

        $sucursal = $em->getRepository('AppBundle:Sucursal')->findOneById($idSucursal);

        $deleteForm = $this->createDeleteForm($seccion);
        $editForm = $this->createForm('AppBundle\Form\SeccionType', $seccion, array('editando'=>true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            // Obtener l verión
            $configuracionLN = new ConfiguracionLN($em, $this->get('security.context'));
            $version = $configuracionLN->incrementarSiguienteVersion();

            $seccion->setVersion($version);
            $em->persist($seccion);

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('seccion_index', array('idSucursal' => $sucursal->getId()));
        }

        return $this->render('seccion/edit.html.twig', array(
            'seccion' => $seccion,
            'sucursal' => $sucursal,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a seccion entity.
     *
     * @Route("/{id}", name="seccion_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Seccion $seccion)
    {
        $form = $this->createDeleteForm($seccion);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($seccion);
            $em->flush();
        }

        return $this->redirectToRoute('seccion_index');
    }

    /**
     * Creates a form to delete a seccion entity.
     *
     * @param Seccion $seccion The seccion entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Seccion $seccion)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('seccion_delete', array('id' => $seccion->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
