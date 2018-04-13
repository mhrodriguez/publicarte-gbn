<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/23/17
 * Time: 3:16 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Table(name="rfc")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\RfcRepository")
 * @UniqueEntity(fields="nombre", message="El Rfc ya existe.")
 */
class Rfc
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=13)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $rfc;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $regimen;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $razonsocial;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $calle;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $numext;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $numint;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $colonia;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $municipio;

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
    private $localidad;

    /**
     * @ORM\Column(type="string", length=5)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $cp;

    /**
     * @ORM\Column(type="string", length=25, nullable=false)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $serie;

    /**
     * @ORM\Column(type="string", length=40, nullable=false)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $folio;

    /**
     * @ORM\Column(type="string", length=20)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $satnocertificado;

    /**
     * @ORM\Column(type="string", length=20)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $satregimenfiscal;

    /**
     * @ORM\Column(type="string", length=3)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $satusocfdi;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $iofusuario;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $iofpassword;

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
     * Set rfc
     *
     * @param string $rfc
     * @return Rfc
     */
    public function setRfc($rfc)
    {
        $this->rfc = $rfc;

        return $this;
    }

    /**
     * Get rfc
     *
     * @return string 
     */
    public function getRfc()
    {
        return $this->rfc;
    }

    /**
     * Set razonsocial
     *
     * @param string $razonsocial
     * @return Rfc
     */
    public function setRazonsocial($razonsocial)
    {
        $this->razonsocial = $razonsocial;

        return $this;
    }

    /**
     * Get razonsocial
     *
     * @return string 
     */
    public function getRazonsocial()
    {
        return $this->razonsocial;
    }

    /**
     * Set calle
     *
     * @param string $calle
     * @return Rfc
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
     * @return Rfc
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
     * @return Rfc
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
     * Set colonia
     *
     * @param string $colonia
     * @return Rfc
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
     * Set municipio
     *
     * @param string $municipio
     * @return Rfc
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
     * Set localidad
     *
     * @param string $localidad
     * @return Rfc
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
     * Set cp
     *
     * @param string $cp
     * @return Rfc
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
     * Set estado
     *
     * @param \AppBundle\Entity\Estado $estado
     * @return Rfc
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
     * Set serie
     *
     * @param string $serie
     * @return Rfc
     */
    public function setSerie($serie)
    {
        $this->serie = $serie;

        return $this;
    }

    /**
     * Get serie
     *
     * @return string 
     */
    public function getSerie()
    {
        return $this->serie;
    }

    /**
     * Set folio
     *
     * @param string $folio
     * @return Rfc
     */
    public function setFolio($folio)
    {
        $this->folio = $folio;

        return $this;
    }

    /**
     * Get folio
     *
     * @return string 
     */
    public function getFolio()
    {
        return $this->folio;
    }

    /**
     * Set satnocertificado
     *
     * @param string $satnocertificado
     * @return Rfc
     */
    public function setSatnocertificado($satnocertificado)
    {
        $this->satnocertificado = $satnocertificado;

        return $this;
    }

    /**
     * Get satnocertificado
     *
     * @return string 
     */
    public function getSatnocertificado()
    {
        return $this->satnocertificado;
    }

    /**
     * Set satregimenfiscal
     *
     * @param string $satregimenfiscal
     * @return Rfc
     */
    public function setSatregimenfiscal($satregimenfiscal)
    {
        $this->satregimenfiscal = $satregimenfiscal;

        return $this;
    }

    /**
     * Get satregimenfiscal
     *
     * @return string 
     */
    public function getSatregimenfiscal()
    {
        return $this->satregimenfiscal;
    }

    /**
     * Set satusocfdi
     *
     * @param string $satusocfdi
     * @return Rfc
     */
    public function setSatusocfdi($satusocfdi)
    {
        $this->satusocfdi = $satusocfdi;

        return $this;
    }

    /**
     * Get satusocfdi
     *
     * @return string 
     */
    public function getSatusocfdi()
    {
        return $this->satusocfdi;
    }

    /**
     * Set iofusuario
     *
     * @param string $iofusuario
     * @return Rfc
     */
    public function setIofusuario($iofusuario)
    {
        $this->iofusuario = $iofusuario;

        return $this;
    }

    /**
     * Get iofusuario
     *
     * @return string 
     */
    public function getIofusuario()
    {
        return $this->iofusuario;
    }

    /**
     * Set iofpassword
     *
     * @param string $iofpassword
     * @return Rfc
     */
    public function setIofpassword($iofpassword)
    {
        $this->iofpassword = $iofpassword;

        return $this;
    }

    /**
     * Get iofpassword
     *
     * @return string 
     */
    public function getIofpassword()
    {
        return $this->iofpassword;
    }

    /**
     * Get rfc
     *
     * @return string
     */
    public function getDireccion()
    {
        return $this->calle . ' #' . $this->numext . ' ' . $this->numint . ' Col. ' . $this->colonia . ' ' . $this->municipio . ' ' . $this->localidad . ' ' . $this->cp . ' ' . $this->estado->getNombre();
    }

    /**
     * Set regimen
     *
     * @param string $regimen
     * @return Rfc
     */
    public function setRegimen($regimen)
    {
        $this->regimen = $regimen;

        return $this;
    }

    /**
     * Get regimen
     *
     * @return string 
     */
    public function getRegimen()
    {
        return $this->regimen;
    }
}
