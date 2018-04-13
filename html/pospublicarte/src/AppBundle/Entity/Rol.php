<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 3/14/16
 * Time: 5:22 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Security\Core\Role\RoleInterface;

/**
 * @ORM\Table(name="rol")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\RolRepository")
 * @UniqueEntity(fields="nombre", message="El rol ya existe.")
 */
class Rol implements RoleInterface
{
    /**
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50, unique=true)
     *
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=200)
     *
     */
    private $descripcion;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Rol
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Rol
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }


    // RoleInterface ------------------------------------------------------------

    /**
     * @see RoleInterface
     */
    public function getRole()
    {
        return $this->nombre;
    }
}
