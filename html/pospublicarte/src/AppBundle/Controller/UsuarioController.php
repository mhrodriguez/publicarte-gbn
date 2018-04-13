<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 11/19/16
 * Time: 2:25 PM
 */

namespace AppBundle\Controller;

use AppBundle\Classes\Ambiente;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\FormError;

use Symfony\Component\Security\Core\Authentication\Token\UsernamePasswordToken;

use AppBundle\Entity\Usuario;
use AppBundle\Entity\ChangePassword;

use AppBundle\LN\UsuarioLN;
use AppBundle\LN\SucursalLN;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;

use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Estado controller.
 *
 * @Route("usuario")
 */
class UsuarioController extends Controller
{
    /**
     * Login.
     *
     * @Route("/login", name="login")
     */
    public function loginAction(Request $request)
    {
        $authenticationUtils = $this->get('security.authentication_utils');

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        //$lastUsername = $authenticationUtils->getLastUsername();

        return $this->render(
            'usuario/login.html.twig',
            array(
                'error'         => $error
            )
        );
    }

    /**
     * Lists all Usuario entities.
     *
     * @Route("/index", name="usuario_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $dbmanager = $this->getDoctrine()->getManager();
        $securitymanager = $this->get('security.context');

        $usuarioLN = new UsuarioLN($dbmanager, $securitymanager, null);

        $usuarios = $usuarioLN->obtener();

        return $this->render('usuario/index.html.twig', array(
            'usuarios' => $usuarios,
        ));
    }

    /**
     * Creates a new usuario entity.
     *
     * @Route("/new", name="usuario_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $dbmanager = $this->getDoctrine()->getManager();
        $securitymanager = $this->get('security.context');
        $passwordencoder = $this->get('security.password_encoder');

        $usuarioLN = new UsuarioLN($dbmanager, $securitymanager, $passwordencoder);

        // 1. Sucursales
        $sucursalLN = new SucursalLN($dbmanager, $securitymanager);
        $sucursales = $sucursalLN->listado();

        // 2. Roles
        $roles = $usuarioLN->obtenerRolesParaCrearUsuarios();

        $usuario = new Usuario();
        $form = $this->createForm('AppBundle\Form\UsuarioType', $usuario, array('sucursales' => $sucursales, 'roles' => $roles));
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            try {
                $usuarioLN->nuevo($usuario);

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOGUARDADA);

                return $this->redirectToRoute('usuario_index', array());
            }
            catch (GeneralException $e)
            {
                if ($e->getCode() == ErrorCodigo::ERROR_USUARIO_USERNAMEEXISTE)
                {
                    $form->get("username")->addError(new FormError($e->getMessage()));
                }
                else
                {
                    $form->get("email")->addError(new FormError($e->getMessage()));
                }
            }
        }

        return $this->render('usuario/new.html.twig', array(
            'usuario' => $usuario,
            'form' => $form->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing usuario entity.
     *
     * @Route("/{id}/edit", name="usuario_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Usuario $usuario)
    {
        $dbmanager = $this->getDoctrine()->getManager();
        $securitymanager = $this->get('security.context');

        $usuarioLN = new UsuarioLN($dbmanager, $securitymanager, null);

        $sucursalLN = new SucursalLN($dbmanager, $securitymanager);
        $sucursales = $sucursalLN->listado();

        $roles = $usuarioLN->obtenerRolesParaCrearUsuarios();

        $editForm = $this->createForm('AppBundle\Form\UsuarioType', $usuario,
            array('editando' => true, 'sucursales' => $sucursales, 'roles' => $roles));

        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            try {
                $usuarioLN->editar($usuario);

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

                return $this->redirectToRoute('usuario_index', array());
            }
            catch (GeneralException $e)
            {
                if ($e->getCode() == ErrorCodigo::ERROR_USUARIO_USERNAMEEXISTE)
                {
                    $editForm->get("username")->addError(new FormError($e->getMessage()));
                }
                else
                {
                    $editForm->get("email")->addError(new FormError($e->getMessage()));
                }
            }
        }

        return $this->render('usuario/edit.html.twig', array(
            'usuario' => $usuario,
            'edit_form' => $editForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing usuario entity.
     *
     * @Route("/miperfil", name="usuario_miperfil")
     * @Method({"GET", "POST"})
     */
    public function miperfilAction(Request $request)
    {
        $dbmanager = $this->getDoctrine()->getManager();
        $securitymanager = $this->get('security.context');

        $authuser = $this->get('security.context')->getToken()->getUser();

        $editForm = $this->createForm('AppBundle\Form\UsuarioType', $authuser,
            array('editando' => true, 'miperfil' => true, 'sucursales' => array(), 'roles' => array()));
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            $usuarioLN = new UsuarioLN($dbmanager, $securitymanager, null);

            try {
                $usuarioLN->editar($authuser);

                FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);
            }
            catch (GeneralException $e)
            {
                if ($e->getCode() == ErrorCodigo::ERROR_USUARIO_USERNAMEEXISTE)
                {
                    $editForm->get("username")->addError(new FormError($e->getMessage()));
                }
                else
                {
                    $editForm->get("email")->addError(new FormError($e->getMessage()));
                }
            }
        }

        $authuser->setFirmaimagen(null);

        return $this->render('usuario/miperfil.html.twig', array(
            'usuario' => $authuser,
            'edit_form' => $editForm->createView(),
        ));
    }

    /**
     * Change password.
     *
     * @Route("/changemypassword", name="usuario_changemypassword")
     * @Method({"GET", "POST"})
     */
    public function changemypasswordAction(Request $request)
    {
        return $this->cambiarPassword($request, $this->get('security.context')->getToken()->getUser(), $this->generateUrl('usuario_miperfil'));
    }

    /**
     * Change password.
     *
     * @Route("/changepassword/{idUsuario}", name="usuario_changepassword")
     * @Method({"GET", "POST"})
     */
    public function changepasswordAction(Request $request, $idUsuario)
    {
        $em = $this->getDoctrine()->getManager();

        $usuario = $em->getRepository('AppBundle:Usuario')->findOneById($idUsuario);

        FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

        return $this->cambiarPassword($request, $usuario,
            $this->generateUrl('usuario_edit', array('id'=>$idUsuario))
        );
    }

    private function cambiarPassword(Request $request, $usuario, $urlBack)
    {
        $changePassword = new ChangePassword();
        $form = $this->createForm('AppBundle\Form\ChangePasswordType', $changePassword);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $encoder = $this->container->get('security.password_encoder');
            $password = $encoder->encodePassword($usuario, $changePassword->getPassword());

            $usuario->setPassword($password);

            $em = $this->getDoctrine()->getManager();
            $em->persist($usuario);
            $em->flush();

            FlashMensajeUtil::push("aviso", Ambiente::$MENSAJE_INFOACTUALIZADA);

            if ($urlBack) {
                return $this->redirect($urlBack);
            }
        }

        return $this->render('usuario/changepassword.html.twig', array(
            'changePassword' => $changePassword,
            'form' => $form->createView(),
            'urlBack' => $urlBack
        ));
    }

    /**
     * Finds and displays a usuario entity.
     *
     * @Route("/{id}", name="usuario_show")
     * @Method("GET")
     */
    public function showAction(Usuario $usuario)
    {
        $deleteForm = $this->createDeleteForm($usuario);
        $activarForm = $this->createActivarForm($usuario);

        return $this->render('usuario/show.html.twig', array(
            'usuario' => $usuario,
            'delete_form' => $deleteForm->createView(),
            'activar_form' => $activarForm->createView(),
        ));
    }

    /**
     * Deletes a usuario entity.
     *
     * @Route("/{id}", name="usuario_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Usuario $usuario)
    {
        $form = $this->createDeleteForm($usuario);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            // 1. Desactivar usuario
            $usuario->setIsActive(false);
            $usuario->setToken(null);

            $em->persist($usuario);
            $em->flush($usuario);
        }

        return $this->redirectToRoute('usuario_index');
    }

    /**
     * Creates a form to delete a Usuario entity.
     *
     * @param Usuario $usuario The Usuario entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Usuario $usuario)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('usuario_delete', array('id' => $usuario->getId())))
            ->setMethod('DELETE')
            ->getForm()
            ;
    }


}