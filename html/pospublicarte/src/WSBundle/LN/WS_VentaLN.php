<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/20/17
 * Time: 12:26 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\Venta;
use AppBundle\Entity\VentaItem;
use AppBundle\Entity\VentaItemPaquete;
use AppBundle\Entity\Configuracion;
use AppBundle\Entity\VentaItemPaqueteProducto;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;
use AppBundle\Classes\Ambiente;

/**
 * UsuarioLN
 *
 */
class WS_VentaLN
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

        // 2. Deserializar venta
        $venta = new Venta();
        $venta->id=-1;

        $jsonVenta = json_decode($data);

        $idUsuarioCajero = $jsonVenta->IdUsuarioCajero;
        $idCotizacion = $jsonVenta->IdCotizacion;
        $idSucursal = $jsonVenta->IdSucursal;
        $idSeccion = $jsonVenta->IdSeccion;
        $idMesa = $jsonVenta->IdMesa;
        $subtotal = $jsonVenta->Subtotal;
        $iva = $jsonVenta->Iva;
        $total = $jsonVenta->Total;
        $propina = $jsonVenta->Propina;
        $idMoneda = $jsonVenta->IdMoneda;
        $idMedioPago = $jsonVenta->IdMedioPago;
        $digitos = $jsonVenta->Digitos;
        $ticket = $jsonVenta->Ticket;
        $ventaitems = $jsonVenta->VentaItems;
        $ventapaqueteitems = $jsonVenta->VentaPaqueteItems;
        $fecha = \DateTime::createFromFormat('d-m-Y H:i:s', $jsonVenta->Fecha);

        // 3. SUCURSAL - Validar que la sucursal correponda a  la empresa del usuario
        $usuario = $this->dbmanager->getRepository('AppBundle:Usuario')->findOneById($idUsuarioCajero);
        if ($usuario == null)
        {
            throw new GeneralException("El usuario que cobró no existe (" . strval($idUsuarioCajero) . ")", -1);
        }

        // 3. SUCURSAL - Validar que la sucursal correponda a  la empresa del usuario
        $sucursal = $this->dbmanager->getRepository('AppBundle:Sucursal')->findOneById($idSucursal);
        if ($sucursal == null)
        {
            throw new GeneralException("La sucursal no existe (" . strval($idSucursal) . ")", -1);
        }
        if ($usuario->getEmpresa()->getId() != $sucursal->getEmpresa()->getId())
        {
            throw new GeneralException("La sucursal no pertenece a la empresa (" . strval($idSucursal) . ")", -1);
        }

        // 4. SECCION
        if ($idSeccion != null) {
            $valida = false;
            $seccion = $this->dbmanager->getRepository('AppBundle:Seccion')->findOneById($idSeccion);
            if ($seccion == null) {
                throw new GeneralException("La seccion no existe (" . strval($idSeccion) . ")", -1);
            } else {
                // Verificr que pertenezc  l ucurl
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

        // 6. Mone
        $moneda = $this->dbmanager->getRepository('AppBundle:Moneda')->findOneByIdMoneda($idMoneda);
        if ($moneda == null)
        {
            throw new GeneralException("La moneda no existe (" . strval($idMoneda) . ")", -1);
        }

        // 7. Meio e pgo
        $medioPago = $this->dbmanager->getRepository('AppBundle:MedioPago')->findOneById($idMedioPago);
        if ($medioPago == null)
        {
            throw new GeneralException("El medio de pago no existe (" . strval($idMedioPago) . ")", -1);
        }

        // 8. Ticket
        if ($ticket==null) {
            throw new GeneralException("No se proporcionó el ticket", -1);
        }

        // 9. Productos
        $arrayproductos = array();
        $countProductos = count($ventaitems);
        if ($countProductos>0)
        {
            foreach ($ventaitems as $item) {

                $ventaItemNuevo = new VentaItem();

                $idProductoItem = $item->IdProducto;
                $descripcionItem = $item->Descripcion;
                $idMonedaItem = $item->IdMoneda;
                $cantidadItem = $item->Cantidad;
                $precioItem = $item->Precio;
                $totalItem = $item->Total;

                $productoItem = $this->dbmanager->getRepository('AppBundle:Producto')->findOneById($idProductoItem);

                // Proucto
                if ($productoItem == null)
                {
                    throw new GeneralException("No existe el producto (" . strval($idProductoItem) . ")", -1);
                }
                if ($productoItem->getEmpresa()->getId() != $usuario->getEmpresa()->getId())
                {
                    throw new GeneralException("El producto no pertenece a la empresa (" . strval($idProductoItem) . ")", -1);
                }

                // Mone
                $monedaitem = $this->dbmanager->getRepository('AppBundle:Moneda')->findOneByIdMoneda($idMonedaItem);
                if ($monedaitem == null)
                {
                    throw new GeneralException("La moneda no existe (" . strval($idMonedaItem) . ")", -1);
                }

                $ventaItemNuevo->setProducto($productoItem);
                $ventaItemNuevo->setDescripcion($descripcionItem);
                $ventaItemNuevo->setCantidad($cantidadItem);
                $ventaItemNuevo->setMoneda($monedaitem);
                $ventaItemNuevo->setPrecio($precioItem);
                $ventaItemNuevo->setTotal($totalItem);
                $ventaItemNuevo->setFecha($fecha);
                $ventaItemNuevo->setActivo(true);

                $venta->addItem($ventaItemNuevo);
            }
        }

        // 10. Paquetes
        $countPaquetes = count($ventapaqueteitems);
        $arrayPaquetes = array();
        if ($countPaquetes>0)
        {
            foreach ($ventapaqueteitems as $paqueteitem) {

                $ventaItemPaqueteNuevo = new VentaItemPaquete();

                $idCombinacion = $paqueteitem->IdCombinacion;
                $descripcionPaqueteItem = $paqueteitem->Descripcion;
                $idMonedaPaqueteItem = $paqueteitem->IdMoneda;
                $cantidadPaqueteItem = $paqueteitem->Cantidad;
                $precioPaqueteItem = $paqueteitem->Precio;
                $totaPaquetelItem = $paqueteitem->Total;

                $combinacion = $this->dbmanager->getRepository('AppBundle:Combinacion')->findOneById($idCombinacion);
                // Combincion
                if ($combinacion == null)
                {
                    throw new GeneralException("No existe la combinacion (" . strval($idCombinacion) . ")", -1);
                }
                if ($combinacion->getEmpresa()->getId() != $usuario->getEmpresa()->getId())
                {
                    throw new GeneralException("La combinacion no pertenece a la empresa (" . strval($idCombinacion) . ")", -1);
                }

                // Moneda
                $monedapaqueteitem = $this->dbmanager->getRepository('AppBundle:Moneda')->findOneByIdMoneda($idMonedaPaqueteItem);
                if ($monedapaqueteitem == null)
                {
                    throw new GeneralException("La moneda no existe (" . strval($idMonedaPaqueteItem) . ")", -1);
                }

                $ventaItemPaqueteNuevo->setCombinacion($combinacion);
                $ventaItemPaqueteNuevo->setDescripcion($descripcionPaqueteItem);
                $ventaItemPaqueteNuevo->setCantidad($cantidadPaqueteItem);
                $ventaItemPaqueteNuevo->setMoneda($monedapaqueteitem);
                $ventaItemPaqueteNuevo->setPrecio($precioPaqueteItem);
                $ventaItemPaqueteNuevo->setTotal($totaPaquetelItem);
                $ventaItemPaqueteNuevo->setFecha($fecha);
                $ventaItemPaqueteNuevo->setActivo(true);


                // LEER PROUCTOS E PQUETE -----------------------------------------------------------
                foreach ($paqueteitem->PaqueteProductos as $paqueteproducto) {

                    $ventaItemPaqueteProductoNuevo = new VentaItemPaqueteProducto();

                    $idProductoItem = $paqueteproducto->IdProducto;
                    $cantidadItem = $paqueteproducto->Cantidad;
                    $precioItem = $paqueteproducto->Precio;
                    $idMonedaItem = $paqueteproducto->IdMoneda;
                    $descripcionItem = $paqueteproducto->Descripcion;
                    $totalItem = $paqueteproducto->Total;

                    $productoItem = $this->dbmanager->getRepository('AppBundle:Producto')->findOneById($idProductoItem);

                    // Proucto
                    if ($productoItem == null)
                    {
                        throw new GeneralException("No existe el producto (" . strval($idProductoItem) . ")", -1);
                    }
                    if ($productoItem->getEmpresa()->getId() != $usuario->getEmpresa()->getId())
                    {
                        throw new GeneralException("El producto no pertenece a la empresa (" . strval($idProductoItem) . ")", -1);
                    }

                    // Mone
                    $monedaitem = $this->dbmanager->getRepository('AppBundle:Moneda')->findOneByIdMoneda($idMonedaItem);
                    if ($monedaitem == null)
                    {
                        throw new GeneralException("La moneda no existe (" . strval($idMonedaItem) . ")", -1);
                    }

                    $ventaItemPaqueteProductoNuevo->setProducto($productoItem);
                    $ventaItemPaqueteProductoNuevo->setDescripcion($descripcionItem);
                    $ventaItemPaqueteProductoNuevo->setCantidad($cantidadItem);
                    $ventaItemPaqueteProductoNuevo->setMoneda($monedaitem);
                    $ventaItemPaqueteProductoNuevo->setPrecio($precioItem);
                    $ventaItemPaqueteProductoNuevo->setTotal($totalItem);
                    $ventaItemPaqueteProductoNuevo->setFecha($fecha);
                    $ventaItemPaqueteProductoNuevo->setActivo(true);

                    $ventaItemPaqueteNuevo->addPaqueteproducto($ventaItemPaqueteProductoNuevo);
                }
                // ---------------------------------------------------------------------------------

                $venta->addItempaquete($ventaItemPaqueteNuevo);
            }
        }


        // 8. rmr Vent
        $venta->setUsuario($usuario);
        $venta->setEmpresa($usuario->getEmpresa());
        $venta->setSucursal($sucursal);
        $venta->setSeccion($seccion);
        if ($mesa!=null) {
            $venta->setMesa($mesa);
        }
        $venta->setSubtotal($subtotal);
        $venta->setIva($iva);
        $venta->setTotal($total);
        $venta->setPropina($propina);
        $venta->setTotal($total);
        $venta->setMoneda($moneda);
        $venta->setMedioPago($medioPago);
        $venta->setTicket($ticket);
        $venta->setCorteCaja(null);
        $venta->setActivo(true);
        $venta->setFacturada(false);
        $venta->setFecha($fecha);
        $venta->setFecharecepcion(new \DateTime());
        $venta->setIdcotizacion($idCotizacion);
        $venta->setDigitos($digitos);

        // 7. Guardar
        foreach ($venta->getItems() as $item) {
            $this->dbmanager->persist($item);
        }
        foreach ($venta->getItempaquetes() as $itempaquete) {

            foreach ($itempaquete->getPaqueteproductos() as $itempaqueteproducto) {
                $this->dbmanager->persist($itempaqueteproducto);
            }

            $this->dbmanager->persist($itempaquete);
        }

        $this->dbmanager->persist($venta);
        $this->dbmanager->flush($venta);

        return $venta;
    }

}