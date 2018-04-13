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

use WSBundle\LN\WS_CotizacionLN;

use AppBundle\Entity\Cotizacion;

/**
 * Cotizacion controller.
 *
 * @Route("/ws/cotizacion")
 */
class WS_CotizacionController extends Controller
{
    /**
     * Creates a new Usuario entity.
     *
     * @Route("/nueva.{_format}", name="wscotizacion_nueva", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     * @Method("POST")
     */
    public function nuevaAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->request->get('token');
        $data = $request->request->get('data');

        $cotizacionLN = new WS_CotizacionLN($em);

        try {
            $cotizacion = $cotizacionLN->nueva($token, $data);
            //$cotizacion = new Cotizacion();
            //$cotizacion->id=100;

            //echo $token;
            //echo $data;
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response('{"resultado": true, "idCotizacion": ' . $cotizacion->getId() .' }');
    }

    /**
     * Get Cotizacion entity.
     *
     * @Route("/listadocanceladas.{_format}", name="wscotizacion_listadocanceladas", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function listadocanceladasAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $cotizacionLN = new WS_CotizacionLN($em);

        try {
            $cotizaciones = $cotizacionLN->listadoCanceladas($token);

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

            $jsonCotizaciones = $serializer->serialize($cotizaciones, 'json', array('groups' => array('sync')));

            return new Response($jsonCotizaciones);
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }
    }

}