<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/9/17
 * Time: 12:06 a.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Table(name="empresa")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\EmpresaRepository")
 * @UniqueEntity(fields="nombre", message="La empresa ya existe.")
 */
class Empresa
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $nombre;

    /**
     * @ORM\ManyToOne(targetEntity="Rfc")
     * @ORM\JoinColumn(name="id_rfc", referencedColumnName="id", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $rfc;

    /**
     * @ORM\Column(type="string", length=100, unique=true)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $alias;

    /**
     * @ORM\ManyToOne(targetEntity="EmpresaTipo")
     * @ORM\JoinColumn(name="id_tipo", referencedColumnName="id")
     * @Srz\Groups({"sync"})
     */
    private $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="Imagen")
     * @ORM\JoinColumn(name="id_logo", referencedColumnName="id", nullable=true)
     */
    private $logo;

    /**
     * @ORM\Column(type="string", length=50)
     * @Srz\Groups({"sync"})
     */
    private $telefono;

    /**
     * @ORM\Column(type="string", length=50)
     * @Srz\Groups({"sync"})
     */
    private $email;

    /**
     * @ORM\Column(type="boolean")
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
     * @return Empresa
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
     * @return Empresa
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
        $this->sucursales = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add sucursales
     *
     * @param \AppBundle\Entity\Sucursal $sucursales
     * @return Empresa
     */
    public function addSucursale(\AppBundle\Entity\Sucursal $sucursales)
    {
        $this->sucursales[] = $sucursales;

        return $this;
    }

    /**
     * Remove sucursales
     *
     * @param \AppBundle\Entity\Sucursal $sucursales
     */
    public function removeSucursale(\AppBundle\Entity\Sucursal $sucursales)
    {
        $this->sucursales->removeElement($sucursales);
    }

    /**
     * Get sucursales
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getSucursales()
    {
        return $this->sucursales;
    }

    /**
     * Set tipo
     *
     * @param \AppBundle\Entity\EmpresaTipo $tipo
     * @return Empresa
     */
    public function setTipo(\AppBundle\Entity\EmpresaTipo $tipo = null)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return \AppBundle\Entity\EmpresaTipo 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set alias
     *
     * @param string $alias
     * @return Empresa
     */
    public function setAlias($alias)
    {
        $this->alias = $alias;

        return $this;
    }

    /**
     * Get alias
     *
     * @return string 
     */
    public function getAlias()
    {
        return $this->alias;
    }

    /**
     * Set rfc
     *
     * @param \AppBundle\Entity\Rfc $rfc
     * @return Empresa
     */
    public function setRfc(\AppBundle\Entity\Rfc $rfc)
    {
        $this->rfc = $rfc;

        return $this;
    }

    /**
     * Get rfc
     *
     * @return \AppBundle\Entity\Rfc
     */
    public function getRfc()
    {
        return $this->rfc;
    }

    /**
     * Set logo
     *
     * @param \AppBundle\Entity\Imagen $logo
     * @return Empresa
     */
    public function setLogo(\AppBundle\Entity\Imagen $logo = null)
    {
        $this->logo = $logo;

        return $this;
    }

    /**
     * Get logo
     *
     * @return \AppBundle\Entity\Imagen 
     */
    public function getLogo()
    {
        return $this->logo;
    }

    /**
     * Set telefono
     *
     * @param string $telefono
     * @return Empresa
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get telefono
     *
     * @return string 
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Empresa
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }
}
