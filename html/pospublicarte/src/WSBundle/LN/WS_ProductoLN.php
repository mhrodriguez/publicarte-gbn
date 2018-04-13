<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/25/17
 * Time: 12:34 a.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Producto;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;

use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * UsuarioLN
 *
 */
class WS_ProductoLN
{
    private $dbmanager;
    private $usuarioLN;

    /**
     * Constructor
     */
    public function __construct($dbmanager)
    {
        $this->dbmanager = $dbmanager;

        $this->usuarioLN = new WS_UsuarioLN($this->dbmanager, null);
    }

    public function listado($token)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Obtener productos de la empresa del usuario
        $productos = $this->dbmanager->getRepository('AppBundle:Producto')->findBy(
            array('empresa'=>$usuario->getEmpresa(), 'activo'=>true, 'independiente'=>true),
            array('categoria'=>'ASC', 'subcategoria'=>'ASC')
        );

        return $productos;
    }

    public function listadocompleto($token)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Obtener productos de la empresa del usuario
        $productos = $this->dbmanager->getRepository('AppBundle:Producto')->findBy(
            array('empresa'=>$usuario->getEmpresa(), 'activo'=>true),
            array('categoria'=>'ASC', 'subcategoria'=>'ASC')
        );

        return $productos;
    }

    public function listadoporcategoria($token, $idCategoria, $idSubcategoria)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        $filtros = array('empresa'=>$usuario->getEmpresa(), 'activo'=>true);

        if ($idSubcategoria != null)
        {
            $filtros['subcategoria'] = $this->dbmanager->getRepository('AppBundle:Subcategoria')->findOneById($idSubcategoria);
        }
        else if ($idCategoria != null)
        {
            $filtros['categoria'] = $this->dbmanager->getRepository('AppBundle:Categoria')->findOneById($idCategoria);
        }
        else
        {
           throw new GeneralException("No se especifico una categoria o subcatgeoria");
        }

        // 2. Obtener productos de la empresa del usuario y de la categoria correspondiente
        $productos = $this->dbmanager->getRepository('AppBundle:Producto')->findBy($filtros);

        return $productos;
    }

}