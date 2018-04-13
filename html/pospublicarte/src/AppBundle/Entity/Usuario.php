<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 11/19/16
 * Time: 2:15 PM
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\AdvancedUserInterface;
use Symfony\Component\Validator\Constraints as Assert;

use AppBundle\Entity\Rol;
use Symfony\Component\Serializer\Annotation as Srz;

use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Table(name="usuario")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UsuarioRepository")
 * @UniqueEntity(fields="username", message="El usuario ya existe.")
 */
class Usuario implements AdvancedUserInterface
{
    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50, unique=true)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $username;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Srz\Groups({"sync"})
     */
    private $apellidos;

    /**
     * @ORM\Column(type="string", length=64)
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Assert\Length(
     *      min = 6,
     *      max = 64,
     *      minMessage = "Su password debe ser al menos de {{ limit }} caracteres de longitud",
     *      maxMessage = "Su password debe ser máximo de {{ limit }} caracteres de longitud"
     * )
     */
    private $password;

    /**
     * @ORM\Column(type="string", length=50, unique=true, nullable=true)
     * @Srz\Groups({"sync"})
     */
    private $email;

    /**
     * @ORM\ManyToOne(targetEntity="Empresa")
     * @ORM\JoinColumn(name="id_empresa", referencedColumnName="id", nullable=false)
     * @Srz\Groups({"sync"})
     */
    private $empresa;

    /**
     * @ORM\ManyToMany(targetEntity="Sucursal")
     * @ORM\JoinTable(name="usuario_sucursal",
     *      joinColumns={@ORM\JoinColumn(name="id_usuario", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_sucursal", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    public $sucursales;

    /**
     * @ORM\ManyToMany(targetEntity="Rol")
     * @ORM\JoinTable(name="usuario_rol",
     *      joinColumns={@ORM\JoinColumn(name="id_usuario", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="id_rol", referencedColumnName="id")}
     *      )
     * @Srz\Groups({"sync"})
     */
    private $roles;

    /**
     * @ORM\Column(type="string", length=64, nullable=true)
     */
    private $token;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $fechaExpiracionToken;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $fechaCreacion;

    /**
     * @ORM\ManyToOne(targetEntity="Imagen")
     * @ORM\JoinColumn(name="id_imagen", referencedColumnName="id")
     * @Srz\Groups({"sync"})
     */
    private $imagen;

    /**
     * @ORM\ManyToOne(targetEntity="Imagen")
     * @ORM\JoinColumn(name="id_firma", referencedColumnName="id")
     * @Srz\Groups({"sync"})
     */
    private $firma;

    private $firmaimagen;

    /**
     * @ORM\Column(name="is_active", type="boolean")
     */
    private $isActive;


    public function __construct()
    {
        $this->isActive = true;
        $this->fechaCreacion = new \DateTime();
        // may not be needed, see section on salt below
        // $this->salt = md5(uniqid(null, true));
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
     * Get username
     *
     * @return string
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * Set username
     *
     * @param string $username
     * @return User
     */
    public function setUsername($username)
    {
        $this->username = $username;

        return $this;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Usuario
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
     * Set password
     *
     * @param string $password
     * @return User
     */
    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return User
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Add roles
     *
     * @param \AppBundle\Entity\Rol $roles
     * @return Usuario
     */
    public function addRole(\AppBundle\Entity\Rol $roles)
    {
        $this->roles[] = $roles;

        return $this;
    }

    /**
     * Remove roles
     *
     * @param \AppBundle\Entity\Rol $roles
     */
    public function removeRole(\AppBundle\Entity\Rol $roles)
    {
        $this->roles->removeElement($roles);
    }

    /**
     * Set token
     *
     * @param string $token
     * @return Usuario
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
     * Set fechaExpiracionToken
     *
     * @param \DateTime $fechaExpiracionToken
     * @return Usuario
     */
    public function setFechaExpiracionToken($fechaExpiracionToken)
    {
        $this->fechaExpiracionToken = $fechaExpiracionToken;

        return $this;
    }

    /**
     * Get fechaExpiracionToken
     *
     * @return \DateTime
     */
    public function getFechaExpiracionToken()
    {
        return $this->fechaExpiracionToken;
    }

    /**
     * Set fechaCreacion
     *
     * @param \DateTime $fechaCreacion
     * @return Usuario
     */
    public function setFechaCreacion($fechaCreacion)
    {
        $this->fechaCreacion = $fechaCreacion;

        return $this;
    }

    /**
     * Get fechaCreacion
     *
     * @return \DateTime
     */
    public function getFechaCreacion()
    {
        return $this->fechaCreacion;
    }

    /**
     * Add seguidores
     *
     * @param \AppBundle\Entity\Usuario $seguidores
     * @return Usuario
     */
    public function addSeguidor(\AppBundle\Entity\Usuario $seguidores)
    {
        $this->seguidores[] = $seguidores;

        return $this;
    }

    /**
     * Remove seguidores
     *
     * @param \AppBundle\Entity\Usuario $seguidores
     */
    public function removeSeguidor(\AppBundle\Entity\Usuario $seguidores)
    {
        $this->seguidores->removeElement($seguidores);
    }

    /**
     * Get seguidores
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getSeguidores()
    {
        return $this->seguidores;
    }

    /**
     * Set isActive
     *
     * @param boolean $isActive
     * @return User
     */
    public function setIsActive($isActive)
    {
        $this->isActive = $isActive;

        return $this;
    }

    /**
     * Get isActive
     *
     * @return boolean
     */
    public function getIsActive()
    {
        return $this->isActive;
    }

    /**
     * Set imagen
     *
     * @param \AppBundle\Entity\Imagen $imagen
     * @return Usuario
     */
    public function setImagen(\AppBundle\Entity\Imagen $imagen = null)
    {
        $this->imagen = $imagen;

        return $this;
    }

    /**
     * Get imagen
     *
     * @return \AppBundle\Entity\Imagen
     */
    public function getImagen()
    {
        return $this->imagen;
    }

    /**
     * Set empresa
     *
     * @param \AppBundle\Entity\Empresa $empresa
     * @return Usuario
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
     * Set apellidos
     *
     * @param string $apellidos
     * @return Usuario
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


    /**
     * Add sucursales
     *
     * @param \AppBundle\Entity\Sucursal $sucursales
     * @return Usuario
     */
    public function addSucursale(\AppBundle\Entity\Sucursal $sucursales)
    {
        $this->sucursales[] = $sucursales;

        return $this;
    }

    /**
     * Remove sucursales
     *
     * @param \AppBundle\Entity\Sucursal $sucursales
     */
    public function removeSucursale(\AppBundle\Entity\Sucursal $sucursales)
    {
        $this->sucursales->removeElement($sucursales);
    }

    /**
     * Get sucursales
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getSucursales()
    {
        return $this->sucursales;
    }

    /**
     * Add rol
     *
     * @param \AppBundle\Entity\Sucursal $sucursales
     * @return Usuario
     */
    public function addRoles2(\AppBundle\Entity\Rol $rol)
    {
        $this->roles[] = $rol;

        return $this;
    }

    /**
     * Remove sucursales
     *
     * @param \AppBundle\Entity\Sucursal $sucursales
     */
    public function removeRoles2(\AppBundle\Entity\Sucursal $rol)
    {
        $this->roles->removeElement($rol);
    }

    /**
     * Get sucursales
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getRoles2()
    {
        return $this->roles;
    }

// UserInterface ---------------------------------------------------

    public function getSalt()
    {
        // you *may* need a real salt depending on your encoder
        // see section on salt below
        return null;
    }

    public function getPassword()
    {
        return $this->password;
    }

    public function getRoles()
    {
        $nombreroles = array();

        foreach ($this->roles as $rol)
        {
            array_push($nombreroles, $rol->getNombre());
        }

        return $nombreroles;
    }

    public function eraseCredentials()
    {
    }

    public function isEnabled()
    {
        return $this->getIsActive();
    }

    public function isAccountNonExpired()
    {
        return true;
    }

    public function  isAccountNonLocked()
    {
        return true;
    }

    public function  isCredentialsNonExpired()
    {
        return true;
    }




    /**
     * Set firma
     *
     * @param \AppBundle\Entity\Imagen $firma
     * @return Usuario
     */
    public function setFirma(\AppBundle\Entity\Imagen $firma = null)
    {
        $this->firma = $firma;

        return $this;
    }

    /**
     * Get firma
     *
     * @return \AppBundle\Entity\Imagen 
     */
    public function getFirma()
    {
        return $this->firma;
    }

    public function getNombrecompleto()
    {
        $nombrecompleto = $this->nombre;

        if ($this->apellidos != null)
        {
            $nombrecompleto = $nombrecompleto . ' ' . $this->apellidos;
        }

        return $nombrecompleto;
    }

    /**
     * Set firmaimagen
     *
     * @return Usuario
     */
    public function setFirmaimagen($firmaimagen)
    {
        $this->firmaimagen = $firmaimagen;

        return $this;
    }

    /**
     * Get firma
     *
     */
    public function getFirmaimagen()
    {
        return $this->firmaimagen;
    }
}
