<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/11/17
 * Time: 10:21 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Usuario;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * UsuarioLN
 *
 */
class WS_UsuarioLN
{
    private $dbmanager;
    private $authuser;
    private $passwordencoder;

    /**
     * Constructor
     */
    public function __construct($dbmanager, $passwordencoder)
    {
        $this->dbmanager = $dbmanager;
        $this->passwordencoder = $passwordencoder;
    }

    public function login($username, $password)
    {
        $usuario = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneByUsername($username);

        // Verificar si el usuario ya existe
        if ($usuario != null) {
                // Si el usuario es de tipo 1, pedir Password
                if ($password == null || $password == "") {
                    throw new GeneralException("Se requiere especificar una contraseña.");
                }

                if (!$this->passwordencoder->isPasswordValid($usuario, $password)) {
                    throw new GeneralException("La contraseña es incorrecta.");
                }

                // A. Crear token i e necerio
                if (new \DateTime() > $usuario->getFechaExpiracionToken())
                {
                    $usuario->setToken(md5(uniqid()));

                    $fechaexp = new \DateTime('+31 day');
                    $fechaexp->setTime(0, 0, 0);

                    $usuario->setFechaExpiracionToken($fechaexp);
                    $this->dbmanager->persist($usuario);
                    $this->dbmanager->flush();
                }

                return $usuario->getToken();
        } else {
                throw new GeneralException("El usuario no existe.");
        }
    }

    public function obtenerUsuarioDeToken($token)
    {
        $usuario = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneByToken($token);

        // Verificar si el usuario ya existe
        if ($usuario != null)
        {
            // Validar si el token es válido
            if ($usuario->getFechaExpiracionToken() > new \DateTime())
            {
                return $usuario;
            }
            else
            {
                throw new GeneralException("El token ha expirado.");
            }
        }
        else
        {
            throw new GeneralException("Token inválido.");
        }
    }

}