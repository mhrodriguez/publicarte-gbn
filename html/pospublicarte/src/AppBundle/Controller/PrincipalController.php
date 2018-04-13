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
 * @Route("/principal")
 */
class PrincipalController extends Controller
{
    /**
     * @Route("/", name="principal_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        // Verificar el Rol del usuario
        if ($this->get('security.context')->isGranted('ROLE_ADMINISTRADOR')) {
            // the user has the ROLE_BRAND role, so act accordingly
        }
        else if ($this->get('security.context')->isGranted('ROLE_EMPRESA')) {
            return $this->redirectToRoute('principal_empresa_index');
        }
        else if ($this->get('security.context')->isGranted('ROLE_VENDEDOR')) {
            return $this->redirectToRoute('principal_vendedor_index');
        }
    }

    /**
     * @Route("/empresa", name="principal_empresa_index")
     * @Method("GET")
     */
    public function indexEmpresaAction(Request $request)
    {
        return $this->render('principal/empresa.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }

    /**
     * @Route("/vendedor", name="principal_vendedor_index")
     * @Method("GET")
     */
    public function indexVendedorAction(Request $request)
    {
        return $this->render('principal/vendedor.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
