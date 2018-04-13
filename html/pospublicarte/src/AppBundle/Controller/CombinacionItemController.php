<?php

namespace AppBundle\Controller;

use AppBundle\Entity\CombinacionItem;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\LN\SubcategoriaLN;

/**
 * Combinacionitem controller.
 *
 * @Route("combinacionitem")
 */
class CombinacionItemController extends Controller
{
    /**
     * Lists all combinacionItem entities.
     *
     * @Route("/index/{idCombinacion}", name="combinacionitem_index")
     * @Method("GET")
     */
    public function indexAction(Request $request, $idCombinacion)
    {
        $em = $this->getDoctrine()->getManager();

        $combinacion = $em->getRepository('AppBundle:Combinacion')->findOneById($idCombinacion);

        return $this->render('combinacionitem/index.html.twig', array(
            'combinacion' => $combinacion,
        ));
    }

    /**
     * Creates a new combinacionItem entity.
     *
     * @Route("/new/{idCombinacion}", name="combinacionitem_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $idCombinacion)
    {
        $authuser = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();

        $categorias = $em->getRepository('AppBundle:Categoria')->findBy(array('empresa'=> $authuser->getEmpresa(),'activo' => true));

        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_combinacionitem');

            if (isset($data["categoria"])) {
                $idCategoria = $data["categoria"];

                if ($idCategoria != null) {
                    $categoria = $em->getRepository('AppBundle:Categoria')->findOneById($idCategoria);
                    $subcategoriaLN = new SubcategoriaLN($em, $this->get('security.context'));
                    $subcategorias = $subcategoriaLN->obtener($categoria, true);
                }
            }
        }
        else
        {
            $subcategorias = array();

            if (count($categorias)>0) {
                $subcategorias = $em->getRepository('AppBundle:Subcategoria')->findBy(array('categoria' => $categorias[0], 'activo' => true));
            }
        }

        $combinacionItem = new Combinacionitem();
        $form = $this->createForm('AppBundle\Form\CombinacionItemType', $combinacionItem,
            array('categorias'=>$categorias, 'subcategorias'=>$subcategorias));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $combinacion = $em->getRepository('AppBundle:Combinacion')->findOneById($idCombinacion);

            $em->persist($combinacionItem);

            $combinacion->addItem($combinacionItem);
            $em->flush();

            return $this->redirectToRoute('combinacionitem_index', array('idCombinacion'=>$idCombinacion));
        }

        return $this->render('combinacionitem/new.html.twig', array(
            'combinacionItem' => $combinacionItem,
            'idCombinacion' => $idCombinacion,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a combinacionItem entity.
     *
     * @Route("/{id}", name="combinacionitem_show")
     * @Method("GET")
     */
    /*public function showAction(CombinacionItem $combinacionItem)
    {
        $deleteForm = $this->createDeleteForm($combinacionItem);

        return $this->render('combinacionitem/show.html.twig', array(
            'combinacionItem' => $combinacionItem,
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Displays a form to edit an existing combinacionItem entity.
     *
     * @Route("/{id}/edit/{idCombinacion}", name="combinacionitem_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, CombinacionItem $combinacionItem, $idCombinacion)
    {
        $deleteForm = $this->createDeleteForm($combinacionItem);

        $authuser = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();

        $categorias = $em->getRepository('AppBundle:Categoria')->findBy(array('empresa'=> $authuser->getEmpresa(),'activo' => true));

        if ($request->getMethod() == 'POST')
        {
            $data = $request->request->get('appbundle_combinacionitem');

            if (isset($data["categoria"])) {
                $idCategoria = $data["categoria"];

                if ($idCategoria != null) {
                    $categoria = $em->getRepository('AppBundle:Categoria')->findOneById($idCategoria);
                    $subcategoriaLN = new SubcategoriaLN($em, $this->get('security.context'));
                    $subcategorias = $subcategoriaLN->obtener($categoria, true);
                }
            }
        }
        else
        {
            $subcategorias = array();

            if (count($categorias)>0) {
                $subcategorias = $em->getRepository('AppBundle:Subcategoria')->findBy(array('categoria' => $categorias[0], 'activo' => true));
            }
        }

        $editForm = $this->createForm('AppBundle\Form\CombinacionItemType', $combinacionItem,
            array('categorias'=>$categorias, 'subcategorias'=>$subcategorias));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('combinacionitem_index', array('idCombinacion'=>$idCombinacion));
        }

        return $this->render('combinacionitem/edit.html.twig', array(
            'combinacionItem' => $combinacionItem,
            'edit_form' => $editForm->createView(),
            'idCombinacion' => $idCombinacion,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a combinacionItem entity.
     *
     * @Route("/{id}", name="combinacionitem_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, CombinacionItem $combinacionItem)
    {
        $form = $this->createDeleteForm($combinacionItem);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($combinacionItem);
            $em->flush();
        }

        return $this->redirectToRoute('combinacionitem_index');
    }

    /**
     * Creates a form to delete a combinacionItem entity.
     *
     * @param CombinacionItem $combinacionItem The combinacionItem entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(CombinacionItem $combinacionItem)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('combinacionitem_delete', array('id' => $combinacionItem->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
