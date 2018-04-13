<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/20/17
 * Time: 11:50 a.m.
 */

namespace WSBundle\Controller;

use AppBundle\Classes\Exception\GeneralException;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

use Symfony\Component\Serializer\Mapping\Factory\ClassMetadataFactory;
use Doctrine\Common\Annotations\AnnotationReader;
use Symfony\Component\Serializer\Mapping\Loader\AnnotationLoader;
use Symfony\Component\Serializer\Normalizer\GetSetMethodNormalizer;

use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;

use Symfony\Component\Serializer\Normalizer\PropertyNormalizer;
use Symfony\Component\Serializer\Normalizer\ArrayDenormalizer;

use WSBundle\LN\WS_CorteCajaLN;

use AppBundle\Entity\Venta;

/**
 * Venta controller.
 *
 * @Route("/ws/cortecaja")
 */
class WS_CorteCajaController extends Controller
{
    /**
     * Creates a new Usuario entity.
     *
     * @Route("/info.{_format}", name="wscortecaja_info", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function infoAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');
        $idSucursal = $request->query->get('idSucursal');

        $corteCajaLN = new WS_CorteCajaLN($em);

        try {
            $cortecaja = $corteCajaLN->info($token, $idSucursal);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($cortecaja, 'json', array('groups' => array('sync')));

            return new Response($jsonContent);

        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }
    }

    /**
     * Creates a new Usuario entity.
     *
     * @Route("/cerrarcaja.{_format}", name="wscortecaja_cerrarcaja", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function cerrarCaja(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');
        $idSucursal = $request->query->get('idSucursal');
        $remanente = $request->query->get('remanente');
        $efectivoreportado = $request->query->get('efectivoreportado');
        $tarjetacreditoreportado = $request->query->get('tarjetacreditoreportado');

        $corteCajaLN = new WS_CorteCajaLN($em);

        try {
            $cortecaja = $corteCajaLN->cerrarCaja($token, $idSucursal, $efectivoreportado, $tarjetacreditoreportado, $remanente);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($cortecaja, 'json', array('groups' => array('sync')));

            return new Response($jsonContent);

        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }
    }


    /**
     * Get CorteCj entity.
     *
     * @Route("/obtener.{_format}", name="wscortecaja_obtener", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function obtenerAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');
        $idCorteCaja = $request->query->get('idCorteCaja');

        $corteCajaLN = new WS_CorteCajaLN($em);

        try {
            $info = $corteCajaLN->obtener($token, $idCorteCaja);

            $callback = function ($dateTime) {
                return $dateTime instanceof \DateTime
                    ? $dateTime->format("d-m-Y H:i:s")
                    : '';
            };

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());

            $normalizer = new ObjectNormalizer($classMetadataFactory);
            $normalizer->setCallbacks(array('fecha' => $callback));
            $normalizers = array($normalizer);

            $serializer = new Serializer($normalizers, $encoders);

            $jsonCorteCaja = $serializer->serialize($info["cortecaja"], 'json', array('groups' => array('sync')));
            $jsonVentas = $serializer->serialize($info["ventas"], 'json', array('groups' => array('synccortecaja')));

            $jsonCorteCaja = str_replace('"', '\"', $jsonCorteCaja);
            $jsonVentas = str_replace('"', '\"', $jsonVentas);

            return new Response('{"resultado": true, "cortecaja":"' . $jsonCorteCaja . '", "ventas":"' . $jsonVentas . '", "descripcionError": "" }');
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }
    }
}