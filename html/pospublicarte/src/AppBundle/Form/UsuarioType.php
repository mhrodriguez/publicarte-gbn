<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class UsuarioType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];
        $miperfil = $options['miperfil'];

        if ($editando) {
            $builder
                ->add('nombre', TextType::class)
                ->add('apellidos', TextType::class)
                ->add('email', EmailType::class, array('label' => 'E-mail'))
                ->add('firmaimagen', FileType::class, array('label' => 'Modificar Firma', 'required'=>false));

            if (!$miperfil) {
                $builder->add('isActive', CheckboxType::class, array());
            }
        }
        else
        {
            $builder
                ->add('nombre', TextType::class)
                ->add('username', TextType::class, array('label' => 'Nombre de usuario'))
                ->add('apellidos', TextType::class)
                ->add('firmaimagen', FileType::class, array('label' => 'Firma', 'required'=>false))
                ->add('email', EmailType::class, array('label' => 'E-mail'))
                ->add('password', RepeatedType::class, array(
                    'type' => PasswordType::class,
                    'invalid_message' => 'Los campos de Password deben coincidir y no estar en blanco.',
                    'first_options'  => array('label' => 'Password'),
                    'second_options' => array('label' => 'Confirmar Password')));
        }

        if (!$miperfil) {
            $builder->add('sucursales', EntityType::class,
                array(
                    'label' => 'Sucursales',
                    'required' => false,
                    'expanded' => true,
                    'multiple' => true,
                    'choice_label' => 'nombre',
                    'class' => 'AppBundle:Sucursal',
                    'choices' => $options['sucursales'],
                )
            );
            $builder->add('roles2', EntityType::class,
                array(
                    'label' => 'Roles',
                    'required' => false,
                    'expanded' => true,
                    'multiple' => true,
                    'choice_label' => 'descripcion',
                    'class' => 'AppBundle:Rol',
                    'choices' => $options['roles'],
                )
            );
        }
    }

    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Usuario'
        ));

        $resolver
            ->setDefault('sucursales', null)
            ->setRequired('sucursales')
            ->setAllowedTypes('sucursales', array('array', null));

        $resolver
            ->setDefault('roles', null)
            ->setRequired('roles')
            ->setAllowedTypes('roles', array('array', null));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
        ;

        $resolver
            ->setDefault('miperfil', false)
            ->setAllowedTypes('miperfil', array('boolean'));
        ;
    }
}
