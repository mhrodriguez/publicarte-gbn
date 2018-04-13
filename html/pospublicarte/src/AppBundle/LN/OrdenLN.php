<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 1/5/18
 * Time: 12:56 p.m.
 */

namespace AppBundle\LN;


class OrdenLN
{
    private $dbmanager;

    /**
     * Constructor
     */
    public function __construct($dbmanager)
    {
        $this->dbmanager = $dbmanager;
    }

    public function obtenerEstadosSinTerminar()
    {
        $estados = array();

        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(1));
        //array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(2));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(3));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(4));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(5));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(6));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(7));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(8));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(9));

        return $estados;
    }

    public function obtenerEstadosSinTerminar2()
    {
        $estados = array();

        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(1));
        //array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(2));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(3));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(4));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(5));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(6));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(7));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(8));

        return $estados;
    }

    public function obtenerEstadosTerminados()
    {
        $estados = array();

        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(10));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(11));

        return $estados;
    }

    public function obtenerEstadosTerminadosParaEdicion()
    {
        $estados = array();

        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(8));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(10));
        array_push($estados, $this->dbmanager->getRepository('AppBundle:OrdenEstado')->findOneById(11));

        return $estados;
    }

    public function obtenerSinTerminar()
    {
        $fecha = new \DateTime();
        $fecha->setTime(0, 0);

        $ordenes = $this->dbmanager->getRepository('AppBundle:Orden')->obtenerSinTerminarDesde($fecha);

        $ordenes2 = $this->dbmanager->getRepository('AppBundle:Orden')->obtenerSinTerminarAnterioresA($fecha);

        $ordenes = array_merge($ordenes, $ordenes2);

        return $ordenes;
    }

    public function obtenerFacturadasTerminadas()
    {
        return $this->dbmanager->getRepository('AppBundle:Orden')->obtenerFacturadasTerminadas();
    }

    public function obtenerFacturadasEspeciales()
    {
        return $this->dbmanager->getRepository('AppBundle:Orden')->obtenerFacturadasEspeciales();
    }
}