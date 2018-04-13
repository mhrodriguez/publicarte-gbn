<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/27/17
 * Time: 10:24 a.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Venta;
use AppBundle\Entity\VentaItem;
use AppBundle\Entity\VentaItemPaquete;
use AppBundle\Entity\Configuracion;
use AppBundle\Entity\VentaItemPaqueteProducto;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;
use AppBundle\Classes\Ambiente;

/**
 * UsuarioLN
 *
 */
class VentaLN
{
    private $dbmanager;

    /**
     * Constructor
     */
    public function __construct($dbmanager)
    {
        $this->dbmanager = $dbmanager;

    }



}



