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
 * @ORM\Table(name="unidad")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UnidadRepository")
 */
class Unidad
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=3)
     */
    private $satclaveunidad;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
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
     * @return Unidad
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
     * @return Unidad
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
     * Set satclaveunidad
     *
     * @param string $satclaveunidad
     * @return Unidad
     */
    public function setSatclaveunidad($satclaveunidad)
    {
        $this->satclaveunidad = $satclaveunidad;

        return $this;
    }

    /**
     * Get satclaveunidad
     *
     * @return string 
     */
    public function getSatclaveunidad()
    {
        return $this->satclaveunidad;
    }
}
