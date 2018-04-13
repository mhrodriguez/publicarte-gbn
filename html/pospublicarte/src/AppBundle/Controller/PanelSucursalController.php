<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/30/17
 * Time: 11:18 p.m.
 */

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/panelsucursal")
 */
class PanelSucursalController extends Controller
{
    /**
     * @Route("/", name="panelsucursal_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        return $this->render('panel_sucursal/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}