<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 1/10/17
 * Time: 6:02 PM
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\DependencyInjection\Reference;

use AppBundle\Classes\Exception\ImagenException;

use Symfony\Component\Serializer\Annotation as Srz;

/**
 * @ORM\Table(name="imagen")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ImagenRepository")
 */
class Imagen
{
    private $domainRootName;
    private $directorio;

    /**
     * Constructor
     */
    public function __construct($domainRootName, $directorio)
    {
        $this->domainRootName = $domainRootName;
        $this->directorio = $directorio;
    }

    public function configura($domainRootName, $directorio)
    {
        $this->domainRootName = $domainRootName;
        $this->directorio = $directorio;
    }

    /**
     * @ORM\Id
     * @ORM\Column(name="id", type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Srz\Groups({"sync"})
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     * @Srz\Groups({"sync"})
     */
    protected $titulo;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Srz\Groups({"sync"})
     */
    protected $descripcion;

    /**
     * @ORM\Column(type="string", length=500)
     */
    protected $path;

    /**
     * @ORM\Column(type="string", length=100)
     * @Srz\Groups({"sync"})
     */
    protected $nombrearchivo;

    /**
     * @ORM\Column(name="activo", type="boolean", options={"default" = 1})
     */
    protected $activo;

    /**
     * Get idImagen
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Imagen
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Set url
     *
     * @param string $path
     * @return Imagen
     */
    public function setPath($path)
    {
        $this->path = $path;

        return $this;
    }

    /**
     * Get url
     *
     * @return string
     */
    public function getPath()
    {
        return $this->path;
    }

    /**
     * Set titulo
     *
     * @param string $titulo
     * @return Imagen
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;

        return $this;
    }

    /**
     * Get titulo
     *
     * @return string
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * Set nombre
     *
     * @param string $nombrearchivo
     * @return nombre
     */
    public function setNombrearchivo($nombrearchivo)
    {
        $this->nombrearchivo = $nombrearchivo;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombrearchivo()
    {
        return $this->nombrearchivo;
    }

    /**
     * Set activo
     *
     * @param boolean $activo
     * @return Imagen
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


    // MANEJO DE ARCHIVOS ------------------------------------------

    /**
     */
    private $file;

    /**
     * Sets file.
     *
     * @param UploadedFile $file
     */
    public function setFile($file = null)
    {
        $this->file = $file;
    }

    /**
     * Get file.
     *
     * @return UploadedFile
     */
    public function getFile()
    {
        return $this->file;
    }

    protected function getAbsolutePath()
    {
        // get rid of the __DIR__ so it doesn't screw up
        // when displaying uploaded doc/image in the view.
        return realpath($this->getUploadDir()) . '/' . $this->nombrearchivo;
    }

    protected function getUploadDir()
    {
        // get rid of the __DIR__ so it doesn't screw up
        // when displaying uploaded doc/image in the view.
        return __DIR__.'/../../../repositorio/imagenes/'.$this->directorio;
    }

    public function uploadme()
    {
        $this->upload($this->file);
    }

    public function upload($uploadedfile)
    {
        // the file property can be empty if the field is not required
        if (null === $uploadedfile) {
            return;
        }

        // use the original file name here but you should
        // sanitize it at least to avoid any security issues
        $nombreOriginal = pathinfo($uploadedfile->getClientOriginalName());
        $this->nombrearchivo = md5(uniqid()) . '.' . $nombreOriginal['extension'];

        // move takes the target directory and then the
        // target filename to move to
        $uploadedfile->move(
            $this->getUploadDir(),
            $this->nombrearchivo
        );

        $this->path = $this->getAbsolutePath();
        $this->activo = true;

        // clean up the file property as you won't need it anymore
        $uploadedfile = null;
    }

    public function inicializarImagenDeRequest($archivoimagen)
    {
        // Undefined | Multiple Files | $_FILES Corruption Attack
        // If this request falls under any of them, treat it invalid.
        if (
            !isset($_FILES[$archivoimagen]['error']) ||
            is_array($_FILES[$archivoimagen]['error'])
        ) {
            throw new ImagenException('Invalid parameters.');
        }

        // Check $_FILES['upfile']['error'] value.
        switch ($_FILES[$archivoimagen]['error']) {
            case UPLOAD_ERR_OK:
                break;
            case UPLOAD_ERR_NO_FILE:
                throw new ImagenException('No file sent.');
            case UPLOAD_ERR_INI_SIZE:
            case UPLOAD_ERR_FORM_SIZE:
                throw new ImagenException('Exceeded filesize limit.');
            default:
                throw new ImagenException('Unknown errors.');
        }

        // You should also check filesize here.
        if ($_FILES[$archivoimagen]['size'] > 10000000) {
            throw new ImagenException('Exceeded filesize limit: ' . str($_FILES[$archivoimagen]['size']) );
        }

        // DO NOT TRUST $_FILES['upfile']['mime'] VALUE !!
        // Check MIME Type by yourself.
        /*$finfo = new finfo(FILEINFO_MIME_TYPE);
        if (false === $ext = array_search(
                $finfo->file($_FILES['articuloimagen']['tmp_name']),
                array(
                    'jpg' => 'image/jpeg',
                    'png' => 'image/png',
                    'gif' => 'image/gif',
                ),
                true
            )) {
            throw new ImagenException('Invalid file format.');
        }*/

        // 1. Nombre del archivo
        $nombrearchivo = md5(uniqid()) . "." . end(explode(".", $_FILES[$archivoimagen]['name']));

        // You should name it uniquely.
        // DO NOT USE $_FILES['upfile']['name'] WITHOUT ANY VALIDATION !!
        // On this example, obtain safe unique name from its binary data.
        if (!move_uploaded_file(
            $_FILES[$archivoimagen]['tmp_name'],
            $this->getUploadRootDir() . '/' . $nombrearchivo
        )) {
            throw new ImagenException('Failed to move uploaded file.');
        }

        // 2. Guardar Imagen en BD
        $this->titulo = "Título";
        $this->nombrearchivo = $nombrearchivo;
        $this->path = realpath($this->getUploadDir());
        $this->activo = true;

        return $this;
    }

    public function borrarDeDisco()
    {
        // Borrar documento fisico
        if(file_exists($this->path)) unlink($this->path);
    }

}
