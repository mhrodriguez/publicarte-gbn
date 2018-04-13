<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/30/17
 * Time: 11:38 p.m.
 */

namespace AppBundle\LN;

use AppBundle\Entity\Producto;
use Doctrine\ORM\EntityRepository;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * ProductoLN
 *
 */
class ProductoLN
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
        $productos = $this->dbmanager->getRepository('AppBundle:Producto')->findBy(
            array('empresa'=>$this->authuser->getEmpresa()),
            array('categoria'=>'ASC', 'subcategoria'=>'ASC')
        );

        return $productos;
    }

    public function borrar($producto)
    {
        // 1. Verificar si se puede borrar
        if (!$this->dbmanager->getRepository('AppBundle:Producto')->productoEnUso($producto)) {
            $this->dbmanager->remove($producto);
            $this->dbmanager->flush();
        }
        else
        {
            throw new GeneralException("El producto no puede ser borrado porque está en uso.", -1);
        }
    }
}