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
 * @ORM\Table(name="orden")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\OrdenRepository")
 */
class Orden
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    public $id;

    /**
     * @ORM\ManyToOne(targetEntity="OrdenTipo")
     * @ORM\JoinColumn(name="id_tipo", referencedColumnName="id", nullable=true)
     */
    private $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="Maquina")
     * @ORM\JoinColumn(name="id_maquina", referencedColumnName="id", nullable=true)
     */
    private $maquina;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $foliofactura;

    /**
     * @ORM\ManyToOne(targetEntity="Cotizacion")
     * @ORM\JoinColumn(name="id_cotizacion", referencedColumnName="id", nullable=true)
     */
    private $cotizacion;

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
     * @ORM\ManyToMany(targetEntity="OrdenItem", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\JoinTable(name="orden_item",
     *      joinColumns={@ORM\JoinColumn(name="id_orden", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_ordenitem", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    public $items;

    public $itemsaux;
    public $itemsauxactualizados;
    public $itemsauxborrados;

    /**
     * @ORM\OneToMany(targetEntity="Pago", mappedBy="orden", cascade={"remove"}, orphanRemoval=true)
     * @Srz\Groups({"sync"})
     */
    public $pagos;

    /**
     * @ORM\ManyToOne(targetEntity="OrdenEstado")
     * @ORM\JoinColumn(name="id_ordenestado", referencedColumnName="id", nullable=false)
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
    private $fechaentrega;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecharecepcion;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $block;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $medidaimpresion;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $papel;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $folio;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $observaciones;

    /**
     * @ORM\ManyToMany(targetEntity="ImpresionOpcion")
     * @ORM\JoinTable(name="orden_impresionopcion",
     *      joinColumns={@ORM\JoinColumn(name="id_orden", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_impresionopcion", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    private $impresionopciones;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $colorinicial;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $colorcfb;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $colorcf;

    /**
     * @ORM\Column(name="especial", type="boolean", options={"default" = 0})
     */
    private $especial=false;

    /**
     * @ORM\ManyToOne(targetEntity="UsoCFDI")
     * @ORM\JoinColumn(name="id_usocfdi", referencedColumnName="id", nullable=true)
     */
    private $usocfdi;

    /**
     * @ORM\ManyToOne(targetEntity="MetodoPago")
     * @ORM\JoinColumn(name="id_metodopago", referencedColumnName="id", nullable=true)
     */
    private $metodopago;

    /**
     * @ORM\ManyToOne(targetEntity="MedioPago")
     * @ORM\JoinColumn(name="id_mediopago", referencedColumnName="id", nullable=true)
     */
    private $mediopago;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    private $activo=true;

    /* CAMPOS HELPERS */
    protected $abono;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->items = new \Doctrine\Common\Collections\ArrayCollection();

        $this->setFecha(new \DateTime());
        $this->setFecharecepcion(new \DateTime());

        $this->setFechaentrega(new \DateTime());
        $this->getFechaentrega()->modify('+30 day');
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
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * @param \AppBundle\Entity\OrdenItem $items
     * @return Orden
     */
    public function addItem(\AppBundle\Entity\OrdenItem $items)
    {
        $this->items[] = $items;

        return $this;
    }

    /**
     * Remove items
     *
     * @param \AppBundle\Entity\OrdenItem $items
     */
    public function removeItem(\AppBundle\Entity\OrdenItem $items)
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
     * Set items
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function setItems($items)
    {
        $this->items=$items;
    }

    /**
     * Set estado
     *
     * @param \AppBundle\Entity\OrdenEstado $estado
     * @return Orden
     */
    public function setEstado(\AppBundle\Entity\OrdenEstado $estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return \AppBundle\Entity\OrdenEstado
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set motivocancelacion
     *
     * @param string $motivocancelacion
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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
     * Set fechaentrega
     *
     * @param \DateTime $fechaentrega
     * @return Orden
     */
    public function setFechaentrega($fechaentrega)
    {
        $this->fechaentrega = $fechaentrega;

        return $this;
    }

    /**
     * Get fechaentrega
     *
     * @return \DateTime
     */
    public function getFechaentrega()
    {
        return $this->fechaentrega;
    }

    /**
     * Set cliente
     *
     * @param \AppBundle\Entity\Cliente $cliente
     * @return Orden
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
     * @return Orden
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
     * @return Orden
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

        foreach ($this->getItems() as $ordenitem) {
            $subtotal = $subtotal + $ordenitem->getTotal();
        }

        $iva = $subtotal * 0.16;
        $total = $subtotal + $iva;

        $this->setSubtotal($subtotal);
        $this->setIva($iva);
        $this->setTotal($total);

        return $this;
    }

    /**
     * Set block
     *
     * @param string $block
     * @return Orden
     */
    public function setBlock($block)
    {
        $this->block = $block;

        return $this;
    }

    /**
     * Get block
     *
     * @return string 
     */
    public function getBlock()
    {
        return $this->block;
    }

    /**
     * Set medidaimpresion
     *
     * @param string $medidaimpresion
     * @return Orden
     */
    public function setMedidaimpresion($medidaimpresion)
    {
        $this->medidaimpresion = $medidaimpresion;

        return $this;
    }

    /**
     * Get medidaimpresion
     *
     * @return string 
     */
    public function getMedidaimpresion()
    {
        return $this->medidaimpresion;
    }

    /**
     * Set papel
     *
     * @param string $papel
     * @return Orden
     */
    public function setPapel($papel)
    {
        $this->papel = $papel;

        return $this;
    }

    /**
     * Get papel
     *
     * @return string 
     */
    public function getPapel()
    {
        return $this->papel;
    }

    /**
     * Add impresionopciones
     *
     * @param \AppBundle\Entity\ImpresionOpcion $impresionopciones
     * @return Orden
     */
    public function addImpresionopcione(\AppBundle\Entity\ImpresionOpcion $impresionopciones)
    {
        $this->impresionopciones[] = $impresionopciones;

        return $this;
    }

    /**
     * Remove impresionopciones
     *
     * @param \AppBundle\Entity\ImpresionOpcion $impresionopciones
     */
    public function removeImpresionopcione(\AppBundle\Entity\ImpresionOpcion $impresionopciones)
    {
        $this->impresionopciones->removeElement($impresionopciones);
    }

    /**
     * Get impresionopciones
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getImpresionopciones()
    {
        return $this->impresionopciones;
    }

    /**
     * Set cotizacion
     *
     * @param \AppBundle\Entity\Cotizacion $cotizacion
     * @return Orden
     */
    public function setCotizacion(\AppBundle\Entity\Cotizacion $cotizacion = null)
    {
        $this->cotizacion = $cotizacion;

        return $this;
    }

    /**
     * Get cotizacion
     *
     * @return \AppBundle\Entity\Cotizacion 
     */
    public function getCotizacion()
    {
        return $this->cotizacion;
    }

    /**
     * Set foliofactura
     *
     * @param string $foliofactura
     * @return Orden
     */
    public function setFoliofactura($foliofactura)
    {
        $this->foliofactura = $foliofactura;

        return $this;
    }

    /**
     * Get foliofactura
     *
     * @return string 
     */
    public function getFoliofactura()
    {
        return $this->foliofactura;
    }


    public function getSaldopagado()
    {
        $saldoPagado = 0;

        foreach ($this->getPagos() as $pago) {
            if ($pago->getValidado()) {
                $saldoPagado = $saldoPagado + $pago->getMonto();
            }
        }

        return $saldoPagado;
    }

    public function getSaldopendiente()
    {
        $saldoPagado = $this->getSaldopagado();

        $saldoPendiente = $this->getTotal() - $saldoPagado;

        if ($saldoPendiente > -0.01 && $saldoPendiente<=0) $saldoPendiente=0;

        return $saldoPendiente;
    }

    public function getSaldopagadoregistrado()
    {
        $saldoPagado = 0;

        foreach ($this->getPagos() as $pago) {
            $saldoPagado = $saldoPagado + $pago->getMonto();
        }

        return $saldoPagado;
    }

    /**
     * Add pagos
     *
     * @param \AppBundle\Entity\Pago $pagos
     * @return Orden
     */
    public function addPago(\AppBundle\Entity\Pago $pagos)
    {
        $this->pagos[] = $pagos;

        return $this;
    }

    /**
     * Remove pagos
     *
     * @param \AppBundle\Entity\Pago $pagos
     */
    public function removePago(\AppBundle\Entity\Pago $pagos)
    {
        $this->pagos->removeElement($pagos);
    }

    /**
     * Get pagos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPagos()
    {
        return $this->pagos;
    }

    /**
     * Set items
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function setPagos($pagos)
    {
        $this->pagos=$pagos;
    }

    /**
     * Set especial
     *
     * @param boolean $especial
     * @return Orden
     */
    public function setEspecial($especial)
    {
        $this->especial = $especial;

        return $this;
    }

    /**
     * Get especial
     *
     * @return boolean 
     */
    public function getEspecial()
    {
        return $this->especial;
    }

    /**
     * Set usocfdi
     *
     * @param \AppBundle\Entity\UsoCFDI $usocfdi
     * @return Orden
     */
    public function setUsocfdi(\AppBundle\Entity\UsoCFDI $usocfdi = null)
    {
        $this->usocfdi = $usocfdi;

        return $this;
    }

    /**
     * Get usocfdi
     *
     * @return \AppBundle\Entity\UsoCFDI 
     */
    public function getUsocfdi()
    {
        return $this->usocfdi;
    }

    /**
     * Set metodopago
     *
     * @param \AppBundle\Entity\MetodoPago $metodopago
     * @return Orden
     */
    public function setMetodopago(\AppBundle\Entity\MetodoPago $metodopago)
    {
        $this->metodopago = $metodopago;

        return $this;
    }

    /**
     * Get metodopago
     *
     * @return \AppBundle\Entity\MetodoPago 
     */
    public function getMetodopago()
    {
        return $this->metodopago;
    }

    /**
     * Set mediopago
     *
     * @param \AppBundle\Entity\MedioPago $mediopago
     * @return Orden
     */
    public function setMediopago(\AppBundle\Entity\MedioPago $mediopago = null)
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
     * Set folio
     *
     * @param string $folio
     * @return Orden
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
     * Set observaciones
     *
     * @param string $observaciones
     * @return Orden
     */
    public function setObservaciones($observaciones)
    {
        $this->observaciones = $observaciones;

        return $this;
    }

    /**
     * Get observaciones
     *
     * @return string 
     */
    public function getObservaciones()
    {
        return $this->observaciones;
    }

    /**
     * Set tipo
     *
     * @param \AppBundle\Entity\OrdenTipo $tipo
     * @return Orden
     */
    public function setTipo(\AppBundle\Entity\OrdenTipo $tipo = null)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return \AppBundle\Entity\OrdenTipo 
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set maquina
     *
     * @param \AppBundle\Entity\Maquina $maquina
     * @return Orden
     */
    public function setMaquina(\AppBundle\Entity\Maquina $maquina = null)
    {
        $this->maquina = $maquina;

        return $this;
    }

    /**
     * Get maquina
     *
     * @return \AppBundle\Entity\Maquina 
     */
    public function getMaquina()
    {
        return $this->maquina;
    }

    /**
     * Set colorcfb
     *
     * @param string $colorcfb
     * @return Orden
     */
    public function setColorcfb($colorcfb)
    {
        $this->colorcfb = $colorcfb;

        return $this;
    }

    /**
     * Get colorcfb
     *
     * @return string 
     */
    public function getColorcfb()
    {
        return $this->colorcfb;
    }

    /**
     * Set colorcf
     *
     * @param string $colorcf
     * @return Orden
     */
    public function setColorcf($colorcf)
    {
        $this->colorcf = $colorcf;

        return $this;
    }

    /**
     * Get colorcf
     *
     * @return string 
     */
    public function getColorcf()
    {
        return $this->colorcf;
    }

    /**
     * Set colorinicial
     *
     * @param string $colorinicial
     * @return Orden
     */
    public function setColorinicial($colorinicial)
    {
        $this->colorinicial = $colorinicial;

        return $this;
    }

    /**
     * Get colorinicial
     *
     * @return string 
     */
    public function getColorinicial()
    {
        return $this->colorinicial;
    }

    /**
     * Set Abono
     *
     * @return Orden
     */
    public function setAbono($abono)
    {
        $this->abono = $abono;

        return $this;
    }

    /**
     * Get Abono
     *
     */
    public function getAbono()
    {
        return $this->abono;
    }
}
