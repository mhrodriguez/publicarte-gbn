<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/4/17
 * Time: 7:25 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="ventaitem")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\VentaItemRepository")
 */
class VentaItem
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
     * @ORM\ManyToOne(targetEntity="Producto")
     * @ORM\JoinColumn(name="id_producto", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $producto;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     *
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
     * Set producto
     *
     * @param \AppBundle\Entity\Producto $producto
     * @return VentaItem
     */
    public function setProducto(\AppBundle\Entity\Producto $producto)
    {
        $this->producto = $producto;

        return $this;
    }

    /**
     * Get producto
     *
     * @return \AppBundle\Entity\Producto 
     */
    public function getProducto()
    {
        return $this->producto;
    }

    /**
     * Set satclaveprodserv
     *
     * @param string $satclaveprodserv
     * @return VentaItem
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
     * @return VentaItem
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
     * @return VentaItem
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
     * @return VentaItem
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
