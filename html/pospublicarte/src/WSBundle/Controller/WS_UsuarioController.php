<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 11/21/16
 * Time: 2:23 PM
 */

namespace WSBundle\Controller;

use AppBundle\Classes\Exception\GeneralException;
use AppBundle\Classes\Exception\ImagenException;

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

use WSBundle\LN\WS_UsuarioLN;

use AppBundle\Entity\Usuario;

/**
 * Usuario controller.
 *
 * @Route("/ws/usuario")
 */
class WS_UsuarioController extends Controller
{
    /**
     * Creates a new Usuario entity.
     *
     * @Route("/login.{_format}", name="wsusuario_login", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function loginAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $passwordencoder = $this->get('security.password_encoder');

        $usuario = $request->query->get('username');
        $password = $request->query->get('password');

        $usuarioLN = new WS_UsuarioLN($em, $passwordencoder);

        try {
            $token = $usuarioLN->login($usuario, $password);
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response('{"resultado": true, "token" : "' . $token .'" }');
    }

    /**
     * Creates a new Usuario entity.
     *
     * @Route("/perfil.{_format}/{token}", name="wsusuario_index", defaults= {"_format"="json"}, requirements = {"_format"="json"})
     */
    public function perfilAction(Request $request, $token)
    {
        $em = $this->getDoctrine()->getManager();

        $usuarioLN = new WS_UsuarioLN($em, null, null);

        try {
            $usuario = $usuarioLN->obtenerUsuarioDeToken($token);

            $classMetadataFactory = new ClassMetadataFactory(new AnnotationLoader(new AnnotationReader()));

            $encoders = array(new JsonEncoder());
            $normalizers = array(new ObjectNormalizer($classMetadataFactory));
            $serializer = new Serializer($normalizers, $encoders);
            $jsonContent = $serializer->serialize($usuario, 'json', array('groups' => array('sync')));
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }

        return new Response($jsonContent);
    }



}
