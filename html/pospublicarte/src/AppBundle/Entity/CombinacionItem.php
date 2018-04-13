<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/21/17
 * Time: 12:35 a.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="combinacionitem")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CombinacionItemRepository")
 */
class CombinacionItem
{
    /**
     * @ORM\Column(name="id",type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="Categoria")
     * @ORM\JoinColumn(name="id_categoria", referencedColumnName="id")
     * @Srz\Groups({"sync"})
     */
    private $categoria;

    /**
     * @ORM\ManyToOne(targetEntity="Subcategoria")
     * @ORM\JoinColumn(name="id_subcategoria", referencedColumnName="id", nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $subcategoria;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Range(
     *      min = 1
     * )
     * @Srz\Groups({"sync"})
     */
    private $cantidad;

    /**
     * @ORM\Column(name="incluido", type="boolean", options={"default" = 1})
     * @Srz\Groups({"sync"})
     */
    private $incluido;

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
     * Set cantidad
     *
     * @param integer $cantidad
     * @return CombinacionItem
     */
    public function setCantidad($cantidad)
    {
        $this->cantidad = $cantidad;

        return $this;
    }

    /**
     * Get cantidad
     *
     * @return integer 
     */
    public function getCantidad()
    {
        return $this->cantidad;
    }

    /**
     * Set categoria
     *
     * @param \AppBundle\Entity\Categoria $categoria
     * @return CombinacionItem
     */
    public function setCategoria(\AppBundle\Entity\Categoria $categoria = null)
    {
        $this->categoria = $categoria;

        return $this;
    }

    /**
     * Get categoria
     *
     * @return \AppBundle\Entity\Categoria 
     */
    public function getCategoria()
    {
        return $this->categoria;
    }

    /**
     * Set subcategoria
     *
     * @param \AppBundle\Entity\Subcategoria $subcategoria
     * @return CombinacionItem
     */
    public function setSubcategoria(\AppBundle\Entity\Subcategoria $subcategoria = null)
    {
        $this->subcategoria = $subcategoria;

        return $this;
    }

    /**
     * Get subcategoria
     *
     * @return \AppBundle\Entity\Subcategoria 
     */
    public function getSubcategoria()
    {
        return $this->subcategoria;
    }

    /**
     * Set incluido
     *
     * @param boolean $incluido
     * @return CombinacionItem
     */
    public function setIncluido($incluido)
    {
        $this->incluido = $incluido;

        return $this;
    }

    /**
     * Get incluido
     *
     * @return boolean 
     */
    public function getIncluido()
    {
        return $this->incluido;
    }
}
