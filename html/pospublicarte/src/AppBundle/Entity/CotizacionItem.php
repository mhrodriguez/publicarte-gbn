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
 * @ORM\Table(name="cotizacionitem")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CotizacionItemRepository")
 */
class CotizacionItem
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Producto")
     * @ORM\JoinColumn(name="id_producto", referencedColumnName="id", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $producto;

    /**
     * @ORM\Column(type="text")
     *
     */
    private $descripcion;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    protected $precio;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Range(
     *      min = 1
     * )
     * @Srz\Groups({"syncfactura"})
     */
    protected $cantidad;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    protected $total;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $moneda;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     * @Srz\Groups({"sync"})
     */
    private $activo=true;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->fecha = new \DateTime();
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
     * @return CotizacionItem
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
     * @return CotizacionItem
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
     * @return CotizacionItem
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
     * Set producto
     *
     * @param \AppBundle\Entity\Producto $producto
     * @return CotizacionItem
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
     * Set precio
     *
     * @param string $precio
     * @return CotizacionItem
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
     * Set total
     *
     * @param string $total
     * @return CotizacionItem
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
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return CotizacionItem
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
     * Set descripcion
     *
     * @param string $descripcion
     * @return CotizacionItem
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
}
