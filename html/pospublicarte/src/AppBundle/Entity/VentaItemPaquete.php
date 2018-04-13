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
 * @ORM\Table(name="ventaitempaquete")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\VentaItemPaqueteRepository")
 */
class VentaItemPaquete
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"synccortecaja"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Combinacion")
     * @ORM\JoinColumn(name="id_combinacion", referencedColumnName="id", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $combinacion;

    /**
     * @ORM\ManyToMany(targetEntity="VentaItemPaqueteProducto")
     * @ORM\JoinTable(name="ventaitempaquete_paqueteproducto",
     *      joinColumns={@ORM\JoinColumn(name="id_ventaitempaquete", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_paqueteproducto", referencedColumnName="id")}
     *      )
     */
    public $paqueteproductos;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    private $descripcion;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Range(
     *      min = 1
     * )
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    protected $cantidad;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    protected $precio;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $moneda;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    protected $total;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    /**
     * @ORM\Column(type="string", length=8, nullable=true)
     */
    private $satclaveprodserv;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $satnoidentificacion;

    /**
     * @ORM\Column(type="string", length=3, nullable=true)
     */
    private $satclaveunidad;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    private $satunidad;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     * @Srz\Groups({"sync"})
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
     * Set descripcion
     *
     * @param string $descripcion
     * @return VentaItem
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

    /**
     * Set cantidad
     *
     * @param integer $cantidad
     * @return VentaItem
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
     * Set subtotal
     *
     * @param string $subtotal
     * @return VentaItem
     */
    public function setSubtotal($subtotal)
    {
        $this->subtotal = $subtotal;

        return $this;
    }

    /**
     * Get subtotal
     *
     * @return string
     */
    public function getSubtotal()
    {
        return $this->subtotal;
    }


    /**
     * Set total
     *
     * @param string $total
     * @return VentaItem
     */
    public function setTotal($total)
    {
        $this->total = $total;

        return $this;
    }

    /**
     * Get total
     *
     * @return string
     */
    public function getTotal()
    {
        return $this->total;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return VentaItem
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
     * Set precio
     *
     * @param string $precio
     * @return VentaItem
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
     * @return VentaItem
     */
    public function setMoneda(\AppBundle\Entity\Moneda $moneda)
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
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return VentaItem
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
     * Constructor
     */
    public function __construct()
    {
        $this->productos = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add paqueteproductos
     *
     * @param \AppBundle\Entity\VentaItemPaqueteProducto $paqueteproductos
     * @return VentaItemPaquete
     */
    public function addPaqueteproducto(\AppBundle\Entity\VentaItemPaqueteProducto $paqueteproductos)
    {
        $this->paqueteproductos[] = $paqueteproductos;

        return $this;
    }

    /**
     * Remove paqueteproductos
     *
     * @param \AppBundle\Entity\VentaItemPaqueteProducto $paqueteproductos
     */
    public function removePaqueteproducto(\AppBundle\Entity\VentaItemPaqueteProducto $paqueteproductos)
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

    /**
     * Set combinacion
     *
     * @param \AppBundle\Entity\Combinacion $combinacion
     * @return VentaItemPaquete
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
     * Set satclaveprodserv
     *
     * @param string $satclaveprodserv
     * @return VentaItemPaquete
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
     * Set satnoidentificacion
     *
     * @param string $satnoidentificacion
     * @return VentaItemPaquete
     */
    public function setSatnoidentificacion($satnoidentificacion)
    {
        $this->satnoidentificacion = $satnoidentificacion;

        return $this;
    }

    /**
     * Get satnoidentificacion
     *
     * @return string 
     */
    public function getSatnoidentificacion()
    {
        return $this->satnoidentificacion;
    }

    /**
     * Set satclaveunidad
     *
     * @param string $satclaveunidad
     * @return VentaItemPaquete
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

    /**
     * Set satunidad
     *
     * @param string $satunidad
     * @return VentaItemPaquete
     */
    public function setSatunidad($satunidad)
    {
        $this->satunidad = $satunidad;

        return $this;
    }

    /**
     * Get satunidad
     *
     * @return string 
     */
    public function getSatunidad()
    {
        return $this->satunidad;
    }
}
