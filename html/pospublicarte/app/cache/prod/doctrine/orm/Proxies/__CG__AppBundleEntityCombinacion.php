<?php

namespace Proxies\__CG__\AppBundle\Entity;

/**
 * DO NOT EDIT THIS FILE - IT WAS CREATED BY DOCTRINE'S PROXY GENERATOR
 */
class Combinacion extends \AppBundle\Entity\Combinacion implements \Doctrine\ORM\Proxy\Proxy
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
    public static $lazyPropertiesDefaults = array('items' => NULL);



    /**
     * @param \Closure $initializer
     * @param \Closure $cloner
     */
    public function __construct($initializer = null, $cloner = null)
    {
        unset($this->items);

        $this->__initializer__ = $initializer;
        $this->__cloner__      = $cloner;
    }

    /**
     * 
     * @param string $name
     */
    public function __get($name)
    {
        if (array_key_exists($name, $this->__getLazyProperties())) {
            $this->__initializer__ && $this->__initializer__->__invoke($this, '__get', array($name));

            return $this->$name;
        }

        trigger_error(sprintf('Undefined property: %s::$%s', __CLASS__, $name), E_USER_NOTICE);
    }

    /**
     * 
     * @param string $name
     * @param mixed  $value
     */
    public function __set($name, $value)
    {
        if (array_key_exists($name, $this->__getLazyProperties())) {
            $this->__initializer__ && $this->__initializer__->__invoke($this, '__set', array($name, $value));

            $this->$name = $value;

            return;
        }

        $this->$name = $value;
    }

    /**
     * 
     * @param  string $name
     * @return boolean
     */
    public function __isset($name)
    {
        if (array_key_exists($name, $this->__getLazyProperties())) {
            $this->__initializer__ && $this->__initializer__->__invoke($this, '__isset', array($name));

            return isset($this->$name);
        }

        return false;
    }

    /**
     * 
     * @return array
     */
    public function __sleep()
    {
        if ($this->__isInitialized__) {
            return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'nombre', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'empresa', 'items', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'precio', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'moneda', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'unidad', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'satclaveprodserv', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'activo');
        }

        return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'nombre', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'empresa', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'precio', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'moneda', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'unidad', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'satclaveprodserv', '' . "\0" . 'AppBundle\\Entity\\Combinacion' . "\0" . 'activo');
    }

    /**
     * 
     */
    public function __wakeup()
    {
        if ( ! $this->__isInitialized__) {
            $this->__initializer__ = function (Combinacion $proxy) {
                $proxy->__setInitializer(null);
                $proxy->__setCloner(null);

                $existingProperties = get_object_vars($proxy);

                foreach ($proxy->__getLazyProperties() as $property => $defaultValue) {
                    if ( ! array_key_exists($property, $existingProperties)) {
                        $proxy->$property = $defaultValue;
                    }
                }
            };

            unset($this->items);
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
    public function setEmpresa(\AppBundle\Entity\Empresa $empresa = NULL)
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
    public function addItem(\AppBundle\Entity\CombinacionItem $items)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'addItem', array($items));

        return parent::addItem($items);
    }

    /**
     * {@inheritDoc}
     */
    public function removeItem(\AppBundle\Entity\CombinacionItem $items)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'removeItem', array($items));

        return parent::removeItem($items);
    }

    /**
     * {@inheritDoc}
     */
    public function getItems()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getItems', array());

        return parent::getItems();
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
    public function setPrecio($precio)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setPrecio', array($precio));

        return parent::setPrecio($precio);
    }

    /**
     * {@inheritDoc}
     */
    public function getPrecio()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getPrecio', array());

        return parent::getPrecio();
    }

    /**
     * {@inheritDoc}
     */
    public function setMoneda(\AppBundle\Entity\Moneda $moneda = NULL)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setMoneda', array($moneda));

        return parent::setMoneda($moneda);
    }

    /**
     * {@inheritDoc}
     */
    public function getMoneda()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getMoneda', array());

        return parent::getMoneda();
    }

    /**
     * {@inheritDoc}
     */
    public function setSatclaveprodserv($satclaveprodserv)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setSatclaveprodserv', array($satclaveprodserv));

        return parent::setSatclaveprodserv($satclaveprodserv);
    }

    /**
     * {@inheritDoc}
     */
    public function getSatclaveprodserv()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getSatclaveprodserv', array());

        return parent::getSatclaveprodserv();
    }

    /**
     * {@inheritDoc}
     */
    public function setUnidad(\AppBundle\Entity\Unidad $unidad)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setUnidad', array($unidad));

        return parent::setUnidad($unidad);
    }

    /**
     * {@inheritDoc}
     */
    public function getUnidad()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getUnidad', array());

        return parent::getUnidad();
    }

}
