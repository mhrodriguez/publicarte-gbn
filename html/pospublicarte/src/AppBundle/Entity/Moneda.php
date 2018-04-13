<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 5/7/16
 * Time: 10:47 p.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Table(name="moneda")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\MonedaRepository")
 * @UniqueEntity(fields="nombre", message="La moneda ya existe.")
 */
class Moneda
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"synccortecaja"})
     */
    private $idMoneda;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"synccortecaja"})
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=10, unique=true)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     * @Srz\Groups({"synccortecaja"})
     */
    private $simbolo;

    /**
     * @ORM\Column(type="string", length=3, unique=true)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $satclave;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    private $activo;


    /**
     * Get idMoneda
     *
     * @return integer 
     */
    public function getIdMoneda()
    {
        return $this->idMoneda;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Moneda
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
     * Set simbolo
     *
     * @param string $simbolo
     * @return Moneda
     */
    public function setSimbolo($simbolo)
    {
        $this->simbolo = $simbolo;

        return $this;
    }

    /**
     * Get simbolo
     *
     * @return string
     */
    public function getSimbolo()
    {
        return $this->simbolo;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return Moneda
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
     * @return Moneda
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
}
