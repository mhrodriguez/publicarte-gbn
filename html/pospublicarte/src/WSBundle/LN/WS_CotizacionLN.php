<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/20/17
 * Time: 12:26 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Cotizacion;
use AppBundle\Entity\CotizacionItem;
use AppBundle\Entity\CotizacionItemPaquete;
use AppBundle\Entity\Configuracion;
use AppBundle\Entity\CotizacionItemPaqueteProducto;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;
use AppBundle\Classes\Ambiente;

/**
 * WS_CotizacionLN
 *
 */
class WS_CotizacionLN
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

    public function nueva($token, $data)
    {
        date_default_timezone_set('America/Monterrey');

        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Deserializar cotizacion
        $cotizacion = new Cotizacion();

        $jsonCotizacion = json_decode($data);

        $idUsuario = $jsonCotizacion->IdUsuario;
        $idSucursal = $jsonCotizacion->IdSucursal;
        $idSeccion = $jsonCotizacion->IdSeccion;
        $idMesa = $jsonCotizacion->IdMesa;
        $idEstado = $jsonCotizacion->IdEstado;
        $motivoCancelacion = $jsonCotizacion->MotivoCancelacion;
        $cotizacionitems = $jsonCotizacion->CotizacionItemProductoes;
        $cotizacionpaqueteitems = $jsonCotizacion->CotizacionItemPaquetes;
        $fecha = \DateTime::createFromFormat('d-m-Y H:i:s', $jsonCotizacion->FechaStr);

        // 3. USUARIO - Validar el usuario
        $usuario = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneById($idUsuario);
        if ($usuario == null)
        {
            throw new GeneralException("El usuario que creo la orden no existe (" . strval($idUsuario) . ")", -1);
        }

        // 3. ESTADO - Validar el estado
        $cotizacionEstado = $this->dbmanager->getRepository('AppBundle:CotizacionEstado')->findOneById($idEstado);
        if ($cotizacionEstado == null)
        {
            throw new GeneralException("El estado no existe (" . strval($idEstado) . ")", -1);
        }

        // 4. SUCURSAL - Validar que la sucursal correponda a  la empresa del usuario
        $sucursal = $this->dbmanager->getRepository('AppBundle:Sucursal')->findOneById($idSucursal);
        if ($sucursal == null)
        {
            throw new GeneralException("La sucursal no existe (" . strval($idSucursal) . ")", -1);
        }
        if ($usuario->getEmpresa()->getId() != $sucursal->getEmpresa()->getId())
        {
            throw new GeneralException("La sucursal no pertenece a la empresa (" . strval($idSucursal) . ")", -1);
        }

        // 5. SECCION
        if ($idSeccion != null) {
            $valida = false;
            $seccion = $this->dbmanager->getRepository('AppBundle:Seccion')->findOneById($idSeccion);
            if ($seccion == null) {
                throw new GeneralException("La seccion no existe (" . strval($idSeccion) . ")", -1);
            } else {
                // Verificar que pertenezca a la sucursal
                foreach ($sucursal->getSecciones() as $seccion) {
                    if ($seccion->getId() == $idSeccion) {
                        $valida = true;
                        break;
                    }
                }
            }
            if (!$valida) {
                throw new GeneralException("La seccion (" . strval($idSeccion) . ") no pertenece a la sucursal", -1);
            }
        }

        // 5. MESA
        if ($idMesa != null)
        {
            $valida = false;

            $mesa = $this->dbmanager->getRepository('AppBundle:Mesa')->findOneById($idMesa);
            if ($mesa == null)
            {
                throw new GeneralException("La mesa no existe (" . strval($idMesa) . ")", -1);
            }
            else
            {
                // Verificar que pertenezca a la seccion
                foreach ($seccion->getMesas() as $mesa)
                {
                    if ($mesa->getId() == $idMesa)
                    {
                        $valida=true;
                        break;
                    }
                }
            }
            if (!$valida)
            {
                throw new GeneralException("La mesa (" . strval($idMesa) . ") no pertenece a la seccion", -1);
            }
        }

        // 9. Productos
        $countProductos = count($cotizacionitems);
        if ($countProductos>0)
        {
            foreach ($cotizacionitems as $item) {

                $cotizacionItemNuevo = new CotizacionItem();

                $idProductoItem = $item->IdProducto;
                $cantidadItem = $item->Cantidad;

                $productoItem = $this->dbmanager->getRepository('AppBundle:Producto')->findOneById($idProductoItem);

                // Producto
                if ($productoItem == null)
                {
                    throw new GeneralException("No existe el producto (" . strval($idProductoItem) . ")", -1);
                }
                if ($productoItem->getEmpresa()->getId() != $usuario->getEmpresa()->getId())
                {
                    throw new GeneralException("El producto no pertenece a la empresa (" . strval($idProductoItem) . ")", -1);
                }

                $cotizacionItemNuevo->setProducto($productoItem);
                $cotizacionItemNuevo->setCantidad($cantidadItem);
                $cotizacionItemNuevo->setFecha($fecha);
                $cotizacionItemNuevo->setActivo(true);

                $cotizacion->addItem($cotizacionItemNuevo);
            }
        }

        // 10. Paquetes
        $countPaquetes = count($cotizacionpaqueteitems);
        if ($countPaquetes>0)
        {
            foreach ($cotizacionpaqueteitems as $paqueteitem) {

                $cotizacionItemPaqueteNuevo = new CotizacionItemPaquete();

                $idCombinacion = $paqueteitem->IdCombinacion;
                $cantidadPaqueteItem = $paqueteitem->Cantidad;

                $combinacion = $this->dbmanager->getRepository('AppBundle:Combinacion')->findOneById($idCombinacion);
                // Combinacion
                if ($combinacion == null)
                {
                    throw new GeneralException("No existe la combinacion (" . strval($idCombinacion) . ")", -1);
                }
                if ($combinacion->getEmpresa()->getId() != $usuario->getEmpresa()->getId())
                {
                    throw new GeneralException("La combinacion no pertenece a la empresa (" . strval($idCombinacion) . ")", -1);
                }

                $cotizacionItemPaqueteNuevo->setCombinacion($combinacion);
                $cotizacionItemPaqueteNuevo->setCantidad($cantidadPaqueteItem);
                $cotizacionItemPaqueteNuevo->setFecha($fecha);
                $cotizacionItemPaqueteNuevo->setActivo(true);

                // LEER PROUCTOS E PQUETE -----------------------------------------------------------
                foreach ($paqueteitem->PaqueteProductoes as $paqueteproducto) {

                    $cotizacionItemPaqueteProductoNuevo = new CotizacionItemPaqueteProducto();

                    $idProductoItem = $paqueteproducto->IdProducto;
                    $cantidadItem = $paqueteproducto->Cantidad;

                    $productoItem = $this->dbmanager->getRepository('AppBundle:Producto')->findOneById($idProductoItem);

                    // Producto
                    if ($productoItem == null)
                    {
                        throw new GeneralException("No existe el producto (" . strval($idProductoItem) . ")", -1);
                    }
                    if ($productoItem->getEmpresa()->getId() != $usuario->getEmpresa()->getId())
                    {
                        throw new GeneralException("El producto no pertenece a la empresa (" . strval($idProductoItem) . ")", -1);
                    }

                    $cotizacionItemPaqueteProductoNuevo->setProducto($productoItem);
                    $cotizacionItemPaqueteProductoNuevo->setCantidad($cantidadItem);
                    $cotizacionItemPaqueteProductoNuevo->setFecha($fecha);
                    $cotizacionItemPaqueteProductoNuevo->setActivo(true);

                    $cotizacionItemPaqueteNuevo->addPaqueteproducto($cotizacionItemPaqueteProductoNuevo);
                }
                // ---------------------------------------------------------------------------------

                $cotizacion->addItempaquete($cotizacionItemPaqueteNuevo);
            }
        }

        // 8. Armar Cotizacion
        $cotizacion->setUsuario($usuario);
        $cotizacion->setEmpresa($usuario->getEmpresa());
        $cotizacion->setSucursal($sucursal);
        $cotizacion->setSeccion($seccion);
        if ($mesa!=null) {
            $cotizacion->setMesa($mesa);
        }
        $cotizacion->setEstado($cotizacionEstado);
        $cotizacion->setMotivocancelacion($motivoCancelacion);
        $cotizacion->setActivo(true);
        $cotizacion->setFecha($fecha);
        $cotizacion->setFecharecepcion(new \DateTime());

        // 7. Guardar
        foreach ($cotizacion->getItems() as $item) {
            $this->dbmanager->persist($item);
        }
        foreach ($cotizacion->getItempaquetes() as $itempaquete) {

            foreach ($itempaquete->getPaqueteproductos() as $itempaqueteproducto) {
                $this->dbmanager->persist($itempaqueteproducto);
            }

            $this->dbmanager->persist($itempaquete);
        }

        $this->dbmanager->persist($cotizacion);
        $this->dbmanager->flush($cotizacion);

        return $cotizacion;
    }


    public function listadoCanceladas($token)
    {

        date_default_timezone_set('America/Monterrey');

        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);


    }

}