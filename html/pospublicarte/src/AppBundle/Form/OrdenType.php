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

class OrdenType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder->add('fechaentrega', DateType::class, array(
            'widget' => 'single_text',
            'format' => 'dd/MM/yyyy',
            'html5' => false,
            'attr' => ['class' => 'js-datepicker'],
            'label' => 'Fecha de Entrega'
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
            ->add('metodopago', EntityType::class,
                array(
                    'class' => 'AppBundle:MetodoPago',
                    'label' => 'Método de Pago',
                    'choices' => $options['metodopagos'],
                    'choices_as_values' => true,
                    'required'   => false,
                    'choice_label' => 'nombre',))
            ->add('mediopago', EntityType::class,
                array(
                    'class' => 'AppBundle:MedioPago',
                    'label' => 'Forma de Pago',
                    'choices' => $options['mediopagos'],
                    'choices_as_values' => true,
                    'required'   => false,
                    'choice_label' => 'nombre',))
            ->add('block')
            ->add('medidaimpresion', TextType::class, array('label' => 'Medida de Impresión', 'required' => false))
            ->add('papel')
            ->add('folio')
            ->add('observaciones', TextAreaType::class, array('label' => 'Observaciones', 'required' => false))
            ->add('impresionopciones', EntityType::class,
                            array(
                                'label' => 'Opciones de impresión',
                                'required' => false,
                                'expanded' => true,
                                'multiple' => true,
                                'choice_label' => 'nombre',
                                'class' => 'AppBundle:ImpresionOpcion',
                                'choices' => $options['impresionopciones'],
                            )
                        )
            ->add('colorcf', TextType::class, array('label' => 'Color Final', 'required' => false))
            ->add('colorcfb', TextType::class, array('label' => 'Color Intermedio', 'required' => false))
            ->add('colorinicial', TextType::class, array('label' => 'Color Inicial', 'required' => false))
            ->add('usocfdi', EntityType::class,
                array(
                    'class' => 'AppBundle:UsoCFDI',
                    'label' => 'Uso del CFDI',
                    'choices' => $options['usocfdis'],
                    'choices_as_values' => true,
                    'required'   => false,
                    'choice_label' => 'nombre',))
            ->add('itemsaux', HiddenType::class)
            ->add('itemsauxactualizados', HiddenType::class)
            ->add('itemsauxborrados', HiddenType::class)
            ->add('tipo', EntityType::class,
                array(
                    'class' => 'AppBundle:OrdenTipo',
                    'label' => 'Tipo de Servicio',
                    'choices' => $options['tipos'],
                    'choices_as_values' => true,
                    'required'   => false,
                    'choice_label' => 'nombre',))
            ->add('maquina', EntityType::class,
                array(
                    'class' => 'AppBundle:Maquina',
                    'label' => 'Maquina',
                    'choices' => $options['maquinas'],
                    'choices_as_values' => true,
                    'required'   => false,
                    'choice_label' => 'nombre',));


        if ($editando) {
            $builder->add('estado', EntityType::class,
                array(
                    'class' => 'AppBundle:OrdenEstado',
                    'label' => 'Estado',
                    'choices' => $options['estados'],
                    'choices_as_values' => true,
                    'required'   => true,
                    'choice_label' => 'nombre',))
                ->add('especial')
                ->add('foliofactura', TextType::class, array('label' => 'Folio de Factura', 'required' => false));
        }
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
            ->setDefault('contactos', null)
            ->setRequired('contactos')
            ->setAllowedTypes('contactos', array('array'));

        $resolver
            ->setDefault('impresionopciones', null)
            ->setRequired('impresionopciones')
            ->setAllowedTypes('impresionopciones', array('array'));

        $resolver
            ->setDefault('estados', null)
            ->setRequired('estados')
            ->setAllowedTypes('estados', array('array'));

        $resolver
            ->setDefault('tipos', null)
            ->setRequired('tipos')
            ->setAllowedTypes('tipos', array('array'));

        $resolver
            ->setDefault('maquinas', null)
            ->setRequired('maquinas')
            ->setAllowedTypes('maquinas', array('array'));

        $resolver
            ->setDefault('usocfdis', null)
            ->setRequired('usocfdis')
            ->setAllowedTypes('usocfdis', array('array'));

        $resolver
            ->setDefault('metodopagos', null)
            ->setRequired('metodopagos')
            ->setAllowedTypes('metodopagos', array('array'));

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
        return 'appbundle_orden';
    }


}
