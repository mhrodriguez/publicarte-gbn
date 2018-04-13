<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/25/17
 * Time: 5:34 p.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Combinacion;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * CombinacionLN
 *
 */
class CombinacionLN
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
        $combinaciones = $this->dbmanager->getRepository('AppBundle:Combinacion')->findBy(array('empresa'=>$this->authuser->getEmpresa()));

        return $combinaciones;
    }

}