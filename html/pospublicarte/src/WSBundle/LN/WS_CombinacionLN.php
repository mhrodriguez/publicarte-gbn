<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/26/17
 * Time: 10:58 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Combinacion;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * UsuarioLN
 *
 */
class WS_CombinacionLN
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

    public function listado($token, $idCombinacion)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Obtener combinaciones de la empresa del usuario
        $combinaciones = $this->dbmanager->getRepository('AppBundle:Combinacion')->findBy(
            array('empresa'=>$usuario->getEmpresa(), 'activo'=>true)
        );

        return $combinaciones;
    }

}