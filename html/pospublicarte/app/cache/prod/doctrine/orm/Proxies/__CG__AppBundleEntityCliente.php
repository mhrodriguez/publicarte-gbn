<?php

namespace Proxies\__CG__\AppBundle\Entity;

/**
 * DO NOT EDIT THIS FILE - IT WAS CREATED BY DOCTRINE'S PROXY GENERATOR
 */
class Cliente extends \AppBundle\Entity\Cliente implements \Doctrine\ORM\Proxy\Proxy
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
            return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'empresa', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'rfc', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'razonsocial', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'domicilios', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'contactos', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'activo', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'calle', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'cp', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'estado', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'municipio', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'colonia', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'numext', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'numint', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'localidad');
        }

        return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'empresa', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'rfc', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'razonsocial', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'domicilios', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'contactos', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'activo', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'calle', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'cp', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'estado', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'municipio', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'colonia', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'numext', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'numint', '' . "\0" . 'AppBundle\\Entity\\Cliente' . "\0" . 'localidad');
    }

    /**
     * 
     */
    public function __wakeup()
    {
        if ( ! $this->__isInitialized__) {
            $this->__initializer__ = function (Cliente $proxy) {
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
    public function setId($id)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setId', array($id));

        return parent::setId($id);
    }

    /**
     * {@inheritDoc}
     */
    public function setRfc($rfc)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setRfc', array($rfc));

        return parent::setRfc($rfc);
    }

    /**
     * {@inheritDoc}
     */
    public function getRfc()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getRfc', array());

        return parent::getRfc();
    }

    /**
     * {@inheritDoc}
     */
    public function setRazonsocial($razonsocial)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setRazonsocial', array($razonsocial));

        return parent::setRazonsocial($razonsocial);
    }

    /**
     * {@inheritDoc}
     */
    public function getRazonsocial()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getRazonsocial', array());

        return parent::getRazonsocial();
    }

    /**
     * {@inheritDoc}
     */
    public function setCp($cp)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setCp', array($cp));

        return parent::setCp($cp);
    }

    /**
     * {@inheritDoc}
     */
    public function getCp()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getCp', array());

        return parent::getCp();
    }

    /**
     * {@inheritDoc}
     */
    public function setMunicipio($municipio)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setMunicipio', array($municipio));

        return parent::setMunicipio($municipio);
    }

    /**
     * {@inheritDoc}
     */
    public function getMunicipio()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getMunicipio', array());

        return parent::getMunicipio();
    }

    /**
     * {@inheritDoc}
     */
    public function setColonia($colonia)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setColonia', array($colonia));

        return parent::setColonia($colonia);
    }

    /**
     * {@inheritDoc}
     */
    public function getColonia()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getColonia', array());

        return parent::getColonia();
    }

    /**
     * {@inheritDoc}
     */
    public function setCalle($calle)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setCalle', array($calle));

        return parent::setCalle($calle);
    }

    /**
     * {@inheritDoc}
     */
    public function getCalle()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getCalle', array());

        return parent::getCalle();
    }

    /**
     * {@inheritDoc}
     */
    public function setNumext($numext)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setNumext', array($numext));

        return parent::setNumext($numext);
    }

    /**
     * {@inheritDoc}
     */
    public function getNumext()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getNumext', array());

        return parent::getNumext();
    }

    /**
     * {@inheritDoc}
     */
    public function setNumint($numint)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setNumint', array($numint));

        return parent::setNumint($numint);
    }

    /**
     * {@inheritDoc}
     */
    public function getNumint()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getNumint', array());

        return parent::getNumint();
    }

    /**
     * {@inheritDoc}
     */
    public function setLocalidad($localidad)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setLocalidad', array($localidad));

        return parent::setLocalidad($localidad);
    }

    /**
     * {@inheritDoc}
     */
    public function getLocalidad()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getLocalidad', array());

        return parent::getLocalidad();
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
    public function setEmpresa(\AppBundle\Entity\Empresa $empresa)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setEmpresa', array($empresa));

        return parent::setEmpresa($empresa);
    }

    /**
     * {@inheritDoc}
     */
    public function getEmpresa()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getEmpresa', array());

        return parent::getEmpresa();
    }

    /**
     * {@inheritDoc}
     */
    public function setEstado(\AppBundle\Entity\Estado $estado)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setEstado', array($estado));

        return parent::setEstado($estado);
    }

    /**
     * {@inheritDoc}
     */
    public function getEstado()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getEstado', array());

        return parent::getEstado();
    }

    /**
     * {@inheritDoc}
     */
    public function addDomicilio(\AppBundle\Entity\Domicilio $domicilios)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'addDomicilio', array($domicilios));

        return parent::addDomicilio($domicilios);
    }

    /**
     * {@inheritDoc}
     */
    public function removeDomicilio(\AppBundle\Entity\Domicilio $domicilios)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'removeDomicilio', array($domicilios));

        return parent::removeDomicilio($domicilios);
    }

    /**
     * {@inheritDoc}
     */
    public function getDomicilios()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getDomicilios', array());

        return parent::getDomicilios();
    }

    /**
     * {@inheritDoc}
     */
    public function addContacto(\AppBundle\Entity\Contacto $contactos)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'addContacto', array($contactos));

        return parent::addContacto($contactos);
    }

    /**
     * {@inheritDoc}
     */
    public function removeContacto(\AppBundle\Entity\Contacto $contactos)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'removeContacto', array($contactos));

        return parent::removeContacto($contactos);
    }

    /**
     * {@inheritDoc}
     */
    public function getContactos()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getContactos', array());

        return parent::getContactos();
    }

}
