<?php

/* :sucursal:index.html.twig */
class __TwigTemplate_2402319de7dbf8c59f4ad1a7243476fa058d0b56fdb34021dcc9469a8c5fc15c extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":sucursal:index.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "baseabc.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_body($context, array $blocks = array())
    {
        // line 4
        echo "
    <div class=\"mdl-grid\"></div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <table class=\"mdl-data-table mdl-js-data-table mdl-shadow--2dp\">
                <thead>
                <tr>
                    <th class=\"mdl-data-table__cell--non-numeric\">Nombre</th>
                    <th class=\"mdl-data-table__cell--non-numeric\">Activo</th>
                    <th class=\"mdl-data-table__cell--non-numeric\">Operaciones</th>
                </tr>
                </thead>
                <tbody>
                ";
        // line 18
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["sucursales"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["sucursal"]) {
            // line 19
            echo "                    <tr>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 20
            echo twig_escape_filter($this->env, $this->getAttribute($context["sucursal"], "nombre", array()), "html", null, true);
            echo "</td>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 21
            if ($this->getAttribute($context["sucursal"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                        <td>
                            <a href=\"";
            // line 23
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("sucursal_edit", array("id" => $this->getAttribute($context["sucursal"], "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                            <a href=\"";
            // line 24
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("seccion_index", array("idSucursal" => $this->getAttribute($context["sucursal"], "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">border_outer</i></a>
                        </td>
                    </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sucursal'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 28
        echo "                </tbody>
            </table>
        </div>
    </div>

";
    }

    public function getTemplateName()
    {
        return ":sucursal:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  81 => 28,  71 => 24,  67 => 23,  58 => 21,  54 => 20,  51 => 19,  47 => 18,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":sucursal:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/sucursal/index.html.twig");
    }
}
