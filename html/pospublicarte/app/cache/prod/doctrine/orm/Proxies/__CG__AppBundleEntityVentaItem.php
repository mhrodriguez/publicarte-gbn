<?php

namespace Proxies\__CG__\AppBundle\Entity;

/**
 * DO NOT EDIT THIS FILE - IT WAS CREATED BY DOCTRINE'S PROXY GENERATOR
 */
class VentaItem extends \AppBundle\Entity\VentaItem implements \Doctrine\ORM\Proxy\Proxy
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
            return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'producto', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'descripcion', 'cantidad', 'precio', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'moneda', 'total', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'fecha', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satclaveprodserv', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satnoidentificacion', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satclaveunidad', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satunidad', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'activo');
        }

        return array('__isInitialized__', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'id', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'producto', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'descripcion', 'cantidad', 'precio', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'moneda', 'total', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'fecha', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satclaveprodserv', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satnoidentificacion', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satclaveunidad', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'satunidad', '' . "\0" . 'AppBundle\\Entity\\VentaItem' . "\0" . 'activo');
    }

    /**
     * 
     */
    public function __wakeup()
    {
        if ( ! $this->__isInitialized__) {
            $this->__initializer__ = function (VentaItem $proxy) {
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
    public function setDescripcion($descripcion)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setDescripcion', array($descripcion));

        return parent::setDescripcion($descripcion);
    }

    /**
     * {@inheritDoc}
     */
    public function getDescripcion()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getDescripcion', array());

        return parent::getDescripcion();
    }

    /**
     * {@inheritDoc}
     */
    public function setCantidad($cantidad)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setCantidad', array($cantidad));

        return parent::setCantidad($cantidad);
    }

    /**
     * {@inheritDoc}
     */
    public function getCantidad()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getCantidad', array());

        return parent::getCantidad();
    }

    /**
     * {@inheritDoc}
     */
    public function setTotal($total)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setTotal', array($total));

        return parent::setTotal($total);
    }

    /**
     * {@inheritDoc}
     */
    public function getTotal()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getTotal', array());

        return parent::getTotal();
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
    public function setMoneda(\AppBundle\Entity\Moneda $moneda)
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
    public function setFecha($fecha)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setFecha', array($fecha));

        return parent::setFecha($fecha);
    }

    /**
     * {@inheritDoc}
     */
    public function getFecha()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getFecha', array());

        return parent::getFecha();
    }

    /**
     * {@inheritDoc}
     */
    public function setProducto(\AppBundle\Entity\Producto $producto)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setProducto', array($producto));

        return parent::setProducto($producto);
    }

    /**
     * {@inheritDoc}
     */
    public function getProducto()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getProducto', array());

        return parent::getProducto();
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
    public function setSatnoidentificacion($satnoidentificacion)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setSatnoidentificacion', array($satnoidentificacion));

        return parent::setSatnoidentificacion($satnoidentificacion);
    }

    /**
     * {@inheritDoc}
     */
    public function getSatnoidentificacion()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getSatnoidentificacion', array());

        return parent::getSatnoidentificacion();
    }

    /**
     * {@inheritDoc}
     */
    public function setSatclaveunidad($satclaveunidad)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setSatclaveunidad', array($satclaveunidad));

        return parent::setSatclaveunidad($satclaveunidad);
    }

    /**
     * {@inheritDoc}
     */
    public function getSatclaveunidad()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getSatclaveunidad', array());

        return parent::getSatclaveunidad();
    }

    /**
     * {@inheritDoc}
     */
    public function setSatunidad($satunidad)
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setSatunidad', array($satunidad));

        return parent::setSatunidad($satunidad);
    }

    /**
     * {@inheritDoc}
     */
    public function getSatunidad()
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getSatunidad', array());

        return parent::getSatunidad();
    }

}