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
 * @Route("/panelfactura")
 */
class PanelFacturaController extends Controller
{
    /**
     * @Route("/", name="panelfactura_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        return $this->render('panel_factura/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }

    /**
     * @Route("/misfacturas", name="panelfactura_misfacturas")
     * @Method("GET")
     */
    public function misfacturasAction(Request $request)
    {
        return $this->render('panel_factura/misfacturas.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
