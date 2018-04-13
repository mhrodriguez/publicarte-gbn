<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use AppBundle\Entity\Usuario;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
/*
        $em = $this->getDoctrine()->getManager();

        $user = new Usuario();

        $password = $this->get('security.password_encoder')
            ->encodePassword($user, '123456');
        $user->setPassword($password);
        $user->setEmail("admin@restarceadmin.com");
        $user->setUsername("restarceadmin");
        $user->setNombre("Administrador");
        $user->setIsActive(true);

        $empresa = $em->getRepository('AppBundle:Empresa')->findOneById(1);

        $user->setEmpresa($empresa);

        $em->persist($user);
        $em->flush();
*/


        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', array(
            'base_dir' => realpath($this->container->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ));
    }
}
