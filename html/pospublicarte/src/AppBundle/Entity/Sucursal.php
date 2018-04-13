<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/11/17
 * Time: 3:24 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="sucursal")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\SucursalRepository")
 */
class Sucursal
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
     * @ORM\ManyToOne(targetEntity="Empresa")
     * @ORM\JoinColumn(name="id_empresa", referencedColumnName="id")
     * @Srz\Groups({"sync"})
     */
    private $empresa;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"syncsucursal"})
     */
    private $nombre;

    /**
     * @ORM\ManyToMany(targetEntity="Seccion")
     * @ORM\JoinTable(name="sucursal_seccion",
     *      joinColumns={@ORM\JoinColumn(name="id_sucursal", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_seccion", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"syncsucursal"})
     */
    private $secciones;

    /**
     * @ORM\Column(type="string", length=5)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $cp;

    /**
     * @ORM\Column(type="string", length=64, nullable=false, unique=true)
     */
    private $token;

    /**
     * @ORM\Column(type="boolean")
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
     * Set id
     *
     * @param string $nombre
     * @return Sucursal
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Sucursal
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
     * @return Sucursal
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
     * @return Sucursal
     */
    public function setEmpresa(\AppBundle\Entity\Empresa $empresa = null)
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
     * Constructor
     */
    public function __construct()
    {
        $this->secciones = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add secciones
     *
     * @param \AppBundle\Entity\Seccion $secciones
     * @return Sucursal
     */
    public function addSeccion(\AppBundle\Entity\Seccion $secciones)
    {
        $this->secciones[] = $secciones;

        return $this;
    }

    /**
     * Remove secciones
     *
     * @param \AppBundle\Entity\Seccion $secciones
     */
    public function removeSeccion(\AppBundle\Entity\Seccion $secciones)
    {
        $this->secciones->removeElement($secciones);
    }

    /**
     * Get secciones
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getSecciones()
    {
        return $this->secciones;
    }

    /**
     * Set token
     *
     * @param string $token
     * @return Sucursal
     */
    public function setToken($token)
    {
        $this->token = $token;

        return $this;
    }

    /**
     * Get token
     *
     * @return string 
     */
    public function getToken()
    {
        return $this->token;
    }

    /**
     * Add secciones
     *
     * @param \AppBundle\Entity\Seccion $secciones
     * @return Sucursal
     */
    public function addSeccione(\AppBundle\Entity\Seccion $secciones)
    {
        $this->secciones[] = $secciones;

        return $this;
    }

    /**
     * Remove secciones
     *
     * @param \AppBundle\Entity\Seccion $secciones
     */
    public function removeSeccione(\AppBundle\Entity\Seccion $secciones)
    {
        $this->secciones->removeElement($secciones);
    }

    /**
     * Set cp
     *
     * @param string $cp
     * @return Sucursal
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
}
