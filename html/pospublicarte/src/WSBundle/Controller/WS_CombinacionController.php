<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/26/17
 * Time: 10:55 p.m.
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

use WSBundle\LN\WS_CombinacionLN;

use AppBundle\Entity\Combinacion;

/**
 * Combinacion controller.
 *
 * @Route("/ws/combinacion")
 */
class WS_CombinacionController extends Controller
{
    /**
     * Creates a new Usuario entity.
     *
     * @Route("/listado.{_format}", name="wscombinacion_listado", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function listadoAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $combinacionLN = new WS_CombinacionLN($em);

        try {
            $combinacion = $combinacionLN->listado($token);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($combinacion, 'json', array('groups' => array('sync')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }
}