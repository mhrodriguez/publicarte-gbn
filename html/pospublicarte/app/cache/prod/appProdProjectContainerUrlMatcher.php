<?php

use Symfony\Component\Routing\Exception\MethodNotAllowedException;
use Symfony\Component\Routing\Exception\ResourceNotFoundException;
use Symfony\Component\Routing\RequestContext;

/**
 * appProdProjectContainerUrlMatcher.
 *
 * This class has been auto-generated
 * by the Symfony Routing Component.
 */
class appProdProjectContainerUrlMatcher extends Symfony\Bundle\FrameworkBundle\Routing\RedirectableUrlMatcher
{
    /**
     * Constructor.
     */
    public function __construct(RequestContext $context)
    {
        $this->context = $context;
    }

    public function match($pathinfo)
    {
        $allow = array();
        $pathinfo = rawurldecode($pathinfo);
        $context = $this->context;
        $request = $this->request;

        if (0 === strpos($pathinfo, '/c')) {
            if (0 === strpos($pathinfo, '/categoria')) {
                // categoria_index
                if (rtrim($pathinfo, '/') === '/categoria') {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_categoria_index;
                    }

                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'categoria_index');
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\CategoriaController::indexAction',  '_route' => 'categoria_index',);
                }
                not_categoria_index:

                // categoria_new
                if ($pathinfo === '/categoria/new') {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_categoria_new;
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\CategoriaController::newAction',  '_route' => 'categoria_new',);
                }
                not_categoria_new:

                // categoria_show
                if (preg_match('#^/categoria/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_categoria_show;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'categoria_show')), array (  '_controller' => 'AppBundle\\Controller\\CategoriaController::showAction',));
                }
                not_categoria_show:

                // categoria_edit
                if (preg_match('#^/categoria/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_categoria_edit;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'categoria_edit')), array (  '_controller' => 'AppBundle\\Controller\\CategoriaController::editAction',));
                }
                not_categoria_edit:

                // categoria_delete
                if (preg_match('#^/categoria/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'DELETE') {
                        $allow[] = 'DELETE';
                        goto not_categoria_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'categoria_delete')), array (  '_controller' => 'AppBundle\\Controller\\CategoriaController::deleteAction',));
                }
                not_categoria_delete:

            }

            if (0 === strpos($pathinfo, '/cliente')) {
                // cliente_index
                if (rtrim($pathinfo, '/') === '/cliente') {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_cliente_index;
                    }

                    if (substr($pathinfo, -1) !== '/') {
                        return $this->redirect($pathinfo.'/', 'cliente_index');
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\ClienteController::indexAction',  '_route' => 'cliente_index',);
                }
                not_cliente_index:

                // cliente_new
                if ($pathinfo === '/cliente/new') {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_cliente_new;
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\ClienteController::newAction',  '_route' => 'cliente_new',);
                }
                not_cliente_new:

                // cliente_show
                if (preg_match('#^/cliente/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_cliente_show;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'cliente_show')), array (  '_controller' => 'AppBundle\\Controller\\ClienteController::showAction',));
                }
                not_cliente_show:

                // cliente_edit
                if (preg_match('#^/cliente/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_cliente_edit;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'cliente_edit')), array (  '_controller' => 'AppBundle\\Controller\\ClienteController::editAction',));
                }
                not_cliente_edit:

                // cliente_delete
                if (preg_match('#^/cliente/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'DELETE') {
                        $allow[] = 'DELETE';
                        goto not_cliente_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'cliente_delete')), array (  '_controller' => 'AppBundle\\Controller\\ClienteController::deleteAction',));
                }
                not_cliente_delete:

            }

            if (0 === strpos($pathinfo, '/co')) {
                if (0 === strpos($pathinfo, '/combinacion')) {
                    // combinacion_index
                    if (rtrim($pathinfo, '/') === '/combinacion') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_combinacion_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'combinacion_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\CombinacionController::indexAction',  '_route' => 'combinacion_index',);
                    }
                    not_combinacion_index:

                    // combinacion_new
                    if ($pathinfo === '/combinacion/new') {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_combinacion_new;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\CombinacionController::newAction',  '_route' => 'combinacion_new',);
                    }
                    not_combinacion_new:

                    // combinacion_show
                    if (preg_match('#^/combinacion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_combinacion_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacion_show')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionController::showAction',));
                    }
                    not_combinacion_show:

                    // combinacion_edit
                    if (preg_match('#^/combinacion/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_combinacion_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacion_edit')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionController::editAction',));
                    }
                    not_combinacion_edit:

                    // combinacion_delete
                    if (preg_match('#^/combinacion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_combinacion_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacion_delete')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionController::deleteAction',));
                    }
                    not_combinacion_delete:

