<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/26/17
 * Time: 6:23 p.m.
 */

namespace AppBundle\Controller;

use AppBundle\Entity\Producto;
use AppBundle\Entity\Imagen;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\HttpFoundation\BinaryFileResponse;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Producto controller.
 *
 * @Route("productoimagen")
 */
class ProductoImagenController extends Controller
{
    /**
     * Lists all producto entities.
     *
     * @Route("/index/{idProducto}", name="productoimagen_index")
     * @Method("GET")
     */
    public function indexAction(Request $request, $idProducto)
    {
        $deleteForms = array();

        $em = $this->getDoctrine()->getManager();

        $producto = $em->getRepository('AppBundle:Producto')->findOneBy(array('id'=>$idProducto));

        foreach ($producto->getImagenes() as $imagen)
        {
            array_push($deleteForms, $this->createDeleteForm($imagen)->createView());
        }

        return $this->render('producto_imagen/index.html.twig', array(
            'producto' => $producto,
            'delete_views' => $deleteForms,
        ));
    }

    /**
     * Creates a new imagen entity.
     *
     * @Route("/new/{idProducto}", name="productoimagen_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $idProducto)
    {
        $em = $this->getDoctrine()->getManager();

        $imagen = new Imagen($this->container->getParameter('domain_root_name'), 'productos');

        $form = $this->createForm('AppBundle\Form\ImagenType', $imagen);
        $form->handleRequest($request);

        $producto = $em->getRepository('AppBundle:Producto')->findOneBy(array('id'=>$idProducto));

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Guardar imagen
            $imagen->configura($this->container->getParameter('domain_root_name'), 'producto');
            $imagen->uploadme();

            $producto->addImagen($imagen);

            $em->persist($imagen);
            $em->persist($producto);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('productoimagen_index', array('idProducto' => $producto->getId()));
        }

        return $this->render('producto_imagen/new.html.twig', array(
            'imagen' => $imagen,
            'producto' => $producto,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a imagen entity.
     *
     * @Route("/{id}", name="productoimagen_show")
     * @Method("GET")
     */
    public function showAction(Imagen $imagen)
    {
        $deleteForm = $this->createDeleteForm($imagen);

        return $this->render('imagen/show.html.twig', array(
            'imagen' => $imagen,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing imagen entity.
     *
     * @Route("/{id}/edit", name="imagen_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Imagen $imagen)
    {
        $deleteForm = $this->createDeleteForm($imagen);
        $editForm = $this->createForm('AppBundle\Form\ImagenType', $imagen);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('imagen_edit', array('id' => $imagen->getId()));
        }

        return $this->render('imagen/edit.html.twig', array(
            'imagen' => $imagen,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a imagen entity.
     *
     * @Route("/{id}", name="imagen_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Imagen $imagen)
    {
        $em = $this->getDoctrine()->getManager();

        $idProducto = $request->query->get('idProducto');

        $producto = $em->getRepository('AppBundle:Producto')->findOneBy(array('id'=>$idProducto));

        $form = $this->createDeleteForm($imagen);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            $producto->removeImagen($imagen);

            $em->persist($producto);
            $em->remove($imagen);

            $em->flush();

            $imagen->borrarDeDisco();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
        }

        return $this->redirectToRoute('productoimagen_index', array('idProducto' => $idProducto));
    }

    /**
     * Creates a form to delete a imagen entity.
     *
     * @param Imagen $imagen The imagen entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Imagen $imagen)
    {
        $deleteForm = $this->createFormBuilder()
            ->setAction($this->generateUrl('imagen_delete', array('id' => $imagen->getId())))
            ->setMethod('DELETE')
            ->getForm();

        return $deleteForm;
    }
}