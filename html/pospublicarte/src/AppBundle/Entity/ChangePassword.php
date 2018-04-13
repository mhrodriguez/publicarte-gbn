<?php
/**
 * Created by PhpStorm.
 * User: davatar
 * Date: 8/9/16
 * Time: 1:36 a.m.
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Serializer\Annotation as Srz;


class ChangePassword
{
    /**
     * @Assert\NotBlank(message="Este campo es requerido.")
     * @Assert\Length(
     *      min = 6,
     *      max = 60,
     *      minMessage = "Su password debe ser al menos de {{ limit }} caracteres de longitud",
     *      maxMessage = "Su password debe ser máximo de {{ limit }} caracteres de longitud"
     * )
     */
    private $password;

    /**
     * Set password
     *
     * @param string $password
     * @return Solicitud
     */
    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Get password
     *
     * @return string
     */
    public function getPassword()
    {
        return $this->password;
    }


}
