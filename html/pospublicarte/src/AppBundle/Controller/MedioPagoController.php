<?php

namespace AppBundle\Controller;

use AppBundle\Entity\MetodoPago;
use AppBundle\Entity\Cliente;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

use Symfony\Component\Serializer\Mapping\Factory\ClassMetadataFactory;
use Doctrine\Common\Annotations\AnnotationReader;
use Symfony\Component\Serializer\Mapping\Loader\AnnotationLoader;

use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;

use AppBundle\Classes\Ambiente;
use AppBundle\Classes\Util\FlashMensajeUtil;

/**
 * Contacto controller.
 *
 * @Route("mediopago")
 */
class MedioPagoController extends Controller
{
    /**
     * Lists all contacto entities.
     *
     * @Route("/{idMetodoPago}/index.{_format}", name="mediopago_index", defaults= {"_format"="html"}, requirements = {"_format"="html|json"})
     * @Method("GET")
     */
    public function indexAction(Request $request, $idMetodoPago, $_format)
    {
        $em = $this->getDoctrine()->getManager();

        $metodopago = $em->getRepository('AppBundle:MetodoPago')->findOneById($idMetodoPago);

        if ($_format == "html") {

        }
        else
        {
            try {
                $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

                $encoders = array(new JsonEncoder());
                $normalizers = array(new ObjectNormalizer($classMetadataFactory));

                $serializer = new Serializer($normalizers, $encoders);

                $jsonContent = $serializer->serialize($metodopago->getMediopagos(), 'json', array('groups' => array('sync')));
            }
            catch (GeneralException $e)
            {
                return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
            }


            return new Response($jsonContent);
        }
    }

}
