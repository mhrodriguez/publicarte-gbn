<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/11/17
 * Time: 9:13 p.m.
 */

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/panelusuario")
 */
class PanelUsuarioController extends Controller
{
    /**
     * @Route("/", name="panelusuario_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        return $this->render('panel_usuario/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
