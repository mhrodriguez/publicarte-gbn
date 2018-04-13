<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/24/17
 * Time: 12:31 a.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Configuracion;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;

use AppBundle\Classes\Ambiente;

/**
 * ConfiguracionLN
 *
 */
class ConfiguracionLN
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

    public function incrementarSiguienteVersion()
    {
        $configuracion = $this->dbmanager->getRepository('AppBundle:Configuracion')->findOneBy(array('empresa'=>$this->authuser->getEmpresa(), 'nombre'=>Ambiente::$CONFIG_DATAVERSION));

        $version = doubleval($configuracion->getValor());
        $version = $version + 0.01;

        $configuracion->setValor($version);
        $this->dbmanager->persist($configuracion);
        $this->dbmanager->flush();

        return $version;
    }

}