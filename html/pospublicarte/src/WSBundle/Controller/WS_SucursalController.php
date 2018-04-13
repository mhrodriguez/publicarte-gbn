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

use WSBundle\LN\WS_SucursalLN;

use AppBundle\Entity\Sucursal;

/**
 * Sucursal controller.
 *
 * @Route("/ws/sucursal")
 */
class WS_SucursalController extends Controller
{
    /**
     * Creates a new Usuario entity.
     *
     * @Route("/obtener.{_format}/{id}", name="wssucursal_obtener", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function obtenerAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $sucursalLN = new WS_SucursalLN($em, null);

        try {
            $sucursal = $sucursalLN->obtener($token, $id);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($sucursal, 'json', array('groups' => array('syncsucursal')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }

    /**
     * Creates a new Usuario entity.
     *
     * @Route("/dataultimaversion.{_format}", name="wssucursal_dataultimaversion", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function dataultimaversionAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $sucursalLN = new WS_SucursalLN($em, null);

        try {
            $version = $sucursalLN->dataUltimaVersion($token);

            return new Response('{"resultado": true, "version": ' . $version . ' }');
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }
    }

    /**
     * Obtiene ucurl e Token e ucrul
     *
     * @Route("/obtenerdetoken.{_format}/{id}", name="wssucursal_obtenerdetoken", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    /*public function obtenerdetokenAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $sucursalLN = new WS_SucursalLN($em, null);

        try {
            $sucursal = $sucursalLN->obtenerdetoken($token, $id);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($sucursal, 'json', array('groups' => array('syncsucursal')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }*/
}