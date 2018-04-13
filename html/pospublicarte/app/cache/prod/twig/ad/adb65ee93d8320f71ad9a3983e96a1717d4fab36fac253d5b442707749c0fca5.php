<?php

/* :menu:empresa.html.twig */
class __TwigTemplate_570a1042eb7eebffb76856d92d2b91a0d1ec6e2cd26ebc5b3e6f293544fec331 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<span class=\"mdl-layout-title\">Empresa</span>
<nav class=\"mdl-navigation\">
    <!--a class=\"mdl-navigation__link\" href=\"";
        // line 3
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelprincipal_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">home</i>&nbsp;&nbsp;Principal</a-->
    <a class=\"mdl-navigation__link\" href=\"";
        // line 4
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelcliente_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">thumb_up</i>&nbsp;&nbsp;Clientes</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 5
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelproducto_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">build</i>&nbsp;&nbsp;Servicios</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 6
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelcotizacion_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">shopping_cart</i>&nbsp;&nbsp;Cotizaciones</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 7
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelorden_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">content_paste</i>&nbsp;&nbsp;Ordenes de Trabajo</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 8
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelorden_indexfact");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">content_paste</i>&nbsp;&nbsp;Ordenes de Trabajo (Con Factura)</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 9
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelorden_indexesp");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">content_paste</i>&nbsp;&nbsp;Ordenes de Trabajo (Especiales)</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 10
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelpago_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">attach_money</i>&nbsp;&nbsp;Pagos</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 11
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelusuario_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">person</i>&nbsp;&nbsp;Usuarios</a>
</nav>";
    }

    public function getTemplateName()
    {
        return ":menu:empresa.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  55 => 11,  51 => 10,  47 => 9,  43 => 8,  39 => 7,  35 => 6,  31 => 5,  27 => 4,  23 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":menu:empresa.html.twig", "/var/www/html/pospublicarte/app/Resources/views/menu/empresa.html.twig");
    }
}
