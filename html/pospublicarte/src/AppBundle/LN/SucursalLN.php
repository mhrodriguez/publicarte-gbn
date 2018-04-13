<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/30/17
 * Time: 11:32 p.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Sucursal;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * SucursalLN
 *
 */
class SucursalLN
{
    private $dbmanager;
    private $securitymanager;
    private $authuser;

    /**
     * Constructor
     */
    public function __construct($dbmanager, $securitymanager)
    {
        $this->dbmanager = $dbmanager;
        $this->securitymanager = $securitymanager;

        $this->authuser = $this->securitymanager->getToken()->getUser();
    }

    public function listado()
    {
        $sucursals = $this->dbmanager->getRepository('AppBundle:Sucursal')->findBy(array('empresa'=>$this->authuser->getEmpresa()));

        return $sucursals;
    }

}