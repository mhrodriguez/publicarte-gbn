<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 1/5/17
 * Time: 12:57 PM
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="seccion")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\SeccionRepository")
 */
class Seccion
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"syncsucursal"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"syncsucursal"})
     */
    private $nombre;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2, nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $version;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"syncsucursal"})
     */
    private $activo;

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
     * @return Seccion
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
     * Set activo
     *
     * @param boolean $activo
     * @return Seccion
     */
    public function setActivo($activo)
    {
        $this->activo = $activo;

        return $this;
    }

    /**
     * Get activo
     *
     * @return boolean
     */
    public function getActivo()
    {
        return $this->activo;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
    }

    /**
     * Set version
     *
     * @param string $version
     * @return Seccion
     */
    public function setVersion($version)
    {
        $this->version = $version;

        return $this;
    }

    /**
     * Get version
     *
     * @return string 
     */
    public function getVersion()
    {
        return $this->version;
    }
}
