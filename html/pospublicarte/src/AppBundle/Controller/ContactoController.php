<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Contacto;
use AppBundle\Entity\Cliente;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

use Symfony\Component\Serializer\Mapping\Factory\ClassMetadataFactory;
use Doctrine\Common\Annotations\AnnotationReader;
use Symfony\Component\Serializer\Mapping\Loader\AnnotationLoader;

use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Contacto controller.
 *
 * @Route("contacto")
 */
class ContactoController extends Controller
{
    /**
     * Lists all contacto entities.
     *
     * @Route("/{idCliente}/index.{_format}", name="contacto_index", defaults= {"_format"="html"}, requirements = {"_format"="html|json"})
     * @Method("GET")
     */
    public function indexAction(Request $request, $idCliente, $_format)
    {
        $em = $this->getDoctrine()->getManager();

        $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);

        if ($_format == "html") {

            $deleteForms = array();
            foreach ($cliente->getContactos() as $contacto)
            {
                $deleteForm = $this->createDeleteForm($contacto, $idCliente);
                array_push($deleteForms, $deleteForm->createView());
            }

            return $this->render('contacto/index.html.twig', array(
                'contactos' => $cliente->getContactos(),
                'idCliente' => $idCliente,
                'deleteForms' => $deleteForms
            ));
        }
        else
        {
            try {
                $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

                $encoders = array(new JsonEncoder());
                $normalizers = array(new ObjectNormalizer($classMetadataFactory));
                $serializer = new Serializer($normalizers, $encoders);
                $jsonContent = $serializer->serialize($cliente->getContactos(), 'json', array('groups' => array('sync')));
            }
            catch (GeneralException $e)
            {
                return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
            }

            return new Response($jsonContent);
        }
    }

    /**
     * Creates a new contacto entity.
     *
     * @Route("/{idCliente}/new", name="contacto_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $idCliente)
    {
        $em = $this->getDoctrine()->getManager();

        $mediopagos = $em->getRepository('AppBundle:MedioPago')->findBy(array('activo' => true));

        $contacto = new Contacto();
        $form = $this->createForm('AppBundle\Form\ContactoType', $contacto, array('mediopagos'=>$mediopagos));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);
            $cliente->addContacto($contacto);

            $em->persist($contacto);
            $em->persist($cliente);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

            return $this->redirectToRoute('contacto_index', array('idCliente' => $idCliente));
        }

        return $this->render('contacto/new.html.twig', array(
            'contacto' => $contacto,
            'idCliente' => $idCliente,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a contacto entity.
     *
     * @Route("/{id}", name="contacto_show")
     * @Method("GET")
     */
    public function showAction(Contacto $contacto)
    {
        $deleteForm = $this->createDeleteForm($contacto);

        return $this->render('contacto/show.html.twig', array(
            'contacto' => $contacto,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing contacto entity.
     *
     * @Route("/{id}/edit/{idCliente}", name="contacto_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Contacto $contacto, $idCliente)
    {
        $em = $this->getDoctrine()->getManager();

        $mediopagos = $em->getRepository('AppBundle:MedioPago')->findBy(array('activo' => true));

        $editForm = $this->createForm('AppBundle\Form\ContactoType', $contacto, array('mediopagos'=>$mediopagos, 'editando'=>true));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            return $this->redirectToRoute('contacto_index', array('idCliente' => $idCliente));
        }

        return $this->render('contacto/edit.html.twig', array(
            'contacto' => $contacto,
            'edit_form' => $editForm->createView(),
            'idCliente' => $idCliente
        ));
    }

    /**
     * Deletes a contacto entity.
     *
     * @Route("/{id}/delete/{idCliente}", name="contacto_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Contacto $contacto, $idCliente)
    {
        $form = $this->createDeleteForm($contacto, $idCliente);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            try {
                $cliente = $em->getRepository('AppBundle:Cliente')->findOneById($idCliente);
                $cliente->removeContacto($contacto);

                $em->remove($contacto);

                $em->flush();

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOBORRADO);
            }
            catch (\Exception $e)
            {
                FlashMensajeUtil::push("error", "El contacto está en uso por lo que no puede ser borrado.");
            }
        }

        return $this->redirectToRoute('contacto_index', array('idCliente'=>$idCliente));
    }

    /**
     * Creates a form to delete a contacto entity.
     *
     * @param Contacto $contacto The contacto entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Contacto $contacto, $idCliente)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('contacto_delete', array('id' => $contacto->getId(), 'idCliente' => $idCliente)))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
