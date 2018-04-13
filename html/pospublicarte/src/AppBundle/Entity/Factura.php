<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 9/1/17
 * Time: 10:03 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="factura")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\FacturaRepository")
 */
class Factura
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    public $id;

    /**
     * @ORM\Column(type="string", length=40, nullable=true)
     */
    private $folio;

    /**
     * @ORM\ManyToOne(targetEntity="Empresa")
     * @ORM\JoinColumn(name="id_empresa", referencedColumnName="id", nullable=false)
     */
    private $empresa;

    /**
     * @ORM\ManyToOne(targetEntity="Sucursal")
     * @ORM\JoinColumn(name="id_sucursal", referencedColumnName="id", nullable=false)
     */
    private $sucursal;

    /**
     * @ORM\ManyToOne(targetEntity="Orden")
     * @ORM\JoinColumn(name="id_orden", referencedColumnName="id", nullable=false)
     */
    private $orden;

    /**
     * @ORM\ManyToOne(targetEntity="FacturaEstado")
     * @ORM\JoinColumn(name="id_facturaestado", referencedColumnName="id", nullable=false)
     */
    private $estado;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     */
    private $moneda;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    protected $subtotal;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    protected $iva;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    protected $total;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $xmlsello;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;



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
     * Set folio
     *
     * @param string $folio
     * @return Factura
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
     * Set subtotal
     *
     * @param string $subtotal
     * @return Factura
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
     * Set iva
     *
     * @param string $iva
     * @return Factura
     */
    public function setIva($iva)
    {
        $this->iva = $iva;

        return $this;
    }

    /**
     * Get iva
     *
     * @return string 
     */
    public function getIva()
    {
        return $this->iva;
    }

    /**
     * Set total
     *
     * @param string $total
     * @return Factura
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
     * Set xmlsello
     *
     * @param string $xmlsello
     * @return Factura
     */
    public function setXmlsello($xmlsello)
    {
        $this->xmlsello = $xmlsello;

        return $this;
    }

    /**
     * Get xmlsello
     *
     * @return string 
     */
    public function getXmlsello()
    {
        return $this->xmlsello;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Factura
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
     * Set empresa
     *
     * @param \AppBundle\Entity\Empresa $empresa
     * @return Factura
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
     * Set sucursal
     *
     * @param \AppBundle\Entity\Sucursal $sucursal
     * @return Factura
     */
    public function setSucursal(\AppBundle\Entity\Sucursal $sucursal)
    {
        $this->sucursal = $sucursal;

        return $this;
    }

    /**
     * Get sucursal
     *
     * @return \AppBundle\Entity\Sucursal 
     */
    public function getSucursal()
    {
        return $this->sucursal;
    }

    /**
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return Factura
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
     * Set orden
     *
     * @param \AppBundle\Entity\Orden $orden
     * @return Factura
     */
    public function setOrden(\AppBundle\Entity\Orden $orden)
    {
        $this->orden = $orden;

        return $this;
    }

    /**
     * Get orden
     *
     * @return \AppBundle\Entity\Orden 
     */
    public function getOrden()
    {
        return $this->orden;
    }

    /**
     * Set estado
     *
     * @param \AppBundle\Entity\FacturaEstado $estado
     * @return Factura
     */
    public function setEstado(\AppBundle\Entity\FacturaEstado $estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return \AppBundle\Entity\FacturaEstado 
     */
    public function getEstado()
    {
        return $this->estado;
    }
}
