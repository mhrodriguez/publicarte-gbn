<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/16/17
 * Time: 9:53 p.m.
 */

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/panelproducto")
 */
class PanelProductoController extends Controller
{
    /**
     * @Route("/", name="panelproducto_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        return $this->render('panel_producto/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
