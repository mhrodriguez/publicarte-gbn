<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class ContactoType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder->add('nombre')->add('apellidos')->add('puesto')
        ->add('correo', TextType::class, array('label' => 'E-mail'))
        ->add('correofacturacion', TextType::class, array('label' => 'E-mail de facturación'))
        ->add('telefono', TextType::class, array('label' => 'Teléfono'))
        ->add('mediopago', EntityType::class,
        array(
            'class' => 'AppBundle:MedioPago',
            'label' => 'Medio de Pago',
            'choices' => $options['mediopagos'],
            'choices_as_values' => true,
            'choice_label' => 'nombre',));

        if ($editando) {
            $builder->add('activo');
        }
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Contacto'
        ));

        $resolver
            ->setDefault('mediopagos', null)
            ->setRequired('mediopagos')
            ->setAllowedTypes('mediopagos', array('array'));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_contacto';
    }


}
