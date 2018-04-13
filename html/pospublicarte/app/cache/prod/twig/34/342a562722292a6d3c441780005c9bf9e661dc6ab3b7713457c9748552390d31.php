<?php

/* menu/cobranza.html.twig */
class __TwigTemplate_0a801061be2e98ff0a64210dd89b7a6f984aa43a55f96740285dc15dd7837213 extends Twig_Template
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
        echo "<span class=\"mdl-layout-title\">Cobranza</span>
<nav class=\"mdl-navigation\">
    <a class=\"mdl-navigation__link\" href=\"";
        // line 3
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelorden_indexfact");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">content_paste</i>&nbsp;&nbsp;Ordenes de Trabajo (Con Factura)</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 4
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelorden_indexesp");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">content_paste</i>&nbsp;&nbsp;Ordenes de Trabajo (Especiales)</a>
    <a class=\"mdl-navigation__link\" href=\"";
        // line 5
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelpago_index");
        echo "\"><i class=\"material-icons mdl-navigation__item-icon\">attach_money</i>&nbsp;&nbsp;Pagos</a>
</nav>";
    }

    public function getTemplateName()
    {
        return "menu/cobranza.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  31 => 5,  27 => 4,  23 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "menu/cobranza.html.twig", "/var/www/html/pospublicarte/app/Resources/views/menu/cobranza.html.twig");
    }
}
