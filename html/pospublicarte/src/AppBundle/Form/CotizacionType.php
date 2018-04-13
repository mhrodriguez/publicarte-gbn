<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class CotizacionType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder->add('fechavalida', DateType::class, array(
                    'widget' => 'single_text',
                    'format' => 'dd/MM/yyyy',
                    'html5' => false,
                    'attr' => ['class' => 'js-datepicker'],
                    'label' => 'Válida hasta'
                ))
                ->add('fecha', DateType::class, array(
                'widget' => 'single_text',
                'format' => 'dd/MM/yyyy',
                'html5' => false,
                'attr' => ['class' => 'js-datepicker'],
                'label' => 'Fecha'
                ))
                ->add('cliente', EntityType::class,
                    array(
                        'class' => 'AppBundle:Cliente',
                        'label' => 'Cliente',
                        'choices' => $options['clientes'],
                        'choices_as_values' => true,
                        'required'   => false,
                        'choice_label' => 'razonsocial',))
                ->add('contacto', EntityType::class,
                    array(
                        'class' => 'AppBundle:Contacto',
                        'label' => 'Contacto',
                        'choices' => $options['contactos'],
                        'choices_as_values' => true,
                        'required'   => false,
                        'choice_label' => 'nombrecompleto',))
                ->add('tiempoentrega', TextType::class, array('label' => 'Tiempo de Entrega', 'required' => false))

                ->add('esquemapago', EntityType::class,
                array(
                    'class' => 'AppBundle:EsquemaPago',
                    'label' => 'Forma de Pago',
                    'choices' => $options['esquemapagos'],
                    'choices_as_values' => true,
                    'required'   => true,
                    'choice_label' => 'nombre',))

                ->add('itemsaux', HiddenType::class)
                ->add('itemsauxactualizados', HiddenType::class)
                ->add('itemsauxborrados', HiddenType::class);

        if ($editando) {

        }
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Cotizacion'
        ));

        $resolver
            ->setDefault('clientes', null)
            ->setRequired('clientes')
            ->setAllowedTypes('clientes', array('array'));

        $resolver
            ->setDefault('contactos', null)
            ->setRequired('contactos')
            ->setAllowedTypes('contactos', array('array'));

        $resolver
            ->setDefault('esquemapagos', null)
            ->setRequired('esquemapagos')
            ->setAllowedTypes('esquemapagos', array('array'));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_cotizacion';
    }


}
