<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/24/17
 * Time: 12:31 a.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Categoria;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * CategoriaLN
 *
 */
class CategoriaLN
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

    public function obtener()
    {
        $categorias = $this->dbmanager->getRepository('AppBundle:Categoria')->findBy(array('empresa'=>$this->authuser->getEmpresa()));

        return $categorias;
    }

}