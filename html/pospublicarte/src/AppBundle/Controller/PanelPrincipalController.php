<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/11/17
 * Time: 3:33 p.m.
 */

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/panelprincipal")
 */
class PanelPrincipalController extends Controller
{
    /**
     * @Route("/", name="panelprincipal_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        return $this->render('panel_principal/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
