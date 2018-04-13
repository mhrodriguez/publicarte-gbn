<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 12/7/17
 * Time: 7:35 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="cliente")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ClienteRepository")
 */
class Cliente
{
    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Empresa")
     * @ORM\JoinColumn(name="id_empresa", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $empresa;

    /**
     * @ORM\Column(type="string", length=13)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Assert\Length(
     *      max = 13,
     *      maxMessage = "El valor del campo RFC no debe ser mayor a {{ limit }} caracteres"
     * )
     * @Srz\Groups({"sync"})
     */
    private $rfc;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $razonsocial;


    /**
     * @ORM\ManyToMany(targetEntity="Domicilio", cascade={"remove"}, orphanRemoval=true)
     * @ORM\JoinTable(name="cliente_domicilio",
     *      joinColumns={@ORM\JoinColumn(name="id_cliente", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_domicilio", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    private $domicilios;

    /**
     * @ORM\ManyToMany(targetEntity="Contacto")
     * @ORM\JoinTable(name="cliente_contacto",
     *      joinColumns={@ORM\JoinColumn(name="id_cliente", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_contacto", referencedColumnName="id")}
     *      )
     * @ORM\OrderBy({"nombre" = "ASC"})
     * @Srz\Groups({"sync"})
     */
    private $contactos;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    private $activo=true;


    // HELPERS
    /**
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $calle;

    /**
     * @Assert\Length(max=5,
     * maxMessage = "El C.P. no puede ser mayor a {{ limit }} dígitos.")
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $cp;

    private $estado;

    /**
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $municipio;

    /**
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $colonia;

    /**
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $numext;

    private $numint;

    /**
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $localidad;
    // HELPERS

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
     * Set id
     *
     * @return integer
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * Set rfc
     *
     * @param string $rfc
     * @return Cliente
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
     * @return Cliente
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
     * Set cp
     *
     * @param string $cp
     * @return Cliente
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
     * @return Cliente
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
     * @return Cliente
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
     * @return Cliente
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
     * @return Cliente
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
     * @return Cliente
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
     * @return Cliente
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
     * Set activo
     *
     * @param boolean $activo
     * @return Cliente
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
     * Set empresa
     *
     * @param \AppBundle\Entity\Empresa $empresa
     * @return Cliente
     */
    public function setEmpresa(\AppBundle\Entity\Empresa $empresa)
    {
        $this->empresa = $empresa;

        return $this;
    }

    /**
     * Get empresa
     *
     * @return \AppBundle\Entity\Empresa 
     */
    public function getEmpresa()
    {
        return $this->empresa;
    }

    /**
     * Set estado
     *
     * @param \AppBundle\Entity\Estado $estado
     * @return Cliente
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
     * Constructor
     */
    public function __construct()
    {
        $this->domicilios = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add domicilios
     *
     * @param \AppBundle\Entity\Domicilio $domicilios
     * @return Cliente
     */
    public function addDomicilio(\AppBundle\Entity\Domicilio $domicilios)
    {
        $this->domicilios[] = $domicilios;

        return $this;
    }

    /**
     * Remove domicilios
     *
     * @param \AppBundle\Entity\Domicilio $domicilios
     */
    public function removeDomicilio(\AppBundle\Entity\Domicilio $domicilios)
    {
        $this->domicilios->removeElement($domicilios);
    }

    /**
     * Get domicilios
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getDomicilios()
    {
        return $this->domicilios;
    }

    /**
     * Add contactos
     *
     * @param \AppBundle\Entity\Contacto $contactos
     * @return Cliente
     */
    public function addContacto(\AppBundle\Entity\Contacto $contactos)
    {
        $this->contactos[] = $contactos;

        return $this;
    }

    /**
     * Remove contactos
     *
     * @param \AppBundle\Entity\Contacto $contactos
     */
    public function removeContacto(\AppBundle\Entity\Contacto $contactos)
    {
        $this->contactos->removeElement($contactos);
    }

    /**
     * Get contactos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getContactos()
    {
        return $this->contactos;
    }

}
