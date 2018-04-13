<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/31/17
 * Time: 9:50 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Imagen;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * UsuarioLN
 *
 */
class WS_ImagenLN
{
    private $dbmanager;
    private $usuarioLN;

    /**
     * Constructor
     */
    public function __construct($dbmanager)
    {
        $this->dbmanager = $dbmanager;

        $this->usuarioLN = new WS_UsuarioLN($this->dbmanager, null);
    }

    public function obtener($token, $idImagen)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Obtener imagen
        $imagen = $this->dbmanager->getRepository('AppBundle:Imagen')->findOneById($idImagen);

        return $imagen;
    }

}