<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Producto;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\LN\SubcategoriaLN;
use AppBundle\LN\ProductoLN;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

use AppBundle\Classes\Exception\GeneralException;

/**
 * Producto controller.
 *
 * @Route("producto")
 */
class ProductoController extends Controller
{
    /**
     * Lists all producto entities.
     *
     * @Route("/", name="producto_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $productos = $em->getRepository('AppBundle:Producto')->findAll();

        $deleteForms = array();
        foreach ($productos as $producto)
        {
            $deleteForm = $this->createDeleteForm($producto);
            array_push($deleteForms, $deleteForm->createView());
        }

        return $this->render('producto/index.html.twig', array(
            'productos' => $productos,
            'deleteForms' => $deleteForms
        ));
    }

    /**
     * Creates a new producto entity.
     *
     * @Route("/new", name="producto_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        return $this->nuevo($request);
    }

    private function nuevo(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        // 1. Monedas
        $monedas = $em->getRepository('AppBundle:Moneda')->findBy(array('activo' => true));

        $producto = new Producto();
        $form = $this->createForm('AppBundle\Form\ProductoType', $producto,
            array('monedas' => $monedas));

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($producto);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('producto_index');
        }

        return $this->render('producto/new.html.twig', array(
            'producto' => $producto,
            'form' => $form->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing producto entity.
     *
     * @Route("/{id}/edit", name="producto_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Producto $producto)
    {
        return $this->editar($request, $producto);
    }

    private function editar(Request $request, $producto)
    {
        $em = $this->getDoctrine()->getManager();

        $authuser = $this->get('security.context')->getToken()->getUser();

        // 3. Monedas
        $monedas = $em->getRepository('AppBundle:Moneda')->findBy(array('activo' => true));

        $deleteForm = $this->createDeleteForm($producto);
        $editForm = $this->createForm('AppBundle\Form\ProductoType', $producto, array('editando'=>true, 'monedas' => $monedas));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('producto_index');
        }

        return $this->render('producto/edit.html.twig', array(
            'producto' => $producto,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Finds and displays a producto entity.
     *
     * @Route("/{id}", name="producto_show")
     * @Method("GET")
     */
    public function showAction(Producto $producto)
    {
        $deleteForm = $this->createDeleteForm($producto);

        return $this->render('producto/show.html.twig', array(
            'producto' => $producto,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a producto entity.
     *
     * @Route("/{id}", name="producto_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Producto $producto)
    {
        $form = $this->createDeleteForm($producto);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($producto);

            try {
                $em->flush();

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
            }
            catch (\Exception $e)
            {
                FlashMensajeUtil::push("error", "El servicio está en uso por lo que no puede ser borrado.");
            }
        }

        return $this->redirectToRoute('producto_index');
    }

    /**
     * Creates a form to delete a producto entity.
     *
     * @param Producto $producto The producto entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Producto $producto)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('producto_delete', array('id' => $producto->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    /* Relacionados */

    /**
     * Lists all producto entities.
     *
     * @Route("/relacionado/index/{idProducto}", name="producto_relacionado_index")
     * @Method("GET")
     */
    public function indexRelacionadoAction(Request $request, $idProducto)
    {
        $em = $this->getDoctrine()->getManager();

        $producto = $em->getRepository('AppBundle:Producto')->findOneById($idProducto);

        return $this->render('producto/relacionado/index.html.twig', array(
            'productos' => $producto->getRelacionados(),
            'productopadre' => $producto
        ));
    }

    /**
     * Creates a new producto entity.
     *
     * @Route("relacionadodependiente/new/{idProducto}", name="producto_relacionadodependiente_new")
     * @Method({"GET", "POST"})
     */
    public function newRelacionadoDependienteAction(Request $request, $idProducto)
    {
        return $this->nuevo($request, $idProducto, false,
            $this->generateUrl('producto_relacionado_index', array('idProducto'=>$idProducto)));
    }

    /**
     * Creates a new producto entity.
     *
     * @Route("relacionadodependiente/{id}/edit/{idProducto}", name="producto_relacionadodependiente_edit")
     * @Method({"GET", "POST"})
     */
    public function editRelacionadoDependienteAction(Request $request, $id, $idProducto)
    {
        $em = $this->getDoctrine()->getManager();

        $producto = $em->getRepository('AppBundle:Producto')->findOneById($id);

        return $this->editar($request, $producto,
            $this->generateUrl('producto_relacionado_index', array('idProducto'=>$idProducto)));
    }
}
