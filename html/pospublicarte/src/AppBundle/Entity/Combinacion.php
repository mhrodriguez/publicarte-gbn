<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/20/17
 * Time: 11:53 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="combinacion")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CombinacionRepository")
 */
class Combinacion
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
     * @ORM\ManyToOne(targetEntity="Empresa")
     * @ORM\JoinColumn(name="id_empresa", referencedColumnName="id")
     */
    private $empresa;

    /**
     * @ORM\ManyToMany(targetEntity="CombinacionItem")
     * @ORM\JoinTable(name="combinacion_item",
     *      joinColumns={@ORM\JoinColumn(name="id_combinacion", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_combinacionitem", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    public $items;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2, options={"default" = 0})
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $precio;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id")
     * @Srz\Groups({"sync"})
     */
    private $moneda;

    /**
     * @ORM\ManyToOne(targetEntity="Unidad")
     * @ORM\JoinColumn(name="id_unidad", referencedColumnName="id", nullable=false)
     */
    private $unidad;

    /**
     * @ORM\Column(type="string", length=8, nullable=true)
     */
    private $satclaveprodserv;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    private $activo;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->items = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set activo
     *
     * @param boolean $activo
     * @return Combinacion
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
     * @return Combinacion
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
     * Add items
     *
     * @param \AppBundle\Entity\CombinacionItem $items
     * @return Combinacion
     */
    public function addItem(\AppBundle\Entity\CombinacionItem $items)
    {
        $this->items[] = $items;

        return $this;
    }

    /**
     * Remove items
     *
     * @param \AppBundle\Entity\CombinacionItem $items
     */
    public function removeItem(\AppBundle\Entity\CombinacionItem $items)
    {
        $this->items->removeElement($items);
    }

    /**
     * Get items
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getItems()
    {
        return $this->items;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Combinacion
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
     * Set precio
     *
     * @param string $precio
     * @return Combinacion
     */
    public function setPrecio($precio)
    {
        $this->precio = $precio;

        return $this;
    }

    /**
     * Get precio
     *
     * @return string 
     */
    public function getPrecio()
    {
        return $this->precio;
    }

    /**
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return Combinacion
     */
    public function setMoneda(\AppBundle\Entity\Moneda $moneda = null)
    {
        $this->moneda = $moneda;

        return $this;
    }

    /**
     * Get moneda
     *
     * @return \AppBundle\Entity\Moneda 
     */
    public function getMoneda()
    {
        return $this->moneda;
    }

    /**
     * Set satclaveprodserv
     *
     * @param string $satclaveprodserv
     * @return Combinacion
     */
    public function setSatclaveprodserv($satclaveprodserv)
    {
        $this->satclaveprodserv = $satclaveprodserv;

        return $this;
    }

    /**
     * Get satclaveprodserv
     *
     * @return string 
     */
    public function getSatclaveprodserv()
    {
        return $this->satclaveprodserv;
    }


    /**
     * Set unidad
     *
     * @param \AppBundle\Entity\Unidad $unidad
     * @return Combinacion
     */
    public function setUnidad(\AppBundle\Entity\Unidad $unidad)
    {
        $this->unidad = $unidad;

        return $this;
    }

    /**
     * Get unidad
     *
     * @return \AppBundle\Entity\Unidad 
     */
    public function getUnidad()
    {
        return $this->unidad;
    }
}
