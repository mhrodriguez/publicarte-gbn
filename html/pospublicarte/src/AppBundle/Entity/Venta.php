<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/4/17
 * Time: 7:24 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="venta")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\VentaRepository")
 */
class Venta
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"synccortecaja"})
     */
    public $id;

    /**
     * @ORM\ManyToOne(targetEntity="Usuario")
     * @ORM\JoinColumn(name="id_usuario", referencedColumnName="id", nullable=false)
     */
    private $usuario;

    /**
     * @ORM\ManyToOne(targetEntity="Usuario")
     * @ORM\JoinColumn(name="id_vendedor", referencedColumnName="id", nullable=true)
     */
    private $vendedor;

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
     * @ORM\ManyToOne(targetEntity="Seccion")
     * @ORM\JoinColumn(name="id_seccion", referencedColumnName="id", nullable=true)
     */
    private $seccion;

    /**
     * @ORM\ManyToMany(targetEntity="VentaItem")
     * @ORM\JoinTable(name="venta_item",
     *      joinColumns={@ORM\JoinColumn(name="id_venta", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_ventaitem", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    public $items;

    /**
     * @ORM\ManyToMany(targetEntity="VentaItemPaquete")
     * @ORM\JoinTable(name="venta_itempaquete",
     *      joinColumns={@ORM\JoinColumn(name="id_venta", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_ventaitempaquete", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    public $itempaquetes;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     */
    protected $subtotal;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     */
    protected $iva;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"syncfactura"})
     * @Srz\Groups({"synccortecaja"})
     */
    protected $total;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    protected $propina;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"synccortecaja"})
     */
    private $moneda;

    /**
     * @ORM\Column(type="string", length=32)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $ticket;

    /**
     * @ORM\ManyToOne(targetEntity="MedioPago")
     * @ORM\JoinColumn(name="id_mediopago", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"synccortecaja"})
     */
    private $mediopago;

    /**
     * @ORM\Column(name="digitos",type="integer", options={"default" = 0})
     */
    public $digitos;

    /**
     * @ORM\Column(type="datetime")
     * @Srz\Groups({"synccortecaja"})
     */
    private $fecha;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecharecepcion;

    /**
     * @ORM\ManyToOne(targetEntity="CorteCaja")
     * @ORM\JoinColumn(name="id_cortecaja", referencedColumnName="id", nullable=true)
     */
    private $cortecaja;

    /**
     * @ORM\Column(name="idcotizacion",type="integer", nullable=true)
     */
    public $idcotizacion;

    /**
     * @ORM\Column(type="string", length=64, nullable=true)
     */
    private $token;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    private $activo;

    /**
     * @ORM\Column(name="facturada", type="boolean", options={"default" = 0})
     */
    private $facturada;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->items = new \Doctrine\Common\Collections\ArrayCollection();
        $this->itempaquetes = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set subtotal
     *
     * @param string $subtotal
     * @return Venta
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
     * @return Venta
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
     * @return Venta
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
     * @return Venta
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
     * @return Venta
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
     * @return Venta
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
     * Add items
     *
     * @param \AppBundle\Entity\VentaItem $items
     * @return Venta
     */
    public function addItem(\AppBundle\Entity\VentaItem $items)
    {
        $this->items[] = $items;

        return $this;
    }

    /**
     * Remove items
     *
     * @param \AppBundle\Entity\VentaItem $items
     */
    public function removeItem(\AppBundle\Entity\VentaItem $items)
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
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Venta
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
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return Venta
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
     * Set ticket
     *
     * @param string $ticket
     * @return Venta
     */
    public function setTicket($ticket)
    {
        $this->ticket = $ticket;

        return $this;
    }

    /**
     * Get ticket
     *
     * @return string 
     */
    public function getTicket()
    {
        return $this->ticket;
    }

    /**
     * Set facturada
     *
     * @param boolean $facturada
     * @return Venta
     */
    public function setFacturada($facturada)
    {
        $this->facturada = $facturada;

        return $this;
    }

    /**
     * Get facturada
     *
     * @return boolean 
     */
    public function getFacturada()
    {
        return $this->facturada;
    }

    /**
     * Set propina
     *
     * @param string $propina
     * @return Venta
     */
    public function setPropina($propina)
    {
        $this->propina = $propina;

        return $this;
    }

    /**
     * Get propina
     *
     * @return string 
     */
    public function getPropina()
    {
        return $this->propina;
    }

    /**
     * Add itempaquetes
     *
     * @param \AppBundle\Entity\VentaItemPaquete $itempaquetes
     * @return Venta
     */
    public function addItempaquete(\AppBundle\Entity\VentaItemPaquete $itempaquetes)
    {
        $this->itempaquetes[] = $itempaquetes;

        return $this;
    }

    /**
     * Remove itempaquetes
     *
     * @param \AppBundle\Entity\VentaItemPaquete $itempaquetes
     */
    public function removeItempaquete(\AppBundle\Entity\VentaItemPaquete $itempaquetes)
    {
        $this->itempaquetes->removeElement($itempaquetes);
    }

    /**
     * Get itempaquetes
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getItempaquetes()
    {
        return $this->itempaquetes;
    }

    /**
     * Set seccion
     *
     * @param \AppBundle\Entity\Seccion $seccion
     * @return Venta
     */
    public function setSeccion(\AppBundle\Entity\Seccion $seccion)
    {
        $this->seccion = $seccion;

        return $this;
    }

    /**
     * Get seccion
     *
     * @return \AppBundle\Entity\Seccion 
     */
    public function getSeccion()
    {
        return $this->seccion;
    }

    /**
     * Set mediopago
     *
     * @param \AppBundle\Entity\MedioPago $mediopago
     * @return Venta
     */
    public function setMediopago(\AppBundle\Entity\MedioPago $mediopago)
    {
        $this->mediopago = $mediopago;

        return $this;
    }

    /**
     * Get mediopago
     *
     * @return \AppBundle\Entity\MedioPago 
     */
    public function getMediopago()
    {
        return $this->mediopago;
    }

    /**
     * Set usuario
     *
     * @param \AppBundle\Entity\Usuario $usuario
     * @return Venta
     */
    public function setUsuario(\AppBundle\Entity\Usuario $usuario)
    {
        $this->usuario = $usuario;

        return $this;
    }

    /**
     * Get usuario
     *
     * @return \AppBundle\Entity\Usuario 
     */
    public function getUsuario()
    {
        return $this->usuario;
    }

    /**
     * Set vendedor
     *
     * @param \AppBundle\Entity\Usuario $vendedor
     * @return Venta
     */
    public function setVendedor(\AppBundle\Entity\Usuario $vendedor = null)
    {
        $this->vendedor = $vendedor;

        return $this;
    }

    /**
     * Get vendedor
     *
     * @return \AppBundle\Entity\Usuario 
     */
    public function getVendedor()
    {
        return $this->vendedor;
    }

    /**
     * Set cortecaja
     *
     * @param \AppBundle\Entity\CorteCaja $cortecaja
     * @return Venta
     */
    public function setCortecaja(\AppBundle\Entity\CorteCaja $cortecaja = null)
    {
        $this->cortecaja = $cortecaja;

        return $this;
    }

    /**
     * Get cortecaja
     *
     * @return \AppBundle\Entity\CorteCaja 
     */
    public function getCortecaja()
    {
        return $this->cortecaja;
    }

    /**
     * Set fecharecepcion
     *
     * @param \DateTime $fecharecepcion
     * @return Venta
     */
    public function setFecharecepcion($fecharecepcion)
    {
        $this->fecharecepcion = $fecharecepcion;

        return $this;
    }

    /**
     * Get fecharecepcion
     *
     * @return \DateTime 
     */
    public function getFecharecepcion()
    {
        return $this->fecharecepcion;
    }

    /**
     * Set idcotizacion
     *
     * @param integer $idcotizacion
     * @return Venta
     */
    public function setIdcotizacion($idcotizacion)
    {
        $this->idcotizacion = $idcotizacion;

        return $this;
    }

    /**
     * Get idcotizacion
     *
     * @return integer 
     */
    public function getIdcotizacion()
    {
        return $this->idcotizacion;
    }

    /**
     * Set token
     *
     * @param string $token
     * @return Venta
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
     * Set digitos
     *
     * @param integer $digitos
     * @return Venta
     */
    public function setDigitos($digitos)
    {
        $this->digitos = $digitos;

        return $this;
    }

    /**
     * Get digitos
     *
     * @return integer 
     */
    public function getDigitos()
    {
        return $this->digitos;
    }
}
