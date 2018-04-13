<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 12/8/17
 * Time: 11:35 a.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="domicilio")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\DomicilioRepository")
 */
class Domicilio
{
    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="DomicilioTipo")
     * @ORM\JoinColumn(name="id_tipo", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $tipo;

    /**
     * @ORM\Column(type="string", length=150)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $calle;

    /**
     * @ORM\Column(type="string", length=5)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $cp;

    /**
     * @ORM\ManyToOne(targetEntity="Estado")
     * @ORM\JoinColumn(name="id_estado", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $estado;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $municipio;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $colonia;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $numext;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $numint;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $localidad;


    /**
     * Set cp
     *
     * @param string $cp
     * @return Domicilio
     */
    public function setCp($cp)
    {
        $this->cp = $cp;

        return $this;
    }

    /**
     * Get cp
     *
     * @return string 
     */
    public function getCp()
    {
        return $this->cp;
    }

    /**
     * Set municipio
     *
     * @param string $municipio
     * @return Domicilio
     */
    public function setMunicipio($municipio)
    {
        $this->municipio = $municipio;

        return $this;
    }

    /**
     * Get municipio
     *
     * @return string 
     */
    public function getMunicipio()
    {
        return $this->municipio;
    }

    /**
     * Set colonia
     *
     * @param string $colonia
     * @return Domicilio
     */
    public function setColonia($colonia)
    {
        $this->colonia = $colonia;

        return $this;
    }

    /**
     * Get colonia
     *
     * @return string 
     */
    public function getColonia()
    {
        return $this->colonia;
    }

    /**
     * Set calle
     *
     * @param string $calle
     * @return Domicilio
     */
    public function setCalle($calle)
    {
        $this->calle = $calle;

        return $this;
    }

    /**
     * Get calle
     *
     * @return string 
     */
    public function getCalle()
    {
        return $this->calle;
    }

    /**
     * Set numext
     *
     * @param string $numext
     * @return Domicilio
     */
    public function setNumext($numext)
    {
        $this->numext = $numext;

        return $this;
    }

    /**
     * Get numext
     *
     * @return string 
     */
    public function getNumext()
    {
        return $this->numext;
    }

    /**
     * Set numint
     *
     * @param string $numint
     * @return Domicilio
     */
    public function setNumint($numint)
    {
        $this->numint = $numint;

        return $this;
    }

    /**
     * Get numint
     *
     * @return string 
     */
    public function getNumint()
    {
        return $this->numint;
    }

    /**
     * Set localidad
     *
     * @param string $localidad
     * @return Domicilio
     */
    public function setLocalidad($localidad)
    {
        $this->localidad = $localidad;

        return $this;
    }

    /**
     * Get localidad
     *
     * @return string 
     */
    public function getLocalidad()
    {
        return $this->localidad;
    }

    /**
     * Set estado
     *
     * @param \AppBundle\Entity\Estado $estado
     * @return Domicilio
     */
    public function setEstado(\AppBundle\Entity\Estado $estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return \AppBundle\Entity\Estado 
     */
    public function getEstado()
    {
        return $this->estado;
    }

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
     * Set tipo
     *
     * @param \AppBundle\Entity\DomicilioTipo $tipo
     * @return Domicilio
     */
    public function setTipo(\AppBundle\Entity\DomicilioTipo $tipo)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return \AppBundle\Entity\DomicilioTipo 
     */
    public function getTipo()
    {
        return $this->tipo;
    }
}
