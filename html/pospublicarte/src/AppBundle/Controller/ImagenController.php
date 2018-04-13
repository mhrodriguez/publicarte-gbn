<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/27/17
 * Time: 7:35 p.m.
 */

namespace AppBundle\Controller;

use AppBundle\Entity\Imagen;

use Symfony\Component\HttpFoundation\BinaryFileResponse;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Categorium controller.
 *
 * @Route("imagen")
 */
class ImagenController extends Controller
{

    /**
     * Finds and displays a categorium entity.
     *
     * @Route("/{id}", name="imagen_show")
     * @Method("GET")
     */
    public function showAction(Imagen $imagen)
    {
        $em = $this->getDoctrine()->getManager();

        $response = new BinaryFileResponse($imagen->getPath());

        return $response;
    }

}
