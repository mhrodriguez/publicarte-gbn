<?php

/* :mesa:index.html.twig */
class __TwigTemplate_3f3b7b35a6785f04256fd079ee9cf48248e75553de4c2f9abb29335f7aebd41e extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":mesa:index.html.twig", 1);
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
            <h3>Mesas de ";
        // line 6
        echo twig_escape_filter($this->env, $this->getAttribute(($context["seccion"] ?? null), "nombre", array()), "html", null, true);
        echo "</h3>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 13
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("mesa_new", array("idSeccion" => $this->getAttribute(($context["seccion"] ?? null), "id", array()))), "html", null, true);
        echo "?backurl=";
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("mesa_index", array("idSeccion" => $this->getAttribute(($context["seccion"] ?? null), "id", array()))), "html", null, true);
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
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["seccion"] ?? null), "mesas", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["mesa"]) {
            // line 42
            echo "                    <tr>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 43
            echo twig_escape_filter($this->env, $this->getAttribute($context["mesa"], "nombre", array()), "html", null, true);
            echo "</td>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 44
            if ($this->getAttribute($context["mesa"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                        <td>
                            <a href=\"";
            // line 46
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("mesa_edit", array("id" => $this->getAttribute($context["mesa"], "id", array()))), "html", null, true);
            echo "?backurl=";
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("mesa_index", array("idSeccion" => $this->getAttribute(($context["seccion"] ?? null), "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                        </td>
                    </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mesa'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 50
        echo "                </tbody>
            </table>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 57
        echo twig_escape_filter($this->env, ($context["backurl"] ?? null), "html", null, true);
        echo "\">Volver a secciones</a>
        </div>
    </div>


";
    }

    public function getTemplateName()
    {
        return ":mesa:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  119 => 57,  110 => 50,  98 => 46,  89 => 44,  85 => 43,  82 => 42,  78 => 41,  45 => 13,  35 => 6,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":mesa:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/mesa/index.html.twig");
    }
}
