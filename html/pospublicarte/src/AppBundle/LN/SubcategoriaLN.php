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
class SubcategoriaLN
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

    public function obtener($categoria, $activo)
    {
        $sql = "SELECT s FROM AppBundle:Subcategoria s
                 INNER JOIN AppBundle:Categoria c WITH s.categoria = c.id
                 INNER JOIN AppBundle:Empresa e WITH c.empresa = e.id
                 WHERE (e.id = :idEmpresa AND c.id = :idCategoria AND s.activo = :activo)";

        $query = $this->dbmanager
            ->createQuery($sql)
            ->setParameter('idEmpresa', $this->authuser->getEmpresa()->getId())
            ->setParameter('idCategoria', $categoria->getId())
            ->setParameter('activo', $activo);

        $resultset = $query->getResult();

        return $resultset;
    }

    public function obtenerTodos()
    {
        $sql = "SELECT s FROM AppBundle:Subcategoria s
                 INNER JOIN AppBundle:Categoria c WITH s.categoria = c.id
                 INNER JOIN AppBundle:Empresa e WITH c.empresa = e.id
                 WHERE e.id = :idEmpresa";

        $query = $this->dbmanager
            ->createQuery($sql)
            ->setParameter('idEmpresa', $this->authuser->getEmpresa()->getId());

        $resultset = $query->getResult();

        return $resultset;
    }

}