                    if (0 === strpos($pathinfo, '/combinacionitem')) {
                        // combinacionitem_index
                        if (0 === strpos($pathinfo, '/combinacionitem/index') && preg_match('#^/combinacionitem/index/(?P<idCombinacion>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_combinacionitem_index;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacionitem_index')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionItemController::indexAction',));
                        }
                        not_combinacionitem_index:

                        // combinacionitem_new
                        if (0 === strpos($pathinfo, '/combinacionitem/new') && preg_match('#^/combinacionitem/new/(?P<idCombinacion>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_combinacionitem_new;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacionitem_new')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionItemController::newAction',));
                        }
                        not_combinacionitem_new:

                        // combinacionitem_edit
                        if (preg_match('#^/combinacionitem/(?P<id>[^/]++)/edit/(?P<idCombinacion>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_combinacionitem_edit;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacionitem_edit')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionItemController::editAction',));
                        }
                        not_combinacionitem_edit:

                        // combinacionitem_delete
                        if (preg_match('#^/combinacionitem/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if ($this->context->getMethod() != 'DELETE') {
                                $allow[] = 'DELETE';
                                goto not_combinacionitem_delete;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'combinacionitem_delete')), array (  '_controller' => 'AppBundle\\Controller\\CombinacionItemController::deleteAction',));
                        }
                        not_combinacionitem_delete:

                    }

                }

                if (0 === strpos($pathinfo, '/contacto')) {
                    // contacto_index
                    if (preg_match('#^/contacto/(?P<idCliente>[^/]++)/index(?:\\.(?P<_format>html|json))?$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_contacto_index;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'contacto_index')), array (  '_format' => 'html',  '_controller' => 'AppBundle\\Controller\\ContactoController::indexAction',));
                    }
                    not_contacto_index:

                    // contacto_new
                    if (preg_match('#^/contacto/(?P<idCliente>[^/]++)/new$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_contacto_new;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'contacto_new')), array (  '_controller' => 'AppBundle\\Controller\\ContactoController::newAction',));
                    }
                    not_contacto_new:

                    // contacto_show
                    if (preg_match('#^/contacto/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_contacto_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'contacto_show')), array (  '_controller' => 'AppBundle\\Controller\\ContactoController::showAction',));
                    }
                    not_contacto_show:

                    // contacto_edit
                    if (preg_match('#^/contacto/(?P<id>[^/]++)/edit/(?P<idCliente>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_contacto_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'contacto_edit')), array (  '_controller' => 'AppBundle\\Controller\\ContactoController::editAction',));
                    }
                    not_contacto_edit:

                    // contacto_delete
                    if (preg_match('#^/contacto/(?P<id>[^/]++)/delete/(?P<idCliente>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_contacto_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'contacto_delete')), array (  '_controller' => 'AppBundle\\Controller\\ContactoController::deleteAction',));
                    }
                    not_contacto_delete:

                }

                if (0 === strpos($pathinfo, '/cortecaja')) {
                    // cortecaja_index
                    if (rtrim($pathinfo, '/') === '/cortecaja') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_cortecaja_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'cortecaja_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\CorteCajaController::indexAction',  '_route' => 'cortecaja_index',);
                    }
                    not_cortecaja_index:

                    // cortecaja_new
                    if ($pathinfo === '/cortecaja/new') {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_cortecaja_new;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\CorteCajaController::newAction',  '_route' => 'cortecaja_new',);
                    }
                    not_cortecaja_new:

                    // cortecaja_show
                    if (0 === strpos($pathinfo, '/cortecaja/show') && preg_match('#^/cortecaja/show\\.(?P<_format>html|xls)/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_cortecaja_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cortecaja_show')), array (  '_format' => 'html',  '_controller' => 'AppBundle\\Controller\\CorteCajaController::showAction',));
                    }
                    not_cortecaja_show:

                    // cortecaja_showxls
                    if (preg_match('#^/cortecaja/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_cortecaja_showxls;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cortecaja_showxls')), array (  '_controller' => 'AppBundle\\Controller\\CorteCajaController::showxslAction',));
                    }
                    not_cortecaja_showxls:

                    // cortecaja_edit
                    if (preg_match('#^/cortecaja/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_cortecaja_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cortecaja_edit')), array (  '_controller' => 'AppBundle\\Controller\\CorteCajaController::editAction',));
                    }
                    not_cortecaja_edit:

                    // cortecaja_delete
                    if (preg_match('#^/cortecaja/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_cortecaja_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cortecaja_delete')), array (  '_controller' => 'AppBundle\\Controller\\CorteCajaController::deleteAction',));
                    }
                    not_cortecaja_delete:

                }

                if (0 === strpos($pathinfo, '/cotizacion')) {
                    // cotizacion_index
                    if ($pathinfo === '/cotizacion/index') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_cotizacion_index;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::indexAction',  '_route' => 'cotizacion_index',);
                    }
                    not_cotizacion_index:

                    // cotizacion_new
                    if ($pathinfo === '/cotizacion/new') {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_cotizacion_new;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::newAction',  '_route' => 'cotizacion_new',);
                    }
                    not_cotizacion_new:

                    // cotizacion_show
                    if (preg_match('#^/cotizacion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_cotizacion_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_show')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::showAction',));
                    }
                    not_cotizacion_show:

                    if (0 === strpos($pathinfo, '/cotizacion/showp')) {
                        // cotizacion_showpdf
                        if (0 === strpos($pathinfo, '/cotizacion/showpdf') && preg_match('#^/cotizacion/showpdf/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_cotizacion_showpdf;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_showpdf')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::showpdfAction',));
                        }
                        not_cotizacion_showpdf:

                        // cotizacion_showprint
                        if (0 === strpos($pathinfo, '/cotizacion/showprint') && preg_match('#^/cotizacion/showprint/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_cotizacion_showprint;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_showprint')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::showprintAction',));
                        }
                        not_cotizacion_showprint:

                    }

                    // cotizacion_mail
                    if (0 === strpos($pathinfo, '/cotizacion/mail') && preg_match('#^/cotizacion/mail/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_cotizacion_mail;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_mail')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::mailAction',));
                    }
                    not_cotizacion_mail:

                    // cotizacion_edit
                    if (preg_match('#^/cotizacion/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_cotizacion_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_edit')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::editAction',));
                    }
                    not_cotizacion_edit:

                    // cotizacion_delete
                    if (preg_match('#^/cotizacion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_cotizacion_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_delete')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::deleteAction',));
                    }
                    not_cotizacion_delete:

                    // cotizacion_ordenar
                    if (preg_match('#^/cotizacion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'PUT') {
                            $allow[] = 'PUT';
                            goto not_cotizacion_ordenar;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'cotizacion_ordenar')), array (  '_controller' => 'AppBundle\\Controller\\CotizacionController::ordenarAction',));
                    }
                    not_cotizacion_ordenar:

                }

            }

        }

        // homepage
        if (rtrim($pathinfo, '/') === '') {
            if (substr($pathinfo, -1) !== '/') {
                return $this->redirect($pathinfo.'/', 'homepage');
            }

            return array (  '_controller' => 'AppBundle\\Controller\\DefaultController::indexAction',  '_route' => 'homepage',);
        }

        if (0 === strpos($pathinfo, '/empresa')) {
            // empresa_index
            if (rtrim($pathinfo, '/') === '/empresa') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_empresa_index;
                }

                if (substr($pathinfo, -1) !== '/') {
                    return $this->redirect($pathinfo.'/', 'empresa_index');
                }

                return array (  '_controller' => 'AppBundle\\Controller\\EmpresaController::indexAction',  '_route' => 'empresa_index',);
            }
            not_empresa_index:

            // empresa_new
            if ($pathinfo === '/empresa/new') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_empresa_new;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\EmpresaController::newAction',  '_route' => 'empresa_new',);
            }
            not_empresa_new:

            // empresa_show
            if (preg_match('#^/empresa/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_empresa_show;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'empresa_show')), array (  '_controller' => 'AppBundle\\Controller\\EmpresaController::showAction',));
            }
            not_empresa_show:

            // empresa_edit
            if (preg_match('#^/empresa/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_empresa_edit;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'empresa_edit')), array (  '_controller' => 'AppBundle\\Controller\\EmpresaController::editAction',));
            }
            not_empresa_edit:

            // empresa_delete
            if (preg_match('#^/empresa/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'DELETE') {
                    $allow[] = 'DELETE';
                    goto not_empresa_delete;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'empresa_delete')), array (  '_controller' => 'AppBundle\\Controller\\EmpresaController::deleteAction',));
            }
            not_empresa_delete:

        }

        if (0 === strpos($pathinfo, '/factura')) {
            // factura_index
            if (rtrim($pathinfo, '/') === '/factura') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_factura_index;
                }

                if (substr($pathinfo, -1) !== '/') {
                    return $this->redirect($pathinfo.'/', 'factura_index');
                }

                return array (  '_controller' => 'AppBundle\\Controller\\FacturaController::indexAction',  '_route' => 'factura_index',);
            }
            not_factura_index:

            // factura_new
            if ($pathinfo === '/factura/new') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_factura_new;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\FacturaController::newAction',  '_route' => 'factura_new',);
            }
            not_factura_new:

            // factura_show
            if (preg_match('#^/factura/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_factura_show;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'factura_show')), array (  '_controller' => 'AppBundle\\Controller\\FacturaController::showAction',));
            }
            not_factura_show:

            // factura_edit
            if (preg_match('#^/factura/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_factura_edit;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'factura_edit')), array (  '_controller' => 'AppBundle\\Controller\\FacturaController::editAction',));
            }
            not_factura_edit:

            // factura_delete
            if (preg_match('#^/factura/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'DELETE') {
                    $allow[] = 'DELETE';
                    goto not_factura_delete;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'factura_delete')), array (  '_controller' => 'AppBundle\\Controller\\FacturaController::deleteAction',));
            }
            not_factura_delete:

            // factura_cobrar
            if (0 === strpos($pathinfo, '/factura/cobrar') && preg_match('#^/factura/cobrar/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'PUT') {
                    $allow[] = 'PUT';
                    goto not_factura_cobrar;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'factura_cobrar')), array (  '_controller' => 'AppBundle\\Controller\\FacturaController::cobrarAction',));
            }
            not_factura_cobrar:

        }

        // imagen_show
        if (0 === strpos($pathinfo, '/imagen') && preg_match('#^/imagen/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                $allow = array_merge($allow, array('GET', 'HEAD'));
                goto not_imagen_show;
            }

            return $this->mergeDefaults(array_replace($matches, array('_route' => 'imagen_show')), array (  '_controller' => 'AppBundle\\Controller\\ImagenController::showAction',));
        }
        not_imagen_show:

        // mediopago_index
        if (0 === strpos($pathinfo, '/mediopago') && preg_match('#^/mediopago/(?P<idMetodoPago>[^/]++)/index(?:\\.(?P<_format>html|json))?$#s', $pathinfo, $matches)) {
            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                $allow = array_merge($allow, array('GET', 'HEAD'));
                goto not_mediopago_index;
            }

            return $this->mergeDefaults(array_replace($matches, array('_route' => 'mediopago_index')), array (  '_format' => 'html',  '_controller' => 'AppBundle\\Controller\\MedioPagoController::indexAction',));
        }
        not_mediopago_index:

        if (0 === strpos($pathinfo, '/orden')) {
            // orden_index
            if (rtrim($pathinfo, '/') === '/orden') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_orden_index;
                }

                if (substr($pathinfo, -1) !== '/') {
                    return $this->redirect($pathinfo.'/', 'orden_index');
                }

                return array (  '_controller' => 'AppBundle\\Controller\\OrdenController::indexAction',  '_route' => 'orden_index',);
            }
            not_orden_index:

            if (0 === strpos($pathinfo, '/orden/index')) {
                // orden_indexfact
                if ($pathinfo === '/orden/indexfact') {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_orden_indexfact;
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\OrdenController::indexfactAction',  '_route' => 'orden_indexfact',);
                }
                not_orden_indexfact:

                // orden_indexesp
                if ($pathinfo === '/orden/indexesp') {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_orden_indexesp;
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\OrdenController::indexespAction',  '_route' => 'orden_indexesp',);
                }
                not_orden_indexesp:

            }

            // orden_new
            if ($pathinfo === '/orden/new') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_orden_new;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\OrdenController::newAction',  '_route' => 'orden_new',);
            }
            not_orden_new:

            // orden_hnew
            if ($pathinfo === '/orden/hnew') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_orden_hnew;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\OrdenController::hnewAction',  '_route' => 'orden_hnew',);
            }
            not_orden_hnew:

            // orden_show
            if (preg_match('#^/orden/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_orden_show;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_show')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::showAction',));
            }
            not_orden_show:

            if (0 === strpos($pathinfo, '/orden/showp')) {
                // orden_showprint
                if (0 === strpos($pathinfo, '/orden/showprint') && preg_match('#^/orden/showprint/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_orden_showprint;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_showprint')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::showprintAction',));
                }
                not_orden_showprint:

                // orden_showpdf
                if (0 === strpos($pathinfo, '/orden/showpdf') && preg_match('#^/orden/showpdf/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_orden_showpdf;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_showpdf')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::showpdfAction',));
                }
                not_orden_showpdf:

            }

            // orden_edit
            if (preg_match('#^/orden/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_orden_edit;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_edit')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::editAction',));
            }
            not_orden_edit:

            // orden_editfact
            if (preg_match('#^/orden/(?P<id>[^/]++)/editfact$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_orden_editfact;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_editfact')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::editfactAction',));
            }
            not_orden_editfact:

            // orden_editesp
            if (preg_match('#^/orden/(?P<id>[^/]++)/editesp$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_orden_editesp;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_editesp')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::editespAction',));
            }
            not_orden_editesp:

            // orden_delete
            if (preg_match('#^/orden/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'DELETE') {
                    $allow[] = 'DELETE';
                    goto not_orden_delete;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_delete')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::deleteAction',));
            }
            not_orden_delete:

            // orden_factura
            if (0 === strpos($pathinfo, '/orden/factura') && preg_match('#^/orden/factura/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'PUT') {
                    $allow[] = 'PUT';
                    goto not_orden_factura;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_factura')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::facturaAction',));
            }
            not_orden_factura:

            // orden_cobrar
            if (0 === strpos($pathinfo, '/orden/orden') && preg_match('#^/orden/orden/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'PUT') {
                    $allow[] = 'PUT';
                    goto not_orden_cobrar;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_cobrar')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::cobrarAction',));
            }
            not_orden_cobrar:

            if (0 === strpos($pathinfo, '/orden/clonar')) {
                // orden_clonar
                if (preg_match('#^/orden/clonar/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'PUT') {
                        $allow[] = 'PUT';
                        goto not_orden_clonar;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_clonar')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::clonarAction',));
                }
                not_orden_clonar:

                // orden_clonar2
                if (0 === strpos($pathinfo, '/orden/clonar2') && preg_match('#^/orden/clonar2/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'PUT') {
                        $allow[] = 'PUT';
                        goto not_orden_clonar2;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_clonar2')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::clonarAction2',));
                }
                not_orden_clonar2:

                // orden_clonar3
                if (0 === strpos($pathinfo, '/orden/clonar3') && preg_match('#^/orden/clonar3/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'PUT') {
                        $allow[] = 'PUT';
                        goto not_orden_clonar3;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'orden_clonar3')), array (  '_controller' => 'AppBundle\\Controller\\OrdenController::clonarAction3',));
                }
                not_orden_clonar3:

            }

        }

        if (0 === strpos($pathinfo, '/p')) {
            if (0 === strpos($pathinfo, '/pa')) {
                if (0 === strpos($pathinfo, '/pago')) {
                    // pago_notificacion
                    if (0 === strpos($pathinfo, '/pago/notificacion') && preg_match('#^/pago/notificacion(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_pago_notificacion;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_notificacion')), array (  '_format' => 'json',  '_controller' => 'AppBundle\\Controller\\PagoController::notificacionAction',));
                    }
                    not_pago_notificacion:

                    // pago_index
                    if (preg_match('#^/pago/(?P<idOrden>[^/]++)/index$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_pago_index;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_index')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::indexAction',));
                    }
                    not_pago_index:

                    // pago_estadistica
                    if ($pathinfo === '/pago/estadistica') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_pago_estadistica;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PagoController::estadisticaAction',  '_route' => 'pago_estadistica',);
                    }
                    not_pago_estadistica:

                    // pago_new
                    if (preg_match('#^/pago/(?P<idOrden>[^/]++)/new$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_pago_new;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_new')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::newAction',));
                    }
                    not_pago_new:

                    // pago_show
                    if (preg_match('#^/pago/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_pago_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_show')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::showAction',));
                    }
                    not_pago_show:

                    if (0 === strpos($pathinfo, '/pago/showp')) {
                        // pago_showprint
                        if (0 === strpos($pathinfo, '/pago/showprint') && preg_match('#^/pago/showprint/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_pago_showprint;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_showprint')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::showprintAction',));
                        }
                        not_pago_showprint:

                        // pago_showpdf
                        if (0 === strpos($pathinfo, '/pago/showpdf') && preg_match('#^/pago/showpdf/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_pago_showpdf;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_showpdf')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::showpdfAction',));
                        }
                        not_pago_showpdf:

                    }

                    if (0 === strpos($pathinfo, '/pago/edit')) {
                        // pago_edit
                        if (preg_match('#^/pago/edit/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_pago_edit;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_edit')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::editAction',));
                        }
                        not_pago_edit:

                        // pago_edit2
                        if (0 === strpos($pathinfo, '/pago/edit2') && preg_match('#^/pago/edit2/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_pago_edit2;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_edit2')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::editAction2',));
                        }
                        not_pago_edit2:

                    }

                    // pago_delete
                    if (preg_match('#^/pago/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_pago_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_delete')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::deleteAction',));
                    }
                    not_pago_delete:

                    if (0 === strpos($pathinfo, '/pago/validar')) {
                        // pago_validar
                        if (preg_match('#^/pago/validar/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if ($this->context->getMethod() != 'PUT') {
                                $allow[] = 'PUT';
                                goto not_pago_validar;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_validar')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::validarAction',));
                        }
                        not_pago_validar:

                        // pago_validar2
                        if (0 === strpos($pathinfo, '/pago/validar2') && preg_match('#^/pago/validar2/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if ($this->context->getMethod() != 'PUT') {
                                $allow[] = 'PUT';
                                goto not_pago_validar2;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'pago_validar2')), array (  '_controller' => 'AppBundle\\Controller\\PagoController::validarAction2',));
                        }
                        not_pago_validar2:

                    }

                }

                if (0 === strpos($pathinfo, '/panel')) {
                    if (0 === strpos($pathinfo, '/panelc')) {
                        // panelcliente_index
                        if (rtrim($pathinfo, '/') === '/panelcliente') {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_panelcliente_index;
                            }

                            if (substr($pathinfo, -1) !== '/') {
                                return $this->redirect($pathinfo.'/', 'panelcliente_index');
                            }

                            return array (  '_controller' => 'AppBundle\\Controller\\PanelClienteController::indexAction',  '_route' => 'panelcliente_index',);
                        }
                        not_panelcliente_index:

                        if (0 === strpos($pathinfo, '/panelco')) {
                            // panelcortecaja_index
                            if (rtrim($pathinfo, '/') === '/panelcortecaja') {
                                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                    $allow = array_merge($allow, array('GET', 'HEAD'));
                                    goto not_panelcortecaja_index;
                                }

                                if (substr($pathinfo, -1) !== '/') {
                                    return $this->redirect($pathinfo.'/', 'panelcortecaja_index');
                                }

                                return array (  '_controller' => 'AppBundle\\Controller\\PanelCorteCajaController::indexAction',  '_route' => 'panelcortecaja_index',);
                            }
                            not_panelcortecaja_index:

                            // panelcotizacion_index
                            if (rtrim($pathinfo, '/') === '/panelcotizacion') {
                                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                    $allow = array_merge($allow, array('GET', 'HEAD'));
                                    goto not_panelcotizacion_index;
                                }

                                if (substr($pathinfo, -1) !== '/') {
                                    return $this->redirect($pathinfo.'/', 'panelcotizacion_index');
                                }

                                return array (  '_controller' => 'AppBundle\\Controller\\PanelCotizacionController::indexAction',  '_route' => 'panelcotizacion_index',);
                            }
                            not_panelcotizacion_index:

                        }

                    }

                    if (0 === strpos($pathinfo, '/panelfactura')) {
                        // panelfactura_index
                        if (rtrim($pathinfo, '/') === '/panelfactura') {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_panelfactura_index;
                            }

                            if (substr($pathinfo, -1) !== '/') {
                                return $this->redirect($pathinfo.'/', 'panelfactura_index');
                            }

                            return array (  '_controller' => 'AppBundle\\Controller\\PanelFacturaController::indexAction',  '_route' => 'panelfactura_index',);
                        }
                        not_panelfactura_index:

                        // panelfactura_misfacturas
                        if ($pathinfo === '/panelfactura/misfacturas') {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_panelfactura_misfacturas;
                            }

                            return array (  '_controller' => 'AppBundle\\Controller\\PanelFacturaController::misfacturasAction',  '_route' => 'panelfactura_misfacturas',);
                        }
                        not_panelfactura_misfacturas:

                    }

                    if (0 === strpos($pathinfo, '/panelorden')) {
                        // panelorden_index
                        if (rtrim($pathinfo, '/') === '/panelorden') {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_panelorden_index;
                            }

                            if (substr($pathinfo, -1) !== '/') {
                                return $this->redirect($pathinfo.'/', 'panelorden_index');
                            }

                            return array (  '_controller' => 'AppBundle\\Controller\\PanelOrdenController::indexAction',  '_route' => 'panelorden_index',);
                        }
                        not_panelorden_index:

                        if (0 === strpos($pathinfo, '/panelorden/index')) {
                            // panelorden_indexfact
                            if ($pathinfo === '/panelorden/indexfact') {
                                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                    $allow = array_merge($allow, array('GET', 'HEAD'));
                                    goto not_panelorden_indexfact;
                                }

                                return array (  '_controller' => 'AppBundle\\Controller\\PanelOrdenController::indexfactAction',  '_route' => 'panelorden_indexfact',);
                            }
                            not_panelorden_indexfact:

                            // panelorden_indexesp
                            if ($pathinfo === '/panelorden/indexesp') {
                                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                    $allow = array_merge($allow, array('GET', 'HEAD'));
                                    goto not_panelorden_indexesp;
                                }

                                return array (  '_controller' => 'AppBundle\\Controller\\PanelOrdenController::indexespAction',  '_route' => 'panelorden_indexesp',);
                            }
                            not_panelorden_indexesp:

                        }

                    }

                    if (0 === strpos($pathinfo, '/panelp')) {
                        // panelpago_index
                        if (rtrim($pathinfo, '/') === '/panelpago') {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_panelpago_index;
                            }

                            if (substr($pathinfo, -1) !== '/') {
                                return $this->redirect($pathinfo.'/', 'panelpago_index');
                            }

                            return array (  '_controller' => 'AppBundle\\Controller\\PanelPagoController::indexAction',  '_route' => 'panelpago_index',);
                        }
                        not_panelpago_index:

                        if (0 === strpos($pathinfo, '/panelpr')) {
                            // panelprincipal_index
                            if (rtrim($pathinfo, '/') === '/panelprincipal') {
                                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                    $allow = array_merge($allow, array('GET', 'HEAD'));
                                    goto not_panelprincipal_index;
                                }

                                if (substr($pathinfo, -1) !== '/') {
                                    return $this->redirect($pathinfo.'/', 'panelprincipal_index');
                                }

                                return array (  '_controller' => 'AppBundle\\Controller\\PanelPrincipalController::indexAction',  '_route' => 'panelprincipal_index',);
                            }
                            not_panelprincipal_index:

                            // panelproducto_index
                            if (rtrim($pathinfo, '/') === '/panelproducto') {
                                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                    $allow = array_merge($allow, array('GET', 'HEAD'));
                                    goto not_panelproducto_index;
                                }

                                if (substr($pathinfo, -1) !== '/') {
                                    return $this->redirect($pathinfo.'/', 'panelproducto_index');
                                }

                                return array (  '_controller' => 'AppBundle\\Controller\\PanelProductoController::indexAction',  '_route' => 'panelproducto_index',);
                            }
                            not_panelproducto_index:

                        }

                    }

                    // panelsucursal_index
                    if (rtrim($pathinfo, '/') === '/panelsucursal') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_panelsucursal_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'panelsucursal_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PanelSucursalController::indexAction',  '_route' => 'panelsucursal_index',);
                    }
                    not_panelsucursal_index:

                    // panelusuario_index
                    if (rtrim($pathinfo, '/') === '/panelusuario') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_panelusuario_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'panelusuario_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PanelUsuarioController::indexAction',  '_route' => 'panelusuario_index',);
                    }
                    not_panelusuario_index:

                    // panelventa_index
                    if (rtrim($pathinfo, '/') === '/panelventa') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_panelventa_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'panelventa_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PanelVentaController::indexAction',  '_route' => 'panelventa_index',);
                    }
                    not_panelventa_index:

                }

            }

            if (0 === strpos($pathinfo, '/pr')) {
                if (0 === strpos($pathinfo, '/principal')) {
                    // principal_index
                    if (rtrim($pathinfo, '/') === '/principal') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_principal_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'principal_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PrincipalController::indexAction',  '_route' => 'principal_index',);
                    }
                    not_principal_index:

                    // principal_empresa_index
                    if ($pathinfo === '/principal/empresa') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_principal_empresa_index;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PrincipalController::indexEmpresaAction',  '_route' => 'principal_empresa_index',);
                    }
                    not_principal_empresa_index:

                    // principal_vendedor_index
                    if ($pathinfo === '/principal/vendedor') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_principal_vendedor_index;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\PrincipalController::indexVendedorAction',  '_route' => 'principal_vendedor_index',);
                    }
                    not_principal_vendedor_index:

                }

                if (0 === strpos($pathinfo, '/producto')) {
                    // producto_index
                    if (rtrim($pathinfo, '/') === '/producto') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_producto_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'producto_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\ProductoController::indexAction',  '_route' => 'producto_index',);
                    }
                    not_producto_index:

                    // producto_new
                    if ($pathinfo === '/producto/new') {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_producto_new;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\ProductoController::newAction',  '_route' => 'producto_new',);
                    }
                    not_producto_new:

                    // producto_edit
                    if (preg_match('#^/producto/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_producto_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'producto_edit')), array (  '_controller' => 'AppBundle\\Controller\\ProductoController::editAction',));
                    }
                    not_producto_edit:

                    // producto_show
                    if (preg_match('#^/producto/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_producto_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'producto_show')), array (  '_controller' => 'AppBundle\\Controller\\ProductoController::showAction',));
                    }
                    not_producto_show:

                    // producto_delete
                    if (preg_match('#^/producto/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_producto_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'producto_delete')), array (  '_controller' => 'AppBundle\\Controller\\ProductoController::deleteAction',));
                    }
                    not_producto_delete:

                    // producto_relacionado_index
                    if (0 === strpos($pathinfo, '/producto/relacionado/index') && preg_match('#^/producto/relacionado/index/(?P<idProducto>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_producto_relacionado_index;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'producto_relacionado_index')), array (  '_controller' => 'AppBundle\\Controller\\ProductoController::indexRelacionadoAction',));
                    }
                    not_producto_relacionado_index:

                    if (0 === strpos($pathinfo, '/productorelacionadodependiente')) {
                        // producto_relacionadodependiente_new
                        if (0 === strpos($pathinfo, '/productorelacionadodependiente/new') && preg_match('#^/productorelacionadodependiente/new/(?P<idProducto>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_producto_relacionadodependiente_new;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'producto_relacionadodependiente_new')), array (  '_controller' => 'AppBundle\\Controller\\ProductoController::newRelacionadoDependienteAction',));
                        }
                        not_producto_relacionadodependiente_new:

                        // producto_relacionadodependiente_edit
                        if (preg_match('#^/productorelacionadodependiente/(?P<id>[^/]++)/edit/(?P<idProducto>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_producto_relacionadodependiente_edit;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'producto_relacionadodependiente_edit')), array (  '_controller' => 'AppBundle\\Controller\\ProductoController::editRelacionadoDependienteAction',));
                        }
                        not_producto_relacionadodependiente_edit:

                    }

                    if (0 === strpos($pathinfo, '/productoimagen')) {
                        // productoimagen_index
                        if (0 === strpos($pathinfo, '/productoimagen/index') && preg_match('#^/productoimagen/index/(?P<idProducto>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_productoimagen_index;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'productoimagen_index')), array (  '_controller' => 'AppBundle\\Controller\\ProductoImagenController::indexAction',));
                        }
                        not_productoimagen_index:

                        // productoimagen_new
                        if (0 === strpos($pathinfo, '/productoimagen/new') && preg_match('#^/productoimagen/new/(?P<idProducto>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_productoimagen_new;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'productoimagen_new')), array (  '_controller' => 'AppBundle\\Controller\\ProductoImagenController::newAction',));
                        }
                        not_productoimagen_new:

                        // productoimagen_show
                        if (preg_match('#^/productoimagen/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'HEAD'));
                                goto not_productoimagen_show;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'productoimagen_show')), array (  '_controller' => 'AppBundle\\Controller\\ProductoImagenController::showAction',));
                        }
                        not_productoimagen_show:

                        // imagen_edit
                        if (preg_match('#^/productoimagen/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                            if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                                $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                                goto not_imagen_edit;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'imagen_edit')), array (  '_controller' => 'AppBundle\\Controller\\ProductoImagenController::editAction',));
                        }
                        not_imagen_edit:

                        // imagen_delete
                        if (preg_match('#^/productoimagen/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                            if ($this->context->getMethod() != 'DELETE') {
                                $allow[] = 'DELETE';
                                goto not_imagen_delete;
                            }

                            return $this->mergeDefaults(array_replace($matches, array('_route' => 'imagen_delete')), array (  '_controller' => 'AppBundle\\Controller\\ProductoImagenController::deleteAction',));
                        }
                        not_imagen_delete:

                    }

                }

            }

        }

        if (0 === strpos($pathinfo, '/s')) {
            if (0 === strpos($pathinfo, '/seccion')) {
                // seccion_index
                if (0 === strpos($pathinfo, '/seccion/index') && preg_match('#^/seccion/index/(?P<idSucursal>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_seccion_index;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'seccion_index')), array (  '_controller' => 'AppBundle\\Controller\\SeccionController::indexAction',));
                }
                not_seccion_index:

                // seccion_new
                if (0 === strpos($pathinfo, '/seccion/new') && preg_match('#^/seccion/new/(?P<idSucursal>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_seccion_new;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'seccion_new')), array (  '_controller' => 'AppBundle\\Controller\\SeccionController::newAction',));
                }
                not_seccion_new:

                // seccion_show
                if (preg_match('#^/seccion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'HEAD'));
                        goto not_seccion_show;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'seccion_show')), array (  '_controller' => 'AppBundle\\Controller\\SeccionController::showAction',));
                }
                not_seccion_show:

                // seccion_edit
                if (preg_match('#^/seccion/(?P<id>[^/]++)/edit/(?P<idSucursal>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_seccion_edit;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'seccion_edit')), array (  '_controller' => 'AppBundle\\Controller\\SeccionController::editAction',));
                }
                not_seccion_edit:

                // seccion_delete
                if (preg_match('#^/seccion/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'DELETE') {
                        $allow[] = 'DELETE';
                        goto not_seccion_delete;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'seccion_delete')), array (  '_controller' => 'AppBundle\\Controller\\SeccionController::deleteAction',));
                }
                not_seccion_delete:

            }

            if (0 === strpos($pathinfo, '/su')) {
                if (0 === strpos($pathinfo, '/subcategoria')) {
                    // subcategoria_index
                    if (0 === strpos($pathinfo, '/subcategoria/index') && preg_match('#^/subcategoria/index(?:\\.(?P<_format>html|json))?$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_subcategoria_index;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'subcategoria_index')), array (  '_format' => 'html',  '_controller' => 'AppBundle\\Controller\\SubcategoriaController::indexAction',));
                    }
                    not_subcategoria_index:

                    // subcategoria_new
                    if ($pathinfo === '/subcategoria/new') {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_subcategoria_new;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\SubcategoriaController::newAction',  '_route' => 'subcategoria_new',);
                    }
                    not_subcategoria_new:

                    // subcategoria_edit
                    if (preg_match('#^/subcategoria/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_subcategoria_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'subcategoria_edit')), array (  '_controller' => 'AppBundle\\Controller\\SubcategoriaController::editAction',));
                    }
                    not_subcategoria_edit:

                    // subcategoria_delete
                    if (preg_match('#^/subcategoria/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_subcategoria_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'subcategoria_delete')), array (  '_controller' => 'AppBundle\\Controller\\SubcategoriaController::deleteAction',));
                    }
                    not_subcategoria_delete:

                }

                if (0 === strpos($pathinfo, '/sucursal')) {
                    // sucursal_index
                    if (rtrim($pathinfo, '/') === '/sucursal') {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_sucursal_index;
                        }

                        if (substr($pathinfo, -1) !== '/') {
                            return $this->redirect($pathinfo.'/', 'sucursal_index');
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\SucursalController::indexAction',  '_route' => 'sucursal_index',);
                    }
                    not_sucursal_index:

                    // sucursal_new
                    if ($pathinfo === '/sucursal/new') {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_sucursal_new;
                        }

                        return array (  '_controller' => 'AppBundle\\Controller\\SucursalController::newAction',  '_route' => 'sucursal_new',);
                    }
                    not_sucursal_new:

                    // sucursal_show
                    if (preg_match('#^/sucursal/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'HEAD'));
                            goto not_sucursal_show;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'sucursal_show')), array (  '_controller' => 'AppBundle\\Controller\\SucursalController::showAction',));
                    }
                    not_sucursal_show:

                    // sucursal_edit
                    if (preg_match('#^/sucursal/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                        if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                            $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                            goto not_sucursal_edit;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'sucursal_edit')), array (  '_controller' => 'AppBundle\\Controller\\SucursalController::editAction',));
                    }
                    not_sucursal_edit:

                    // sucursal_delete
                    if (preg_match('#^/sucursal/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'DELETE') {
                            $allow[] = 'DELETE';
                            goto not_sucursal_delete;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'sucursal_delete')), array (  '_controller' => 'AppBundle\\Controller\\SucursalController::deleteAction',));
                    }
                    not_sucursal_delete:

                }

            }

        }

        if (0 === strpos($pathinfo, '/usuario')) {
            // login
            if ($pathinfo === '/usuario/login') {
                return array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::loginAction',  '_route' => 'login',);
            }

            // usuario_index
            if ($pathinfo === '/usuario/index') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_usuario_index;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::indexAction',  '_route' => 'usuario_index',);
            }
            not_usuario_index:

            // usuario_new
            if ($pathinfo === '/usuario/new') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_usuario_new;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::newAction',  '_route' => 'usuario_new',);
            }
            not_usuario_new:

            // usuario_edit
            if (preg_match('#^/usuario/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_usuario_edit;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'usuario_edit')), array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::editAction',));
            }
            not_usuario_edit:

            // usuario_miperfil
            if ($pathinfo === '/usuario/miperfil') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_usuario_miperfil;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::miperfilAction',  '_route' => 'usuario_miperfil',);
            }
            not_usuario_miperfil:

            if (0 === strpos($pathinfo, '/usuario/change')) {
                // usuario_changemypassword
                if ($pathinfo === '/usuario/changemypassword') {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_usuario_changemypassword;
                    }

                    return array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::changemypasswordAction',  '_route' => 'usuario_changemypassword',);
                }
                not_usuario_changemypassword:

                // usuario_changepassword
                if (0 === strpos($pathinfo, '/usuario/changepassword') && preg_match('#^/usuario/changepassword/(?P<idUsuario>[^/]++)$#s', $pathinfo, $matches)) {
                    if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                        $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                        goto not_usuario_changepassword;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'usuario_changepassword')), array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::changepasswordAction',));
                }
                not_usuario_changepassword:

            }

            // usuario_show
            if (preg_match('#^/usuario/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_usuario_show;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'usuario_show')), array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::showAction',));
            }
            not_usuario_show:

            // usuario_delete
            if (preg_match('#^/usuario/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'DELETE') {
                    $allow[] = 'DELETE';
                    goto not_usuario_delete;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'usuario_delete')), array (  '_controller' => 'AppBundle\\Controller\\UsuarioController::deleteAction',));
            }
            not_usuario_delete:

        }

        if (0 === strpos($pathinfo, '/venta')) {
            // venta_index
            if (rtrim($pathinfo, '/') === '/venta') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_venta_index;
                }

                if (substr($pathinfo, -1) !== '/') {
                    return $this->redirect($pathinfo.'/', 'venta_index');
                }

                return array (  '_controller' => 'AppBundle\\Controller\\VentaController::indexAction',  '_route' => 'venta_index',);
            }
            not_venta_index:

            // venta_indexgrf
            if ($pathinfo === '/venta/indexgrf') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_venta_indexgrf;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\VentaController::indexgrfAction',  '_route' => 'venta_indexgrf',);
            }
            not_venta_indexgrf:

            // venta_comparativoanualgrf
            if ($pathinfo === '/venta/comparativogrf') {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_venta_comparativoanualgrf;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\VentaController::comparativoanualgrfAction',  '_route' => 'venta_comparativoanualgrf',);
            }
            not_venta_comparativoanualgrf:

            // venta_new
            if ($pathinfo === '/venta/new') {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_venta_new;
                }

                return array (  '_controller' => 'AppBundle\\Controller\\VentaController::newAction',  '_route' => 'venta_new',);
            }
            not_venta_new:

            // venta_show
            if (preg_match('#^/venta/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'HEAD'));
                    goto not_venta_show;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'venta_show')), array (  '_controller' => 'AppBundle\\Controller\\VentaController::showAction',));
            }
            not_venta_show:

            // venta_edit
            if (preg_match('#^/venta/(?P<id>[^/]++)/edit$#s', $pathinfo, $matches)) {
                if (!in_array($this->context->getMethod(), array('GET', 'POST', 'HEAD'))) {
                    $allow = array_merge($allow, array('GET', 'POST', 'HEAD'));
                    goto not_venta_edit;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'venta_edit')), array (  '_controller' => 'AppBundle\\Controller\\VentaController::editAction',));
            }
            not_venta_edit:

            // venta_delete
            if (preg_match('#^/venta/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                if ($this->context->getMethod() != 'DELETE') {
                    $allow[] = 'DELETE';
                    goto not_venta_delete;
                }

                return $this->mergeDefaults(array_replace($matches, array('_route' => 'venta_delete')), array (  '_controller' => 'AppBundle\\Controller\\VentaController::deleteAction',));
            }
            not_venta_delete:

        }

        if (0 === strpos($pathinfo, '/ws')) {
            if (0 === strpos($pathinfo, '/ws/co')) {
                // wscombinacion_listado
                if (0 === strpos($pathinfo, '/ws/combinacion/listado') && preg_match('#^/ws/combinacion/listado(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wscombinacion_listado')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_CombinacionController::listadoAction',));
                }

                if (0 === strpos($pathinfo, '/ws/cortecaja')) {
                    // wscortecaja_info
                    if (0 === strpos($pathinfo, '/ws/cortecaja/info') && preg_match('#^/ws/cortecaja/info(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wscortecaja_info')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_CorteCajaController::infoAction',));
                    }

                    // wscortecaja_cerrarcaja
                    if (0 === strpos($pathinfo, '/ws/cortecaja/cerrarcaja') && preg_match('#^/ws/cortecaja/cerrarcaja(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wscortecaja_cerrarcaja')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_CorteCajaController::cerrarCaja',));
                    }

                    // wscortecaja_obtener
                    if (0 === strpos($pathinfo, '/ws/cortecaja/obtener') && preg_match('#^/ws/cortecaja/obtener(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wscortecaja_obtener')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_CorteCajaController::obtenerAction',));
                    }

                }

                if (0 === strpos($pathinfo, '/ws/cotizacion')) {
                    // wscotizacion_nueva
                    if (0 === strpos($pathinfo, '/ws/cotizacion/nueva') && preg_match('#^/ws/cotizacion/nueva(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        if ($this->context->getMethod() != 'POST') {
                            $allow[] = 'POST';
                            goto not_wscotizacion_nueva;
                        }

                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wscotizacion_nueva')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_CotizacionController::nuevaAction',));
                    }
                    not_wscotizacion_nueva:

                    // wscotizacion_listadocanceladas
                    if (0 === strpos($pathinfo, '/ws/cotizacion/listadocanceladas') && preg_match('#^/ws/cotizacion/listadocanceladas(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wscotizacion_listadocanceladas')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_CotizacionController::listadocanceladasAction',));
                    }

                }

            }

            // wsimagen_descargar
            if (0 === strpos($pathinfo, '/ws/imagen/descargar') && preg_match('#^/ws/imagen/descargar/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsimagen_descargar')), array (  '_controller' => 'WSBundle\\Controller\\WS_ImagenController::descargarAction',));
            }

            if (0 === strpos($pathinfo, '/ws/producto/listado')) {
                // wsproducto_listado
                if (preg_match('#^/ws/producto/listado(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsproducto_listado')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_ProductoController::listadoAction',));
                }

                // wsproducto_listadocompleto
                if (0 === strpos($pathinfo, '/ws/producto/listadocompleto') && preg_match('#^/ws/producto/listadocompleto(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsproducto_listadocompleto')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_ProductoController::listadocompletoAction',));
                }

                // wsproducto_listadocategoria
                if (0 === strpos($pathinfo, '/ws/producto/listadoporcategoria') && preg_match('#^/ws/producto/listadoporcategoria(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsproducto_listadocategoria')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_ProductoController::listadoporcategoriaAction',));
                }

            }

            if (0 === strpos($pathinfo, '/ws/s')) {
                // wsseccion_syncronizar
                if (0 === strpos($pathinfo, '/ws/seccion/sincronizar') && preg_match('#^/ws/seccion/sincronizar(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsseccion_syncronizar')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_SeccionController::sincronizarAction',));
                }

                if (0 === strpos($pathinfo, '/ws/sucursal')) {
                    // wssucursal_obtener
                    if (0 === strpos($pathinfo, '/ws/sucursal/obtener') && preg_match('#^/ws/sucursal/obtener\\.(?P<_format>json)/(?P<id>[^/]++)$#s', $pathinfo, $matches)) {
                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wssucursal_obtener')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_SucursalController::obtenerAction',));
                    }

                    // wssucursal_dataultimaversion
                    if (0 === strpos($pathinfo, '/ws/sucursal/dataultimaversion') && preg_match('#^/ws/sucursal/dataultimaversion(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                        return $this->mergeDefaults(array_replace($matches, array('_route' => 'wssucursal_dataultimaversion')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_SucursalController::dataultimaversionAction',));
                    }

                }

            }

            if (0 === strpos($pathinfo, '/ws/usuario')) {
                // wsusuario_login
                if (0 === strpos($pathinfo, '/ws/usuario/login') && preg_match('#^/ws/usuario/login(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsusuario_login')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_UsuarioController::loginAction',));
                }

                // wsusuario_index
                if (0 === strpos($pathinfo, '/ws/usuario/perfil') && preg_match('#^/ws/usuario/perfil\\.(?P<_format>json)/(?P<token>[^/]++)$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsusuario_index')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_UsuarioController::perfilAction',));
                }

            }

            if (0 === strpos($pathinfo, '/ws/venta/nueva')) {
                // wsventa_nueva
                if (preg_match('#^/ws/venta/nueva(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsventa_nueva')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_VentaController::nuevaAction',));
                }

                // wsventa_nueva2
                if (0 === strpos($pathinfo, '/ws/venta/nueva2') && preg_match('#^/ws/venta/nueva2(?:\\.(?P<_format>json))?$#s', $pathinfo, $matches)) {
                    if ($this->context->getMethod() != 'POST') {
                        $allow[] = 'POST';
                        goto not_wsventa_nueva2;
                    }

                    return $this->mergeDefaults(array_replace($matches, array('_route' => 'wsventa_nueva2')), array (  '_format' => 'json',  '_controller' => 'WSBundle\\Controller\\WS_VentaController::nueva2Action',));
                }
                not_wsventa_nueva2:

            }

        }

        // logout
        if ($pathinfo === '/logout') {
            return array('_route' => 'logout');
        }

        throw 0 < count($allow) ? new MethodNotAllowedException(array_unique($allow)) : new ResourceNotFoundException();
    }
}
