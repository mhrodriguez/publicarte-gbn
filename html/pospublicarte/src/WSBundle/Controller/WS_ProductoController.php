<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/25/17
 * Time: 12:34 a.m.
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

use WSBundle\LN\WS_ProductoLN;

use AppBundle\Entity\Producto;

/**
 * Producto controller.
 *
 * @Route("/ws/producto")
 */
class WS_ProductoController extends Controller
{
    /**
     *
     * @Route("/listado.{_format}", name="wsproducto_listado", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function listadoAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $productoLN = new WS_ProductoLN($em);

        try {
            $producto = $productoLN->listado($token);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($producto, 'json', array('groups' => array('sync')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }

    /**
     *
     * @Route("/listadocompleto.{_format}", name="wsproducto_listadocompleto", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function listadocompletoAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $productoLN = new WS_ProductoLN($em);

        try {
            $producto = $productoLN->listadocompleto($token);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($producto, 'json', array('groups' => array('sync')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }

    /**
     *
     * @Route("/listadoporcategoria.{_format}", name="wsproducto_listadocategoria", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function listadoporcategoriaAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');
        $idCategoria = $request->query->get('idCategoria');
        $idSubcategoria = $request->query->get('idSubcategoria');

        $productoLN = new WS_ProductoLN($em);

        try {
            $producto = $productoLN->listadoporcategoria($token, $idCategoria, $idSubcategoria);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($producto, 'json', array('groups' => array('sync')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }

}