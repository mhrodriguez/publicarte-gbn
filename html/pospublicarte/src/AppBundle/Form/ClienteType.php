<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class ClienteType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder->add('rfc', TextType::class, array('label' => 'RFC'))->add('razonsocial', TextType::class, array('label' => 'Empresa'))
            ->add('cp', TextType::class, array('label' => 'C.P.'))->add('municipio')->add('colonia')->add('calle')->add('localidad')
            ->add('estado', EntityType::class,
                array(
                    'class' => 'AppBundle:Estado',
                    'label' => 'Estado',
                    'choices' => $options['estados'],
                    'choices_as_values' => true,
                    'choice_label' => 'nombre',))
            ->add('numext', TextType::class, array('label' => 'No. exterior'))
            ->add('numint', TextType::class, array('label' => 'No. interior', 'required' => false));

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
            'data_class' => 'AppBundle\Entity\Cliente'
        ));

        $resolver
            ->setDefault('estados', null)
            ->setRequired('estados')
            ->setAllowedTypes('estados', array('array'));

        $resolver
            ->setDefault('editando', false)
            ->setAllowedTypes('editando', array('boolean'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_cliente';
    }


}
