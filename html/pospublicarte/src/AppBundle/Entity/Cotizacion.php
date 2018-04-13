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
 * @ORM\Table(name="cotizacion")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CotizacionRepository")
 */
class Cotizacion
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    public $id;

    /**
     * @ORM\ManyToOne(targetEntity="Usuario")
     * @ORM\JoinColumn(name="id_usuario", referencedColumnName="id", nullable=false)
     */
    private $usuario;

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
     * @ORM\ManyToOne(targetEntity="Cliente")
     * @ORM\JoinColumn(name="id_cliente", referencedColumnName="id", nullable=true)
     */
    private $cliente;

    /**
     * @ORM\ManyToOne(targetEntity="Contacto")
     * @ORM\JoinColumn(name="id_contacto", referencedColumnName="id", nullable=true)
     */
    private $contacto;

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
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $moneda;

    /**
     * @ORM\ManyToMany(targetEntity="CotizacionItem", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\JoinTable(name="cotizacion_item",
     *      joinColumns={@ORM\JoinColumn(name="id_cotizacion", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_cotizacionitem", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    public $items;

    public $itemsaux;
    public $itemsauxactualizados;
    public $itemsauxborrados;

    /**
     * @ORM\ManyToMany(targetEntity="CotizacionItemPaquete")
     * @ORM\JoinTable(name="cotizacion_itempaquete",
     *      joinColumns={@ORM\JoinColumn(name="id_cotizacion", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_cotizacionitempaquete", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    public $itempaquetes;

    /**
     * @ORM\ManyToOne(targetEntity="CotizacionEstado")
     * @ORM\JoinColumn(name="id_cotizacionestado", referencedColumnName="id", nullable=false)
     */
    private $estado;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $motivocancelacion;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fechavalida;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecharecepcion;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $tiempoentrega;

    /**
     * @ORM\ManyToOne(targetEntity="EsquemaPago")
     * @ORM\JoinColumn(name="id_esquemapago", referencedColumnName="id", nullable=true)
     */
    private $esquemapago;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    private $activo=true;


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->items = new \Doctrine\Common\Collections\ArrayCollection();

        $this->setFecha(new \DateTime());
        $this->setFecharecepcion(new \DateTime());
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
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Cotizacion
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
     * Set fecharecepcion
     *
     * @param \DateTime $fecharecepcion
     * @return Cotizacion
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
     * Set activo
     *
     * @param boolean $activo
     * @return Cotizacion
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
     * Set usuario
     *
     * @param \AppBundle\Entity\Usuario $usuario
     * @return Cotizacion
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
     * Set empresa
     *
     * @param \AppBundle\Entity\Empresa $empresa
     * @return Cotizacion
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
     * @return Cotizacion
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
     * Set seccion
     *
     * @param \AppBundle\Entity\Seccion $seccion
     * @return Cotizacion
     */
    public function setSeccion(\AppBundle\Entity\Seccion $seccion = null)
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
     * Add items
     *
     * @param \AppBundle\Entity\CotizacionItem $items
     * @return Cotizacion
     */
    public function addItem(\AppBundle\Entity\CotizacionItem $items)
    {
        $this->items[] = $items;

        return $this;
    }

    /**
     * Remove items
     *
     * @param \AppBundle\Entity\CotizacionItem $items
     */
    public function removeItem(\AppBundle\Entity\CotizacionItem $items)
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
     * Add itempaquetes
     *
     * @param \AppBundle\Entity\CotizacionItemPaquete $itempaquetes
     * @return Cotizacion
     */
    public function addItempaquete(\AppBundle\Entity\CotizacionItemPaquete $itempaquetes)
    {
        $this->itempaquetes[] = $itempaquetes;

        return $this;
    }

    /**
     * Remove itempaquetes
     *
     * @param \AppBundle\Entity\CotizacionItemPaquete $itempaquetes
     */
    public function removeItempaquete(\AppBundle\Entity\CotizacionItemPaquete $itempaquetes)
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
     * Set estado
     *
     * @param \AppBundle\Entity\CotizacionEstado $estado
     * @return Cotizacion
     */
    public function setEstado(\AppBundle\Entity\CotizacionEstado $estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return \AppBundle\Entity\CotizacionEstado 
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set motivocancelacion
     *
     * @param string $motivocancelacion
     * @return Cotizacion
     */
    public function setMotivocancelacion($motivocancelacion)
    {
        $this->motivocancelacion = $motivocancelacion;

        return $this;
    }

    /**
     * Get motivocancelacion
     *
     * @return string 
     */
    public function getMotivocancelacion()
    {
        return $this->motivocancelacion;
    }

    /**
     * Set subtotal
     *
     * @param string $subtotal
     * @return Cotizacion
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
     * @return Cotizacion
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
     * @return Cotizacion
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
     * Set fechavalida
     *
     * @param \DateTime $fechavalida
     * @return Cotizacion
     */
    public function setFechavalida($fechavalida)
    {
        $this->fechavalida = $fechavalida;

        return $this;
    }

    /**
     * Get fechavalida
     *
     * @return \DateTime 
     */
    public function getFechavalida()
    {
        return $this->fechavalida;
    }

    /**
     * Set cliente
     *
     * @param \AppBundle\Entity\Cliente $cliente
     * @return Cotizacion
     */
    public function setCliente(\AppBundle\Entity\Cliente $cliente = null)
    {
        $this->cliente = $cliente;

        return $this;
    }

    /**
     * Get cliente
     *
     * @return \AppBundle\Entity\Cliente 
     */
    public function getCliente()
    {
        return $this->cliente;
    }

    /**
     * Set contacto
     *
     * @param \AppBundle\Entity\Cliente $contacto
     * @return Cotizacion
     */
    public function setContacto(\AppBundle\Entity\Contacto $contacto = null)
    {
        $this->contacto = $contacto;

        return $this;
    }

    /**
     * Get contacto
     *
     * @return \AppBundle\Entity\Contacto
     */
    public function getContacto()
    {
        return $this->contacto;
    }



    public function setItemsaux($itemsaux)
    {
        $this->itemsaux = $itemsaux;

        return $this;
    }

    public function getItemsaux()
    {
        return $this->itemsaux;
    }



    public function setItemsauxactualizados($itemsauxactualizados)
    {
        $this->itemsauxactualizados = $itemsauxactualizados;

        return $this;
    }

    public function getItemsauxactualizados()
    {
        return $this->itemsauxactualizados;
    }

    public function setItemsauxborrados($itemsauxborrados)
    {
        $this->itemsauxborrados = $itemsauxborrados;

        return $this;
    }

    public function getItemsauxborrados()
    {
        return $this->itemsauxborrados;
    }

    /**
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return Cotizacion
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

    public function actualizarTotales()
    {
        $subtotal = 0;
        $iva = 0;
        $total = 0;

        foreach ($this->getItems() as $cotizacionitem) {
            $subtotal = $subtotal + $cotizacionitem->getTotal();
        }

        $iva = $subtotal * 0.16;
        $total = $subtotal + $iva;

        $this->setSubtotal($subtotal);
        $this->setIva($iva);
        $this->setTotal($total);

        return $this;
    }


    /**
     * Set tiempoentrega
     *
     * @param string $tiempoentrega
     * @return Cotizacion
     */
    public function setTiempoentrega($tiempoentrega)
    {
        $this->tiempoentrega = $tiempoentrega;

        return $this;
    }

    /**
     * Get tiempoentrega
     *
     * @return string 
     */
    public function getTiempoentrega()
    {
        return $this->tiempoentrega;
    }





    /**
     * Set esquemapago
     *
     * @param \AppBundle\Entity\EsquemaPago $esquemapago
     * @return Cotizacion
     */
    public function setEsquemapago(\AppBundle\Entity\EsquemaPago $esquemapago)
    {
        $this->esquemapago = $esquemapago;

        return $this;
    }

    /**
     * Get esquemapago
     *
     * @return \AppBundle\Entity\EsquemaPago 
     */
    public function getEsquemapago()
    {
        return $this->esquemapago;
    }
}
