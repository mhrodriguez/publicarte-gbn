<?php

namespace Proxies\__CG__\AppBundle\Entity;

/**
 * DO NOT EDIT THIS FILE - IT WAS CREATED BY DOCTRINE'S PROXY GENERATOR
 */
class Contacto extends \AppBundle\Entity\Contacto implements \Doctrine\ORM\Proxy\Proxy
{
    /**
     * @var \Closure the callback responsible for loading properties in the proxy object. This callback is called with
     *      three parameters, being respectively the proxy object to be initialized, the method that triggered the
     *      initialization process and an array of ordered parameters that were passed to that method.
     *
     * @see \Doctrine\Common\Persistence\Proxy::__setInitializer
     */
    public $__initializer__;

    /**
     * @var \Closure the callback responsible of loading properties that need to be copied in the cloned object
     *
     * @see \Doctrine\Common\Persistence\Proxy::__setCloner
     */
    public $__cloner__;

    /**
     * @var boolean flag indicating if this object was already initialized
     *
     * @see \Doctrine\Common\Persistence\Proxy::__isInitialized
     */
    public $__isInitialized__ = false;

    /**
     * @var array properties to be lazy loaded, with keys being the property
     *            names and values being their default values
     *
     * @see \Doctrine\Common\Persistence\Proxy::__getLazyProperties
     */
    public static $lazyPropertiesDefaults = array();



    /**
     * @param \Closure $initializer
     * @param \Closure $cloner
     */
    public function __construct($initializer = null, $cloner = null)
    {

        $this->__initializer__ = $initializer;
        $this->__cloner__      = $cloner;
    }







    /**
     * 
     * @return array
     */
    public function __sleep()
    {
        if ($this->__isInitialized__) {
            return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'nombre', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'apellidos', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'puesto', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'correo', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'correofacturacion', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'telefono', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'mediopago', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'activo');
        }

        return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'nombre', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'apellidos', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'puesto', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'correo', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'correofacturacion', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'telefono', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'mediopago', '' . "\0" . 'AppBundle\\Entity\\Contacto' . "\0" . 'activo');
    }

    /**
     * 
     */
    public function __wakeup()
    {
        if ( ! $this->__isInitialized__) {
            $this->__initializer__ = function (Contacto $proxy) {
                $proxy->__setInitializer(null);
                $proxy->__setCloner(null);

                $existingProperties = get_object_vars($proxy);

                foreach ($proxy->__getLazyProperties() as $property => $defaultValue) {
                    if ( ! array_key_exists($property, $existingProperties)) {
                        $proxy->$property = $defaultValue;
                    }
                }
            };

        }
    }

    /**
     * 
     */
    public function __clone()
    {
        $this->__cloner__ && $this->__cloner__->__invoke($this, '__clone', array());
    }

    /**
     * Forces initialization of the proxy
     */
    public function __load()
    {
        $this->__initializer__ && $this->__initializer__->__invoke($this, '__load', array());
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __isInitialized()
    {
        return $this->__isInitialized__;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __setInitialized($initialized)
    {
        $this->__isInitialized__ = $initialized;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __setInitializer(\Closure $initializer = null)
    {
        $this->__initializer__ = $initializer;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __getInitializer()
    {
        return $this->__initializer__;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __setCloner(\Closure $cloner = null)
    {
        $this->__cloner__ = $cloner;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific cloning logic
     */
    public function __getCloner()
    {
        return $this->__cloner__;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     * @static
     */
    public function __getLazyProperties()
    {
        return self::$lazyPropertiesDefaults;
    }

    
    /**
     * {@inheritDoc}
     */
    public function getId()
    {
        if ($this->__isInitialized__ === false) {
            return (int)  parent::getId();
        }


        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getId', array());

        return parent::getId();
    }

    /**
     * {@inheritDoc}
     */
    public function setNombre($nombre)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setNombre', array($nombre));

        return parent::setNombre($nombre);
    }

    /**
     * {@inheritDoc}
     */
    public function getNombre()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getNombre', array());

        return parent::getNombre();
    }

    /**
     * {@inheritDoc}
     */
    public function setPuesto($puesto)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setPuesto', array($puesto));

        return parent::setPuesto($puesto);
    }

    /**
     * {@inheritDoc}
     */
    public function getPuesto()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getPuesto', array());

        return parent::getPuesto();
    }

    /**
     * {@inheritDoc}
     */
    public function setCorreo($correo)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setCorreo', array($correo));

        return parent::setCorreo($correo);
    }

    /**
     * {@inheritDoc}
     */
    public function getCorreo()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getCorreo', array());

        return parent::getCorreo();
    }

    /**
     * {@inheritDoc}
     */
    public function setCorreofacturacion($correofacturacion)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setCorreofacturacion', array($correofacturacion));

        return parent::setCorreofacturacion($correofacturacion);
    }

    /**
     * {@inheritDoc}
     */
    public function getCorreofacturacion()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getCorreofacturacion', array());

        return parent::getCorreofacturacion();
    }

    /**
     * {@inheritDoc}
     */
    public function setTelefono($telefono)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setTelefono', array($telefono));

        return parent::setTelefono($telefono);
    }

    /**
     * {@inheritDoc}
     */
    public function getTelefono()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getTelefono', array());

        return parent::getTelefono();
    }

    /**
     * {@inheritDoc}
     */
    public function setActivo($activo)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setActivo', array($activo));

        return parent::setActivo($activo);
    }

    /**
     * {@inheritDoc}
     */
    public function getActivo()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getActivo', array());

        return parent::getActivo();
    }

    /**
     * {@inheritDoc}
     */
    public function setMediopago(\AppBundle\Entity\MedioPago $mediopago)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setMediopago', array($mediopago));

        return parent::setMediopago($mediopago);
    }

    /**
     * {@inheritDoc}
     */
    public function getMediopago()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getMediopago', array());

        return parent::getMediopago();
    }

    /**
     * {@inheritDoc}
     */
    public function setApellidos($apellidos)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setApellidos', array($apellidos));

        return parent::setApellidos($apellidos);
    }

    /**
     * {@inheritDoc}
     */
    public function getApellidos()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getApellidos', array());

        return parent::getApellidos();
    }

    /**
     * {@inheritDoc}
     */
    public function getNombrecompleto()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getNombrecompleto', array());

        return parent::getNombrecompleto();
    }

}