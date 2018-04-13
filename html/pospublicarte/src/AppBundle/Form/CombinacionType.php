<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class CombinacionType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder->add('nombre')->add('precio')
        ->add('moneda', EntityType::class,
        array(
            'class' => 'AppBundle:Moneda',
            'label' => 'Moneda',
            'choices' => $options['monedas'],
            'choices_as_values' => true,
            'choice_label' => 'nombre',)
         );

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
            'data_class' => 'AppBundle\Entity\Combinacion'
        ));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
        ;

        $resolver
            ->setDefault('monedas', null)
            ->setRequired('monedas')
            ->setAllowedTypes('monedas', array('array'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_combinacion';
    }


}
