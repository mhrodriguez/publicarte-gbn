<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/22/17
 * Time: 6:00 p.m.
 */

namespace WSBundle\LN;

use AppBundle\Entity\CorteCaja;
use Doctrine\ORM\EntityRepository;

use AppBundle\LN\UsuarioLN;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ErrorCodigo;

/**
 * WS_CorteCajaLN
 *
 */
class WS_CorteCajaLN
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

    public function obtener($token, $idCorteCaja)
    {
        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        // 2. Obtener Corte e Caja
        $corteCaja = $this->dbmanager->getRepository('AppBundle:CorteCaja')->findOneById($idCorteCaja);

        $corteCaja->resultado = true;
        $corteCaja->fechainiciostr = $corteCaja->getFechaInicio()->format('d-m-Y H:i:s');
        $corteCaja->fechafinstr = $corteCaja->getFechaFin()->format('d-m-Y H:i:s');

        $info["cortecaja"] = $corteCaja;

        // 3. Obtener ventas
        $ventas = $this->dbmanager->getRepository('AppBundle:Venta')->findBy(array('cortecaja' => $corteCaja));

        $info["ventas"] = $ventas;

        return $info;
    }

    public function info($token, $idSucursal)
    {
        $corteCaja = new CorteCaja();
        $corteCaja->id = -1;
        $corteCaja->setRemanente(0);
        $corteCaja->setTotalefectivoreportado(0);
        $corteCaja->setTotaltarjetacreditoreportado(0);

        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        $valido=false;
        foreach ($usuario->getSucursales() as $sucursal)
        {
            if ($sucursal->getId() == $idSucursal)
            {
                $sucursal2 = $sucursal;
                $valido=true;
                break;
            }
        }
        if (!$valido)
        {
            throw new GeneralException("El usuario no corresponde  a la sucursal proporcionada (" . strval($idSucursal) . ")", -1);
        }

        $ventas = $this->ventasParaCorte($usuario->getEmpresa(), $sucursal2, $usuario);

        if (count($ventas)==0)
        {
            throw new GeneralException("El usuario no tiene ventas reportadas para hacer cierre de caja", -1);
        }

        $totalefectivo=0;
        $totaltarjetacredito=0;
        $numventasefectivo=0;
        $numventastarjetacredito=0;
        $propinasefectivo = 0;
        $propinastarjetacredito = 0;

        foreach ($ventas as $venta)
        {
            if ($venta->getMedioPago()->getId() == 1) {
                $totalefectivo = $totalefectivo + $venta->getTotal();
                $numventasefectivo++;

                $propinasefectivo = $propinasefectivo + $venta->getPropina();
            } else if ($venta->getMedioPago()->getId() == 2 || $venta->getMedioPago()->getId() == 3) {
                $totaltarjetacredito = $totaltarjetacredito + $venta->getTotal();
                $numventastarjetacredito++;

                $propinastarjetacredito = $propinastarjetacredito + $venta->getPropina();
            }
        }

        $corteCaja->setTotalefectivo($totalefectivo);
        $corteCaja->setTotaltarjetacredito($totaltarjetacredito);
        $corteCaja->setNumventasefectivo($numventasefectivo);
        $corteCaja->setNumventastarjetacredito($numventastarjetacredito);
        $corteCaja->setPropinasefectivo($propinasefectivo);
        $corteCaja->setPropinastarjetacredito($propinastarjetacredito);
        $corteCaja->fechainiciostr = $ventas[0]->getFecha()->format('d-m-Y H:i:s');
        $corteCaja->fechafinstr = $ventas[count($ventas)-1]->getFecha()->format('d-m-Y H:i:s');
        $corteCaja->resultado=true;

        return $corteCaja;
    }

    public function cerrarCaja($token, $idSucursal, $efectivoreportado, $tarjetacreditoreportado, $remanente)
    {
        date_default_timezone_set('America/Monterrey');

        $corteCaja = new CorteCaja();

        if ($efectivoreportado == null)
        {
            throw new GeneralException("Se debe reportar el monto en efectivo");
        }

        if ($tarjetacreditoreportado == null)
        {
            throw new GeneralException("Se debe reportar el monto cobrado en tarjeta de credito");
        }

        if ($remanente == null)
        {
            throw new GeneralException("Se debe reportar el monto remanente en la caja");
        }

        // 1. Validar usuario
        $usuario = $this->usuarioLN->obtenerUsuarioDeToken($token);

        $valido=false;
        foreach ($usuario->getSucursales() as $sucursal)
        {
            if ($sucursal->getId() == $idSucursal)
            {
                $sucursal2 = $sucursal;
                $valido=true;
                break;
            }
        }
        if (!$valido)
        {
            throw new GeneralException("El usuario no corresponde  a la sucursal proporcionada (" . strval($idSucursal) . ")", -1);
        }

        $ventas = $this->ventasParaCorte($usuario->getEmpresa(), $sucursal2, $usuario);

        if (count($ventas)==0)
        {
            throw new GeneralException("El usuario no tiene ventas reportadas para hacer cierre de caja", -1);
        }

        $totalefectivo=0;
        $totaltarjetacredito=0;
        $numventasefectivo=0;
        $numventastarjetacredito=0;
        $propinasefectivo = 0;
        $propinastarjetacredito = 0;

        foreach ($ventas as $venta)
        {
            if ($venta->getMedioPago()->getId() == 1) {
                $totalefectivo = $totalefectivo + $venta->getTotal();
                $numventasefectivo++;

                $propinasefectivo = $propinasefectivo + $venta->getPropina();
            } else if ($venta->getMedioPago()->getId() == 2 || $venta->getMedioPago()->getId() == 3) {
                $totaltarjetacredito = $totaltarjetacredito + $venta->getTotal();
                $numventastarjetacredito++;

                $propinastarjetacredito = $propinastarjetacredito + $venta->getPropina();
            }
        }

        $corteCaja->setTotalefectivo($totalefectivo);
        $corteCaja->setTotaltarjetacredito($totaltarjetacredito);
        $corteCaja->setNumventasefectivo($numventasefectivo);
        $corteCaja->setNumventastarjetacredito($numventastarjetacredito);
        $corteCaja->fechainiciostr = $ventas[0]->getFecha()->format('d-m-Y H:i:s');
        $corteCaja->fechafinstr = $ventas[count($ventas)-1]->getFecha()->format('d-m-Y H:i:s');
        $corteCaja->setFechainicio($ventas[0]->getFecha());
        $corteCaja->setFechafin($ventas[count($ventas)-1]->getFecha());
        $corteCaja->setFecha(new \DateTime());
        $corteCaja->setTotalefectivoreportado($efectivoreportado);
        $corteCaja->setTotaltarjetacreditoreportado($tarjetacreditoreportado);
        $corteCaja->setRemanente($remanente);
        $corteCaja->setActivo(true);
        $corteCaja->setEmpresa($usuario->getEmpresa());
        $corteCaja->setSucursal($sucursal2);
        $corteCaja->setUsuario($usuario);
        $corteCaja->setPropinasefectivo($propinasefectivo);
        $corteCaja->setPropinastarjetacredito($propinastarjetacredito);

        $corteCaja->setMoneda($this->dbmanager->getRepository('AppBundle:Moneda')->findOneByIdMoneda(1));

        $this->dbmanager->persist($corteCaja);

        foreach ($ventas as $venta)
        {
            $venta->setCortecaja($corteCaja);
            $this->dbmanager->persist($venta);
        }

        $this->dbmanager->flush();

        $corteCaja->resultado=true;

        return $corteCaja;
    }

    private function ventasParaCorte($empresa, $sucursal, $usuario)
    {
        return $this->dbmanager->getRepository('AppBundle:Venta')->findBy(array('empresa'=>$empresa, 'sucursal'=>$sucursal, 'usuario'=>$usuario, 'cortecaja'=>null), array('fecha'=>'ASC'));
    }

}