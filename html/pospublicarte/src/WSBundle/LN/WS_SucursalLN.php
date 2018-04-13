<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/20/17
 * Time: 12:26 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Sucursal;
use AppBundle\Entity\Configuracion;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;
use AppBundle\Classes\Ambiente;

/**
 * UsuarioLN
 *
 */
class WS_SucursalLN
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

    public function obtener($token, $idSucursal)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Obtener sucursal
        $sucursal = $this->dbmanager->getRepository('AppBundle:Sucursal')->findOneById($idSucursal);

        return $sucursal;
    }

    public function obtenerSucursalDeToken($token)
    {
        // 1. Obtener sucursal
        $sucursal = $this->dbmanager->getRepository('AppBundle:Sucursal')->findOneByToken($token);

        // Verificar si es valida
        if ($sucursal != null)
        {
            return $sucursal;
        }
        else
        {
            throw new GeneralException("Token inválido.");
        }
    }

    public function dataUltimaVersion($token)
    {
        // 1. Obtener sucursal
        $sucursal = $this->dbmanager->getRepository('AppBundle:Sucursal')->findOneByToken($token);

        $configuracion = $this->dbmanager->getRepository('AppBundle:Configuracion')->findOneBy(array('nombre'=>Ambiente::$CONFIG_DATAVERSION, 'empresa'=>$sucursal->getEmpresa()));

        return $configuracion->getValor();
    }
}