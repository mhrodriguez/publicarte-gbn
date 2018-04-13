<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class CombinacionItemType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('cantidad')->add('incluido')
            ->add('categoria', EntityType::class,
                array(
                    'class' => 'AppBundle:Categoria',
                    'label' => 'Categoria',
                    'choices' => $options['categorias'],
                    'choices_as_values' => true,
                    'choice_label' => 'nombre',)
            )
            ->add('subcategoria', EntityType::class,
                array(
                    'class' => 'AppBundle:Subcategoria',
                    'label' => 'Subcategoria',
                    'choices' => $options['subcategorias'],
                    'choices_as_values' => true,
                    'choice_label' => 'nombre',)
            );
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\CombinacionItem'
        ));

        $resolver
            ->setDefault('categorias', null)
            ->setRequired('categorias')
            ->setAllowedTypes('categorias', array('array'));

        $resolver
            ->setDefault('subcategorias', null)
            ->setRequired('subcategorias')
            ->setAllowedTypes('subcategorias', array('array'));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_combinacionitem';
    }


}
