<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/21/17
 * Time: 1:06 a.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="mediopago")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\MedioPagoRepository")
 */
class MedioPago
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="MetodoPago", inversedBy="mediopagos")
     * @ORM\JoinColumn(name="id_metodopago", referencedColumnName="id")
     */
    private $metodopago;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=2)
     * @Assert\NotBlank(message="Este campo es requerido.")
     */
    private $satclave;

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
     * Set nombre
     *
     * @param string $nombre
     * @return MedioPago
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
     * Set activo
     *
     * @param boolean $activo
     * @return MedioPago
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
     * Set satclave
     *
     * @param string $satclave
     * @return MedioPago
     */
    public function setSatclave($satclave)
    {
        $this->satclave = $satclave;

        return $this;
    }

    /**
     * Get satclave
     *
     * @return string 
     */
    public function getSatclave()
    {
        return $this->satclave;
    }



    /**
     * Set metodopago
     *
     * @param \AppBundle\Entity\MetodoPago $metodopago
     * @return MedioPago
     */
    public function setMetodopago(\AppBundle\Entity\MetodoPago $metodopago = null)
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
}
