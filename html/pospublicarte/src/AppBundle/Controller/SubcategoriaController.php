<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Subcategoria;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Serializer\Mapping\Factory\ClassMetadataFactory;
use Doctrine\Common\Annotations\AnnotationReader;
use Symfony\Component\Serializer\Mapping\Loader\AnnotationLoader;

use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;

use Symfony\Component\HttpFoundation\Response;

use AppBundle\LN\CategoriaLN;
use AppBundle\LN\SubcategoriaLN;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Subcategorium controller.
 *
 * @Route("subcategoria")
 */
class SubcategoriaController extends Controller
{
    /**
     * Lists all subcategorium entities.
     *
     * @Route("/index.{_format}", name="subcategoria_index", defaults= {"_format"="html"}, requirements = {"_format"="html|json"})
     * @Method("GET")
     */
    public function indexAction(Request $request, $_format)
    {
        $em = $this->getDoctrine()->getManager();

        $subcategoriaLN = new SubcategoriaLN($em, $this->get('security.context'));

        $categoria=null;
        $idCategoria = $request->query->get('idCategoria');

        if ($idCategoria != null) {
            $categoria = $em->getRepository('AppBundle:Categoria')->findOneById($idCategoria);
        }

        if ($_format == "html") {
            $subcategorias = $subcategoriaLN->obtenerTodos();

            return $this->render('subcategoria/index.html.twig', array(
                'subcategorias' => $subcategorias,
            ));
        }
        else
        {
            $subcategorias = $subcategoriaLN->obtener($categoria, true);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($subcategorias, 'json', array('groups' => array('sync')));

            return new Response($jsonContent);
        }
    }

    /**
     * Creates a new subcategorium entity.
     *
     * @Route("/new", name="subcategoria_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $authuser = $this->get('security.context')->getToken()->getUser();

        $em = $this->getDoctrine()->getManager();

        $subcategorium = new Subcategoria();

        $categorias = $em->getRepository('AppBundle:Categoria')->findBy(array('empresa'=> $authuser->getEmpresa(),'activo' => true));

        $form = $this->createForm('AppBundle\Form\SubcategoriaType', $subcategorium,
            array('categorias' => $categorias));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            $subcategorium->setActivo(true);

            $em->persist($subcategorium);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('subcategoria_index', array());
        }

        return $this->render('subcategoria/new.html.twig', array(
            'subcategorium' => $subcategorium,
            'form' => $form->createView(),
        ));
    }


    /*public function showAction(Subcategoria $subcategorium)
    {
        $deleteForm = $this->createDeleteForm($subcategorium);

        return $this->render('subcategoria/show.html.twig', array(
            'subcategorium' => $subcategorium,
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Displays a form to edit an existing subcategorium entity.
     *
     * @Route("/{id}/edit", name="subcategoria_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Subcategoria $subcategorium)
    {
        $authuser = $this->get('security.context')->getToken()->getUser();

        $em = $this->getDoctrine()->getManager();

        $deleteForm = $this->createDeleteForm($subcategorium);

        $categorias = $em->getRepository('AppBundle:Categoria')->findBy(array('empresa'=> $authuser->getEmpresa(),'activo' => true));

        $editForm = $this->createForm('AppBundle\Form\SubcategoriaType', $subcategorium,  array('editando' => true, 'categorias' => $categorias));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('subcategoria_index', array());
        }

        return $this->render('subcategoria/edit.html.twig', array(
            'subcategorium' => $subcategorium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a subcategorium entity.
     *
     * @Route("/{id}", name="subcategoria_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Subcategoria $subcategorium)
    {
        $form = $this->createDeleteForm($subcategorium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($subcategorium);
            $em->flush();
        }

        return $this->redirectToRoute('subcategoria_index');
    }

    /**
     * Creates a form to delete a subcategorium entity.
     *
     * @param Subcategoria $subcategorium The subcategorium entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Subcategoria $subcategorium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('subcategoria_delete', array('id' => $subcategorium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
