<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CorteCajaType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('fecha')->add('fechainicio')->add('fechafin')->add('totalefectivo')->add('totaltarjetacredito')->add('totalefectivoreportado')->add('totaltarjetacreditoreportado')->add('remanente')->add('numventasefectivo')->add('numventastarjetacredito')->add('activo')->add('empresa')->add('sucursal')->add('usuario')->add('moneda');
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\CorteCaja'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_cortecaja';
    }


}
