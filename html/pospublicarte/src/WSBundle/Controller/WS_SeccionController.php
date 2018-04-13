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

use WSBundle\LN\WS_SeccionLN;

use AppBundle\Entity\Seccion;

/**
 * Seccion controller.
 *
 * @Route("/ws/seccion")
 */
class WS_SeccionController extends Controller
{
    /**
     * Creates a new Seccion entity.
     *
     * @Route("/sincronizar.{_format}", name="wsseccion_syncronizar", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function sincronizarAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');
        $version = $request->query->get('version');

        $seccionLN = new WS_SeccionLN($em, null);

        try {
            $secciones = $seccionLN->syncObtener($token, $version);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($secciones, 'json', array('groups' => array('sync')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }
}