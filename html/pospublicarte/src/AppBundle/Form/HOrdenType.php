<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class HOrdenType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder
            ->add('cliente', EntityType::class,
                array(
                    'class' => 'AppBundle:Cliente',
                    'label' => 'Cliente',
                    'choices' => $options['clientes'],
                    'choices_as_values' => true,
                    'required'   => true,
                    'choice_label' => 'razonsocial',))
            ->add('foliofactura', TextType::class, array('label' => 'Folio de Factura', 'required' => true))
            ->add('total', TextType::class, array('required' => true))
            ->add('abono', TextType::class, array('required' => true));
    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Orden'
        ));

        $resolver
            ->setDefault('clientes', null)
            ->setRequired('clientes')
            ->setAllowedTypes('clientes', array('array'));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_orden';
    }


}
