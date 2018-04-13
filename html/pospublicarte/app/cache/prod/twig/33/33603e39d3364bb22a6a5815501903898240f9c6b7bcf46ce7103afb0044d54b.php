<?php

/* :combinacion:index.html.twig */
class __TwigTemplate_0bdd6574923c4c1eac2714db2664110684b3e635b1348755b21129d9d7992ff9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 2
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":combinacion:index.html.twig", 2);
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

    // line 4
    public function block_body($context, array $blocks = array())
    {
        // line 5
        echo "
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <h3>Combinaciones</h3>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 15
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacion_new", array());
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
                    <th>Precio</th>
                    <th class=\"mdl-data-table__cell--non-numeric\">Activo</th>
                    <th class=\"mdl-data-table__cell--non-numeric\">Operaciones</th>
                </tr>
                </thead>
                <tbody>
                ";
        // line 44
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["combinaciones"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["combinacion"]) {
            // line 45
            echo "                    <tr>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 46
            echo twig_escape_filter($this->env, $this->getAttribute($context["combinacion"], "nombre", array()), "html", null, true);
            echo "</td>
                        <td>";
            // line 47
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["combinacion"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo twig_escape_filter($this->env, $this->getAttribute($context["combinacion"], "precio", array()), "html", null, true);
            echo "</td>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 48
            if ($this->getAttribute($context["combinacion"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                        <td>
                            <a href=\"";
            // line 50
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacion_edit", array("id" => $this->getAttribute($context["combinacion"], "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                            <a href=\"";
            // line 51
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacionitem_index", array("idCombinacion" => $this->getAttribute($context["combinacion"], "id", array()))), "html", null, true);
            echo "\">
                                ";
            // line 52
            if (($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "user", array()), "empresa", array()), "tipo", array()), "id", array()) == 2)) {
                // line 53
                echo "                                    <i class=\"material-icons\">local_dining</i>
                                ";
            } else {
                // line 55
                echo "                                    <i class=\"material-icons\">local_mall</i>
                                ";
            }
            // line 57
            echo "                            </a>
                        </td>
                    </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['combinacion'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 61
        echo "                </tbody>
            </table>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 68
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_index");
        echo "\">Volver a productos</a>
        </div>
    </div>

";
    }

    public function getTemplateName()
    {
        return ":combinacion:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  136 => 68,  127 => 61,  118 => 57,  114 => 55,  110 => 53,  108 => 52,  104 => 51,  100 => 50,  91 => 48,  86 => 47,  82 => 46,  79 => 45,  75 => 44,  43 => 15,  31 => 5,  28 => 4,  11 => 2,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":combinacion:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/combinacion/index.html.twig");
    }
}
