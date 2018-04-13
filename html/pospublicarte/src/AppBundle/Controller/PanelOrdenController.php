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
 * @Route("/panelorden")
 */
class PanelOrdenController extends Controller
{
    /**
     * @Route("/", name="panelorden_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        return $this->render('panel_orden/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }

    /**
     * @Route("/indexfact", name="panelorden_indexfact")
     * @Method("GET")
     */
    public function indexfactAction(Request $request)
    {
        return $this->render('panel_orden/indexfact.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }

    /**
     * @Route("/indexesp", name="panelorden_indexesp")
     * @Method("GET")
     */
    public function indexespAction(Request $request)
    {
        return $this->render('panel_orden/indexesp.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
