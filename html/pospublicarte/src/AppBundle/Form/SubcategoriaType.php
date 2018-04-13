<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class SubcategoriaType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $editando = $options['editando'];

        $builder->add('nombre')
            ->add('categoria', ChoiceType::class,
                array(
                    'label' => 'Categoria',
                    'choices' => $options['categorias'],
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
            'data_class' => 'AppBundle\Entity\Subcategoria'
        ));

        $resolver
            ->setDefault('categorias', null)
            ->setRequired('categorias')
            ->setAllowedTypes('categorias', array('array'));

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
        return 'appbundle_subcategoria';
    }


}
