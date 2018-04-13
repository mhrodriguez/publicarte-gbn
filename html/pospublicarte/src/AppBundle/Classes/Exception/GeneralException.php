<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 6/15/17
 * Time: 6:15 p.m.
 */

namespace AppBundle\Classes\Exception;

use AppBundle\Classes\Exception\ErrorCodigo;

class GeneralException extends \Exception implements ExceptionInterface
{
    static public function throwOperacionInvalida()
    {
        throw new GeneralException("Operacion Inválida", ErrorCodigo::ERROR_GENERAL_OPERACIONINVALIDA);
    }
}