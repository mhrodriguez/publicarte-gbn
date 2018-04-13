<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SucursalType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        if (!$editando) {
            $builder->add('nombre');
        }
        else
        {
            $builder->add('nombre')->add('activo');
        }
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Sucursal'
        ));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_sucursal';
    }


}
