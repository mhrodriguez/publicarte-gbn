<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/21/17
 * Time: 1:29 a.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="cotizacionitempaqueteproducto")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CotizacionItemPaqueteProductoRepository")
 */
class CotizacionItemPaqueteProducto
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
     * @ORM\JoinColumn(name="id_producto", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    public $producto;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Range(
     *      min = 1
     * )
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
     * @return CotizacionItemPaqueteProducto
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
     * @return CotizacionItemPaqueteProducto
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
     * @return CotizacionItemPaqueteProducto
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
     * @return CotizacionItemPaqueteProducto
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
}
