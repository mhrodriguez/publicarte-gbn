<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/18/17
 * Time: 1:29 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="cotizacionitempaquete")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CotizacionItemPaqueteRepository")
 */
class CotizacionItemPaquete
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Combinacion")
     * @ORM\JoinColumn(name="id_combinacion", referencedColumnName="id", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $combinacion;

    /**
     * @ORM\ManyToMany(targetEntity="CotizacionItemPaqueteProducto")
     * @ORM\JoinTable(name="cotizacionitempaquete_paqueteproducto",
     *      joinColumns={@ORM\JoinColumn(name="id_cotizacionitempaquete", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_paqueteproducto", referencedColumnName="id")}
     *      )
     */
    public $paqueteproductos;


    /**
     * @ORM\Column(type="integer")
     * @Assert\Range(
     *      min = 1
     * )
     * @Srz\Groups({"syncfactura"})
     */
    protected $cantidad;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     * @Srz\Groups({"sync"})
     */
    private $activo;


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->paqueteproductos = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set cantidad
     *
     * @param integer $cantidad
     * @return CotizacionItemPaquete
     */
    public function setCantidad($cantidad)
    {
        $this->cantidad = $cantidad;

        return $this;
    }

    /**
     * Get cantidad
     *
     * @return integer 
     */
    public function getCantidad()
    {
        return $this->cantidad;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return CotizacionItemPaquete
     */
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

        return $this;
    }

    /**
     * Get fecha
     *
     * @return \DateTime 
     */
    public function getFecha()
    {
        return $this->fecha;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return CotizacionItemPaquete
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
     * Set combinacion
     *
     * @param \AppBundle\Entity\Combinacion $combinacion
     * @return CotizacionItemPaquete
     */
    public function setCombinacion(\AppBundle\Entity\Combinacion $combinacion = null)
    {
        $this->combinacion = $combinacion;

        return $this;
    }

    /**
     * Get combinacion
     *
     * @return \AppBundle\Entity\Combinacion 
     */
    public function getCombinacion()
    {
        return $this->combinacion;
    }

    /**
     * Add paqueteproductos
     *
     * @param \AppBundle\Entity\CotizacionItemPaqueteProducto $paqueteproductos
     * @return CotizacionItemPaquete
     */
    public function addPaqueteproducto(\AppBundle\Entity\CotizacionItemPaqueteProducto $paqueteproductos)
    {
        $this->paqueteproductos[] = $paqueteproductos;

        return $this;
    }

    /**
     * Remove paqueteproductos
     *
     * @param \AppBundle\Entity\CotizacionItemPaqueteProducto $paqueteproductos
     */
    public function removePaqueteproducto(\AppBundle\Entity\CotizacionItemPaqueteProducto $paqueteproductos)
    {
        $this->paqueteproductos->removeElement($paqueteproductos);
    }

    /**
     * Get paqueteproductos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPaqueteproductos()
    {
        return $this->paqueteproductos;
    }
}
