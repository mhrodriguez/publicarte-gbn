<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 12/8/17
 * Time: 7:27 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="contacto")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ContactoRepository")
 */
class Contacto
{
    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $apellidos;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $puesto;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Assert\Email(
     *     message = "El e-mail '{{ value }}' no es válido.",
     *     checkMX = false
     * )
     * @Srz\Groups({"sync"})
     */
    private $correo;

    /**
     * @ORM\Column(type="string", length=100)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Assert\Email(
     *     message = "El e-mail de facturación '{{ value }}' no es válido.",
     *     checkMX = false
     * )
     * @Srz\Groups({"sync"})
     */
    private $correofacturacion;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $telefono;

    /**
     * @ORM\ManyToOne(targetEntity="MedioPago")
     * @ORM\JoinColumn(name="id_mediopago", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"synccortecaja"})
     */
    private $mediopago;

    /**
     * @ORM\Column(type="boolean", options={"default" = 1})
     */
    private $activo = true;

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
     * Set nombre
     *
     * @param string $nombre
     * @return Contacto
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set puesto
     *
     * @param string $puesto
     * @return Contacto
     */
    public function setPuesto($puesto)
    {
        $this->puesto = $puesto;

        return $this;
    }

    /**
     * Get puesto
     *
     * @return string 
     */
    public function getPuesto()
    {
        return $this->puesto;
    }

    /**
     * Set correo
     *
     * @param string $correo
     * @return Contacto
     */
    public function setCorreo($correo)
    {
        $this->correo = $correo;

        return $this;
    }

    /**
     * Get correo
     *
     * @return string 
     */
    public function getCorreo()
    {
        return $this->correo;
    }

    /**
     * Set correofacturacion
     *
     * @param string $correofacturacion
     * @return Contacto
     */
    public function setCorreofacturacion($correofacturacion)
    {
        $this->correofacturacion = $correofacturacion;

        return $this;
    }

    /**
     * Get correofacturacion
     *
     * @return string 
     */
    public function getCorreofacturacion()
    {
        return $this->correofacturacion;
    }

    /**
     * Set telefono
     *
     * @param string $telefono
     * @return Contacto
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get telefono
     *
     * @return string 
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return Contacto
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
     * Set mediopago
     *
     * @param \AppBundle\Entity\MedioPago $mediopago
     * @return Contacto
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
     * Set apellidos
     *
     * @param string $apellidos
     * @return Contacto
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;

        return $this;
    }

    /**
     * Get apellidos
     *
     * @return string 
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    public function getNombrecompleto()
    {
        return $this->getNombre() . ' ' . $this->getApellidos();
    }
}
