<?php

/* :seccion:index.html.twig */
class __TwigTemplate_55e1daa48306675f2f982caa2c98c97da61c7dcdb69b5882cf37ebbc41e37cc2 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":seccion:index.html.twig", 1);
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
        echo "    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <h3>Secciones</h3>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 13
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("seccion_new", array("idSucursal" => $this->getAttribute(($context["sucursal"] ?? null), "id", array()))), "html", null, true);
        echo "'\">
                Nueva
            </button>
        </div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
        <div class=\"mdl-cell mdl-cell--1-col\"></div>
    </div>

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
        // line 41
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["sucursal"] ?? null), "secciones", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["seccion"]) {
            // line 42
            echo "                    <tr>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 43
            echo twig_escape_filter($this->env, $this->getAttribute($context["seccion"], "nombre", array()), "html", null, true);
            echo "</td>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 44
            if ($this->getAttribute($context["seccion"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                        <td>
                            <a href=\"";
            // line 46
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("seccion_edit", array("id" => $this->getAttribute($context["seccion"], "id", array()), "idSucursal" => $this->getAttribute(($context["sucursal"] ?? null), "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                            <a href=\"";
            // line 47
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("mesa_index", array("idSeccion" => $this->getAttribute($context["seccion"], "id", array()))), "html", null, true);
            echo "?backurl=";
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("seccion_index", array("idSucursal" => $this->getAttribute(($context["sucursal"] ?? null), "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">view_module</i></a>
                        </td>
                    </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['seccion'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 51
        echo "                </tbody>
            </table>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 58
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("sucursal_index");
        echo "\">Volver a sucursales</a>
        </div>
    </div>


";
    }

    public function getTemplateName()
    {
        return ":seccion:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  118 => 58,  109 => 51,  97 => 47,  93 => 46,  84 => 44,  80 => 43,  77 => 42,  73 => 41,  42 => 13,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":seccion:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/seccion/index.html.twig");
    }
}
