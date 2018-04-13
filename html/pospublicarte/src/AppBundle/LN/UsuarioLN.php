<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/11/17
 * Time: 10:21 p.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Imagen;
use AppBundle\Entity\Usuario;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * UsuarioLN
 *
 */
class UsuarioLN
{
    private $dbmanager;
    private $securitymanager;
    private $authuser;
    private $passwordencoder;

    /**
     * Constructor
     */
    public function __construct($dbmanager, $securitymanager, $passwordencoder)
    {
        $this->dbmanager = $dbmanager;
        $this->securitymanager = $securitymanager;
        $this->passwordencoder = $passwordencoder;

        $this->authuser = $this->securitymanager->getToken()->getUser();
    }

    public function nuevo($usuario)
    {
        // 1. Verificar si el usuario existe
        $usr = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneBy(array('username' => $usuario->getUsername()));

        if ($usr == null)
        {
            // 2. Verificar si el e-mail existe
            $usr = null;
            if ($usuario->getEmail() != null) {
                $usr = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneBy(array('email' => $usuario->getEmail()));
            }

            if ($usr == null) {

                // 3. Validar politica de password
                $this->passwordValido($usuario->getPassword());

                /*
                // 4. Obtener rol para el usuario creado
                if ($this->securitymanager->isGranted('ROLE_ADMINISTRADOR')) {
                    throw new GeneralException("[No implementado]");
                }
                else if ($this->securitymanager->isGranted('ROLE_EMPRESA')) {
                    // 4.1 Una empresa solo puede crear vendedores
                    $rol = $this->dbmanager->getRepository('AppBundle:Rol')->findOneById(3);
                }
                else
                {
                    GeneralException::throwOperacionInvalida();
                }*/

                // 5. Firma
                if ($usuario->getFirmaimagen() != null)
                {
                    $imagen = new Imagen(null, 'firma');
                    $imagen->upload($usuario->getFirmaimagen());
                }

                // 6. Encode password
                $password = $this->passwordencoder->encodePassword($usuario, $usuario->getPassword());

                $usuario->setPassword($password);
                $usuario->setFirma($imagen);
                $usuario->setEmpresa($this->authuser->getEmpresa());
                $usuario->setIsActive(true);

                $this->dbmanager->persist($imagen);
                $this->dbmanager->persist($usuario);
                $this->dbmanager->flush();
            }
            else
            {
                throw new GeneralException("El E-mail ya está siendo utilizado", ErrorCodigo::ERROR_USUARIO_EMAILEXISTE);
            }
        }
        else
        {
            throw new GeneralException("El Nombre de usuario ya está siendo utilizado", ErrorCodigo::ERROR_USUARIO_USERNAMEEXISTE);
        }
    }

    public function editar($usuario)
    {
        // 1. Verificar si el usuario existe
        $usr = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneBy(array('username' => $usuario->getUsername()));
        if ($usr != null && $usr->getId() == $usuario->getId())
        {
            $usr=null;
        }

        if ($usr == null)
        {
            // 2. Verificar si el e-mail existe
            $usr = null;
            if ($usuario->getEmail() != null) {
                $usr = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneBy(array('email' => $usuario->getEmail()));

                if ($usr != null && $usr->getId() == $usuario->getId())
                {
                    $usr=null;
                }
            }

            if ($usr == null) {

                // Actualizar Firma
                if ($usuario->getFirmaimagen() != null)
                {
                    $imagen = new Imagen(null, 'firma');
                    $imagen->upload($usuario->getFirmaimagen());

                    // Borrar firma anterior
                    $firmaanterior = null;
                    if ($usuario->getFirma() != null)
                    {
                        $firmaanterior = $usuario->getFirma();
                        $firmaanterior->borrarDeDisco();
                        $this->dbmanager->remove($firmaanterior);
                    }

                    $usuario->setFirma($imagen);
                    $this->dbmanager->persist($imagen);
                }

                $this->dbmanager->persist($usuario);
                $this->dbmanager->flush();
            }
            else
            {
                throw new GeneralException("El E-mail ya está siendo utilizado", ErrorCodigo::ERROR_USUARIO_EMAILEXISTE);
            }
        }
        else
        {
            throw new GeneralException("El Nombre de usuario ya está siendo utilizado", ErrorCodigo::ERROR_USUARIO_USERNAMEEXISTE);
        }

        return $usuario;
    }

    public function obtener()
    {
        if ($this->securitymanager->isGranted('ROLE_ADMINISTRADOR')) {
            return array();
        }
        else if ($this->securitymanager->isGranted('ROLE_EMPRESA')) {

            $usuarios = $this->dbmanager->getRepository('AppBundle:Usuario')->findBy(array('empresa' => $this->authuser->getEmpresa()));
        }
        else if ($this->securitymanager->isGranted('ROLE_VENDEDOR')) {
            return array();
        }

        // Remover si esta el usuario actual
        $index=0;
        foreach ($usuarios as $usuario)
        {
            if ($usuario->getId() == $this->authuser->getId())
            {
                unset($usuarios[$index]);
            }
            $index++;
        }

        return $usuarios;
    }

    public function passwordValido($password)
    {
        if (strlen($password) < 6)
        {
            throw new GeneralException("El password debe tener al menos 6 caracteres", ErrorCodigo::ERROR_USUARIO_PASSWORDINVALIDO);
        }
    }

    public function obtenerRolesParaCrearUsuarios()
    {
        // 1. Obtener rol para el usuario creado
        if ($this->securitymanager->isGranted('ROLE_ADMINISTRADOR')) {
            throw new GeneralException("[No implementado]");
        }
        else if ($this->securitymanager->isGranted('ROLE_EMPRESA')) {
            // 1.1 Una empresa 'Comercio' solo puede crear vendedores y compradores
            if ($this->authuser->getEmpresa()->getTipo()->getId() == 1) {
                $roles = $this->dbmanager->getRepository('AppBundle:Rol')->findById(3);
                $roles = array_merge($roles, $this->dbmanager->getRepository('AppBundle:Rol')->findById(4));
            }
            // 1.2 Una empresa 'Restaurante' solo puede crear vendedores, mesero, cocinero Y barista
            else if ($this->authuser->getEmpresa()->getTipo()->getId() == 2) {
                $roles = $this->dbmanager->getRepository('AppBundle:Rol')->findById(3);

                array_push($roles, $this->dbmanager->getRepository('AppBundle:Rol')->findOneById(4));
                array_push($roles, $this->dbmanager->getRepository('AppBundle:Rol')->findOneById(5));
                array_push($roles, $this->dbmanager->getRepository('AppBundle:Rol')->findOneById(6));
            }

            return $roles;
        }
    }
}