<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/9/17
 * Time: 5:57 p.m.
 */

namespace WSBundle\Controller;

use AppBundle\Classes\Exception\GeneralException;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use AppBundle\Entity\Imagen;

use Symfony\Component\HttpFoundation\BinaryFileResponse;

use WSBundle\LN\WS_ImagenLN;

/**
 * Usuario controller.
 *
 * @Route("/ws/imagen")
 */
class WS_ImagenController extends Controller
{
    /**
     * Get User List
     *
     * @Route("/descargar/{id}", name="wsimagen_descargar")
     */
    public function descargarAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $token = $request->query->get('token');

        $imagenLN = new WS_ImagenLN($em);

        try {
            $imagen = $imagenLN->obtener($token, $id);

            $response = new BinaryFileResponse($imagen->getPath());

            return $response;
        }
        catch (GeneralException $e)
        {
            return new Response('{"resultado": false, "descripcionError": "' . $e->getMessage() . '" }');
        }
    }

}