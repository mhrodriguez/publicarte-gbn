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

use WSBundle\LN\WS_VentaLN;

use AppBundle\Entity\Venta;

/**
 * Venta controller.
 *
 * @Route("/ws/venta")
 */
class WS_VentaController extends Controller
{
    /**
     * Creates a new Venta entity.
     *
     * @Route("/nueva.{_format}", name="wsventa_nueva", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function nuevaAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');
        $data = $request->query->get('data');

        $ventaLN = new WS_VentaLN($em);

        try {
            $venta = $ventaLN->nueva($token, $data);


        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response('{"resultado": true, "idVenta": ' . $venta->getId() .' }');
    }

    /**
     * Creates a new Venta entity.
     *
     * @Route("/nueva2.{_format}", name="wsventa_nueva2", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     * @Method("POST")
     */
    public function nueva2Action(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->request->get('token');
        $data = $request->request->get('data');

        $ventaLN = new WS_VentaLN($em);

        try {
            $venta = $ventaLN->nueva($token, $data);


        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response('{"resultado": true, "idVenta": ' . $venta->getId() .' }');
    }

}