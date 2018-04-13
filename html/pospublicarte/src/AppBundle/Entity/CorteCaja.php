<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/21/17
 * Time: 6:57 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="cortecaja")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CorteCajaRepository")
 */
class CorteCaja
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    public $id;

    /**
     * @Srz\Groups({"sync"})
     */
    public $resultado;

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
     * @ORM\ManyToOne(targetEntity="Usuario")
     * @ORM\JoinColumn(name="id_usuario", referencedColumnName="id", nullable=false)
     */
    private $usuario;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fechainicio;

    /**
     * @Srz\Groups({"sync"})
     */
    public $fechainiciostr;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fechafin;

    /**
     * @Srz\Groups({"sync"})
     */
    public $fechafinstr;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"sync"})
     */
    protected $totalefectivo;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"sync"})
     */
    protected $totaltarjetacredito;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"sync"})
     */
    protected $totalefectivoreportado;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * $corteCaja->setRemanente(0);
     */
    protected $totaltarjetacreditoreportado;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"sync"})
     */
    protected $remanente;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"sync"})
     */
    protected $propinasefectivo;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     * @Srz\Groups({"sync"})
     */
    protected $propinastarjetacredito;

    /**
     * @ORM\Column(type="integer")
     * @Srz\Groups({"sync"})
     */
    public $numventasefectivo;

    /**
     * @ORM\Column(type="integer")
     * @Srz\Groups({"sync"})
     */
    public $numventastarjetacredito;

    /**
     * @ORM\ManyToOne(targetEntity="Moneda")
     * @ORM\JoinColumn(name="id_moneda", referencedColumnName="id", nullable=false)
     */
    private $moneda;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
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
     * Set fecha
     *
     * @param \DateTime $fecha
     * @return CorteCaja
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
     * Set totalefectivo
     *
     * @param string $totalefectivo
     * @return CorteCaja
     */
    public function setTotalefectivo($totalefectivo)
    {
        $this->totalefectivo = $totalefectivo;

        return $this;
    }

    /**
     * Get totalefectivo
     *
     * @return string 
     */
    public function getTotalefectivo()
    {
        return $this->totalefectivo;
    }

    /**
     * Set totaltarjetacredito
     *
     * @param string $totaltarjetacredito
     * @return CorteCaja
     */
    public function setTotaltarjetacredito($totaltarjetacredito)
    {
        $this->totaltarjetacredito = $totaltarjetacredito;

        return $this;
    }

    /**
     * Get totaltarjetacredito
     *
     * @return string 
     */
    public function getTotaltarjetacredito()
    {
        return $this->totaltarjetacredito;
    }

    /**
     * Set totalefectivoreportado
     *
     * @param string $totalefectivoreportado
     * @return CorteCaja
     */
    public function setTotalefectivoreportado($totalefectivoreportado)
    {
        $this->totalefectivoreportado = $totalefectivoreportado;

        return $this;
    }

    /**
     * Get totalefectivoreportado
     *
     * @return string 
     */
    public function getTotalefectivoreportado()
    {
        return $this->totalefectivoreportado;
    }

    /**
     * Set totaltarjetacreditoreportado
     *
     * @param string $totaltarjetacreditoreportado
     * @return CorteCaja
     */
    public function setTotaltarjetacreditoreportado($totaltarjetacreditoreportado)
    {
        $this->totaltarjetacreditoreportado = $totaltarjetacreditoreportado;

        return $this;
    }

    /**
     * Get totaltarjetacreditoreportado
     *
     * @return string 
     */
    public function getTotaltarjetacreditoreportado()
    {
        return $this->totaltarjetacreditoreportado;
    }

    /**
     * Set remanente
     *
     * @param string $remanente
     * @return CorteCaja
     */
    public function setRemanente($remanente)
    {
        $this->remanente = $remanente;

        return $this;
    }

    /**
     * Get remanente
     *
     * @return string 
     */
    public function getRemanente()
    {
        return $this->remanente;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return CorteCaja
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
     * @return CorteCaja
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
     * @return CorteCaja
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
     * Set usuario
     *
     * @param \AppBundle\Entity\Usuario $usuario
     * @return CorteCaja
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
     * Set moneda
     *
     * @param \AppBundle\Entity\Moneda $moneda
     * @return CorteCaja
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
     * Set numventasefectivo
     *
     * @param integer $numventasefectivo
     * @return CorteCaja
     */
    public function setNumventasefectivo($numventasefectivo)
    {
        $this->numventasefectivo = $numventasefectivo;

        return $this;
    }

    /**
     * Get numventasefectivo
     *
     * @return integer 
     */
    public function getNumventasefectivo()
    {
        return $this->numventasefectivo;
    }

    /**
     * Set numventastarjetacredito
     *
     * @param integer $numventastarjetacredito
     * @return CorteCaja
     */
    public function setNumventastarjetacredito($numventastarjetacredito)
    {
        $this->numventastarjetacredito = $numventastarjetacredito;

        return $this;
    }

    /**
     * Get numventastarjetacredito
     *
     * @return integer 
     */
    public function getNumventastarjetacredito()
    {
        return $this->numventastarjetacredito;
    }

    /**
     * Set fechainicio
     *
     * @param \DateTime $fechainicio
     * @return CorteCaja
     */
    public function setFechainicio($fechainicio)
    {
        $this->fechainicio = $fechainicio;

        return $this;
    }

    /**
     * Get fechainicio
     *
     * @return \DateTime 
     */
    public function getFechainicio()
    {
        return $this->fechainicio;
    }

    /**
     * Set fechafin
     *
     * @param \DateTime $fechafin
     * @return CorteCaja
     */
    public function setFechafin($fechafin)
    {
        $this->fechafin = $fechafin;

        return $this;
    }

    /**
     * Get fechafin
     *
     * @return \DateTime 
     */
    public function getFechafin()
    {
        return $this->fechafin;
    }

    /**
     * Set fechainiciostr
     *
     * @param \DateTime $fechainiciostr
     * @return CorteCaja
     */
    public function setFechainiciostr($fechainiciostr)
    {
        $this->fechainiciostr = $fechainiciostr;

        return $this;
    }

    /**
     * Get fechainiciostr
     *
     * @return \DateTime 
     */
    public function getFechainiciostr()
    {
        return $this->fechainiciostr;
    }

    /**
     * Set fechafinstr
     *
     * @param \DateTime $fechafinstr
     * @return CorteCaja
     */
    public function setFechafinstr($fechafinstr)
    {
        $this->fechafinstr = $fechafinstr;

        return $this;
    }

    /**
     * Get fechafinstr
     *
     * @return \DateTime
     */
    public function getFechafinstr()
    {
        return $this->fechafinstr;
    }



    /**
     * Set propinasefectivo
     *
     * @param string $propinasefectivo
     * @return CorteCaja
     */
    public function setPropinasefectivo($propinasefectivo)
    {
        $this->propinasefectivo = $propinasefectivo;

        return $this;
    }

    /**
     * Get propinasefectivo
     *
     * @return string 
     */
    public function getPropinasefectivo()
    {
        return $this->propinasefectivo;
    }

    /**
     * Set propinastarjetacredito
     *
     * @param string $propinastarjetacredito
     * @return CorteCaja
     */
    public function setPropinastarjetacredito($propinastarjetacredito)
    {
        $this->propinastarjetacredito = $propinastarjetacredito;

        return $this;
    }

    /**
     * Get propinastarjetacredito
     *
     * @return string 
     */
    public function getPropinastarjetacredito()
    {
        return $this->propinastarjetacredito;
    }
}
