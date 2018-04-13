<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 12/27/17
 * Time: 2:33 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Table(name="pago")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\PagoRepository")
 */
class Pago
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="PagoTipo")
     * @ORM\JoinColumn(name="id_tipo", referencedColumnName="id")
     */
    private $tipo;

    /**
     * @ORM\ManyToOne(targetEntity="Orden", inversedBy="pagos")
     * @ORM\JoinColumn(name="id_orden", referencedColumnName="id")
     */
    private $orden;

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
     * @ORM\ManyToOne(targetEntity="MedioPago")
     * @ORM\JoinColumn(name="id_mediopago", referencedColumnName="id", nullable=true)
     */
    private $mediopago;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    protected $monto;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     */
    private $moneda;

    /**
     * @ORM\Column(type="date", nullable=true)
     */
    private $fechapago;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $validado=false;

    /**
     * @ORM\Column(type="boolean", options={"default" = 1})
     */
    private $activo=true;


    public function __construct()
    {
        $this->fecha = new \DateTime();
        $this->fechapago = new \DateTime();
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
     * Set monto
     *
     * @param string $monto
     * @return Pago
     */
    public function setMonto($monto)
    {
        $this->monto = $monto;

        return $this;
    }

    /**
     * Get monto
     *
     * @return string 
     */
    public function getMonto()
    {
        return $this->monto;
    }

    /**
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return Pago
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
     * Set validado
     *
     * @param boolean $validado
     * @return Pago
     */
    public function setValidado($validado)
    {
        $this->validado = $validado;

        return $this;
    }

    /**
     * Get validado
     *
     * @return boolean 
     */
    public function getValidado()
    {
        return $this->validado;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return Pago
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
     * @return Pago
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
     * @return Pago
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
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return Pago
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
     * @return Pago
     */
    public function setOrden(\AppBundle\Entity\Orden $orden = null)
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
     * Set tipo
     *
     * @param \AppBundle\Entity\PagoTipo $tipo
     * @return Pago
     */
    public function setTipo(\AppBundle\Entity\PagoTipo $tipo = null)
    {
        $this->tipo = $tipo;

        return $this;
    }

    /**
     * Get tipo
     *
     * @return \AppBundle\Entity\PagoTipo
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * Set fechapago
     *
     * @param \DateTime $fechapago
     * @return Pago
     */
    public function setFechapago($fechapago)
    {
        $this->fechapago = $fechapago;

        return $this;
    }

    /**
     * Get fechapago
     *
     * @return \DateTime 
     */
    public function getFechapago()
    {
        return $this->fechapago;
    }

    /**
     * Set mediopago
     *
     * @param \AppBundle\Entity\MedioPago $mediopago
     * @return Pago
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
}
