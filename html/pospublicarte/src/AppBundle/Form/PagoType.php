<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class PagoType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('tipo', EntityType::class,
            array(
                'class' => 'AppBundle:PagoTipo',
                'label' => 'Pago',
                'choices' => $options['tipos'],
                'choices_as_values' => true,
                'required'   => true,
                'choice_label' => 'nombre',))
            ->add('monto')
            ->add('mediopago', EntityType::class,
                array(
                    'class' => 'AppBundle:MedioPago',
                    'label' => 'Forma de Pago',
                    'choices' => $options['mediopagos'],
                    'choices_as_values' => true,
                    'required'   => false,
                    'choice_label' => 'nombre',))
            ->add('fechapago', DateType::class, array(
                'widget' => 'single_text',
                'format' => 'dd/MM/yyyy',
                'html5' => false,
                'attr' => ['class' => 'js-datepicker'],
                'label' => 'Fecha de Pago'
            ));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Pago'
        ));

        $resolver
            ->setDefault('tipos', null)
            ->setRequired('tipos')
            ->setAllowedTypes('tipos', array('array'));

        $resolver
            ->setDefault('mediopagos', null)
            ->setRequired('mediopagos')
            ->setAllowedTypes('mediopagos', array('array'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_pago';
    }


}
