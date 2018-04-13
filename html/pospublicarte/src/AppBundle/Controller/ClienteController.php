<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Cliente;
use AppBundle\Entity\Domicilio;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Cliente controller.
 *
 * @Route("cliente")
 */
class ClienteController extends Controller
{
    /**
     * Lists all cliente entities.
     *
     * @Route("/", name="cliente_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $clientes = $em->getRepository('AppBundle:Cliente')->findBy(array(), array('id'=>'DESC'));

        $deleteForms = array();
        foreach ($clientes as $cliente)
        {
            $deleteForm = $this->createDeleteForm($cliente);
            array_push($deleteForms, $deleteForm->createView());
        }

        return $this->render('cliente/index.html.twig', array(
            'clientes' => $clientes,
            'deleteForms' => $deleteForms
        ));
    }

    /**
     * Creates a new cliente entity.
     *
     * @Route("/new", name="cliente_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $authuser = $this->get('security.context')->getToken()->getUser();

        $em = $this->getDoctrine()->getManager();

        $estados = $em->getRepository('AppBundle:Estado')->findBy(array('activo' => true));

        $cliente = new Cliente();
        $form = $this->createForm('AppBundle\Form\ClienteType', $cliente, array('estados' => $estados));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            // 1. Agregar domicilio
            $domicilio = new Domicilio();
            $domicilio->setCalle($cliente->getCalle());
            $domicilio->setNumext($cliente->getNumext());
            $domicilio->setNumint($cliente->getNumint());
            $domicilio->setColonia($cliente->getColonia());
            $domicilio->setEstado($cliente->getEstado());
            $domicilio->setMunicipio($cliente->getMunicipio());
            $domicilio->setLocalidad($cliente->getLocalidad());
            $domicilio->setCP($cliente->getCP());
            $domicilio->setTipo($em->getRepository('AppBundle:DomicilioTipo')->findOneById(1));
            $cliente->addDomicilio($domicilio);

            $cliente->setEmpresa($authuser->getEmpresa());

            $em->persist($domicilio);
            $em->persist($cliente);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('cliente_index', array());
        }

        return $this->render('cliente/new.html.twig', array(
            'cliente' => $cliente,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a cliente entity.
     *
     * @Route("/{id}", name="cliente_show")
     * @Method("GET")
     */
    public function showAction(Cliente $cliente)
    {
        $deleteForm = $this->createDeleteForm($cliente);

        return $this->render('cliente/show.html.twig', array(
            'cliente' => $cliente,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing cliente entity.
     *
     * @Route("/{id}/edit", name="cliente_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Cliente $cliente)
    {
        $em = $this->getDoctrine()->getManager();

        $estados = $em->getRepository('AppBundle:Estado')->findBy(array('activo' => true));
        $domicilio = $cliente->getDomicilios()[0];

        if ($request->getMethod() == 'GET') {
            $cliente->setCalle($domicilio->getCalle());
            $cliente->setNumext($domicilio->getNumext());
            $cliente->setNumint($domicilio->getNumint());
            $cliente->setColonia($domicilio->getColonia());
            $cliente->setEstado($domicilio->getEstado());
            $cliente->setMunicipio($domicilio->getMunicipio());
            $cliente->setLocalidad($domicilio->getLocalidad());
            $cliente->setCP($domicilio->getCP());
        }

        $deleteForm = $this->createDeleteForm($cliente);
        $editForm = $this->createForm('AppBundle\Form\ClienteType', $cliente, array('estados' => $estados, 'editando'=>true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $domicilio->setCalle($cliente->getCalle());
            $domicilio->setNumext($cliente->getNumext());
            $domicilio->setNumint($cliente->getNumint());
            $domicilio->setColonia($cliente->getColonia());
            $domicilio->setEstado($cliente->getEstado());
            $domicilio->setMunicipio($cliente->getMunicipio());
            $domicilio->setLocalidad($cliente->getLocalidad());
            $domicilio->setCP($cliente->getCP());

            $this->getDoctrine()->getManager()->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('cliente_index', array());
        }

        return $this->render('cliente/edit.html.twig', array(
            'cliente' => $cliente,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a cliente entity.
     *
     * @Route("/{id}", name="cliente_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Cliente $cliente)
    {
        $form = $this->createDeleteForm($cliente);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            try {
                $cliente->getDomicilios()->clear();
                $em->remove($cliente);

                $em->flush();

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
            }
            catch (\Exception $e)
            {
                FlashMensajeUtil::push("error", "El cliente está en uso por lo que no puede ser borrado.");
            }
        }

        return $this->redirectToRoute('cliente_index');
    }

    /**
     * Creates a form to delete a cliente entity.
     *
     * @param Cliente $cliente The cliente entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Cliente $cliente)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('cliente_delete', array('id' => $cliente->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
