<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 7/2/17
 * Time: 10:31 a.m.
 */
namespace AppBundle\Classes\Util;

use Symfony\Component\HttpFoundation\Session\Session;

class FlashMensajeUtil
{
    public static function push($tipo, $mensaje)
    {
        $session = new Session();

        $session->getFlashBag()->add(
            $tipo,
            $mensaje
        );
    }

}