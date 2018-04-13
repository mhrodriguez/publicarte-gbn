<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/9/17
 * Time: 12:39 a.m.
 */

namespace AppBundle\Repository;

use Doctrine\ORM\EntityRepository;

use AppBundle\LN\Mesa;

/**
 * CategoriaRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class SeccionRepository extends EntityRepository
{
    private $dbmanager;

    public function setDatabaseManager($dbmanager)
    {
        $this->dbmanager = $dbmanager;
    }

    public function obtenerSeccionDeMesa($mesa)
    {
        $connection = $this->dbmanager->getConnection();

        $statement = $connection->prepare("SELECT id_seccion FROM seccion_mesa WHERE id_mesa = ?");
        $statement->bindValue(1, $mesa->getId());
        $statement->execute();

        $seccion = $statement->fetch();

        return $this->dbmanager->getRepository('AppBundle:Seccion')->findOneById($seccion["id_seccion"]);
    }
}