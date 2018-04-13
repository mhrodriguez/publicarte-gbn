<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/20/17
 * Time: 12:26 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Seccion;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * UsuarioLN
 *
 */
class WS_SeccionLN
{
    private $dbmanager;
    private $sucursalLN;

    /**
     * Constructor
     */
    public function __construct($dbmanager)
    {
        $this->dbmanager = $dbmanager;
    }

    public function syncObtener($token, $version)
    {
        $secciones = array();
        $sucursalLN = new WS_SucursalLN($this->dbmanager);

        // 1. Validar usuario
        $sucursal = $sucursalLN->obtenerSucursalDeToken($token);

        // 2. Obtener secciones
        foreach ($sucursal->getSecciones() as $seccion)
        {
            if ($seccion->getVersion() > $version)
            {
                array_push($secciones, $seccion);
            }
        }

        return $secciones;
    }
}