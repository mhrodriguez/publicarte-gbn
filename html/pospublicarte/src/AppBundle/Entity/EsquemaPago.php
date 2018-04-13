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
 * @ORM\Table(name="esquemapago")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\EsquemaPagoRepository")
 */
class EsquemaPago
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $nombre;

    /**
     * @ORM\OneToMany(targetEntity="MedioPago", mappedBy="metodopago", cascade={"remove"}, orphanRemoval=true)
     * @Srz\Groups({"sync"})
     */
    public $mediopagos;

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
     * Constructor
     */
    public function __construct()
    {
        $this->mediopagos = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add mediopagos
     *
     * @param \AppBundle\Entity\MedioPago $mediopagos
     * @return MetodoPago
     */
    public function addMediopago(\AppBundle\Entity\MedioPago $mediopagos)
    {
        $this->mediopagos[] = $mediopagos;

        return $this;
    }

    /**
     * Remove mediopagos
     *
     * @param \AppBundle\Entity\MedioPago $mediopagos
     */
    public function removeMediopago(\AppBundle\Entity\MedioPago $mediopagos)
    {
        $this->mediopagos->removeElement($mediopagos);
    }

    /**
     * Get mediopagos
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMediopagos()
    {
        return $this->mediopagos;
    }
}
