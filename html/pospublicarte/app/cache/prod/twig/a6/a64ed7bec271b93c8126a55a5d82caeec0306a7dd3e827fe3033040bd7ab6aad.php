<?php

/* :combinacionitem:index.html.twig */
class __TwigTemplate_93295fc2f72f3c24dab67a2ea70562aa6c96f34805c8e09dd2dcac5f4145f2f6 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":combinacionitem:index.html.twig", 1);
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
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <h3>Combinación ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute(($context["combinacion"] ?? null), "nombre", array()), "html", null, true);
        echo "</h3>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 14
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacionitem_new", array("idCombinacion" => $this->getAttribute(($context["combinacion"] ?? null), "id", array()))), "html", null, true);
        echo "'\">
                Nuevo
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
                    <th class=\"mdl-data-table__cell--non-numeric\">Categoria</th>
                    <th class=\"mdl-data-table__cell--non-numeric\">Subcategoria</th>
                    <th>Cantidad</th>
                    <th class=\"mdl-data-table__cell--non-numeric\">Incluido en el precio</th>
                    <th>Operaciones</th>
                </tr>
                </thead>
                <tbody>
                ";
        // line 44
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["combinacion"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["combinacionItem"]) {
            // line 45
            echo "                    <tr>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 46
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["combinacionItem"], "categoria", array()), "nombre", array()), "html", null, true);
            echo "</td>
                        <td class=\"mdl-data-table__cell--non-numeric\">
                            ";
            // line 48
            if ( !(null === $this->getAttribute($context["combinacionItem"], "subcategoria", array()))) {
                // line 49
                echo "                            ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["combinacionItem"], "subcategoria", array()), "nombre", array()), "html", null, true);
                echo "
                            ";
            }
            // line 51
            echo "                        </td>
                        <td>";
            // line 52
            echo twig_escape_filter($this->env, $this->getAttribute($context["combinacionItem"], "cantidad", array()), "html", null, true);
            echo "</td>
                        <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 53
            if ($this->getAttribute($context["combinacionItem"], "incluido", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                        <td>
                            <a href=\"";
            // line 55
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacionitem_edit", array("id" => $this->getAttribute($context["combinacionItem"], "id", array()), "idCombinacion" => $this->getAttribute(($context["combinacion"] ?? null), "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                        </td>
                    </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['combinacionItem'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 59
        echo "                </tbody>
            </table>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 66
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacion_index");
        echo "\">Volver a combinaciones</a>
        </div>
    </div>

";
    }

    public function getTemplateName()
    {
        return ":combinacionitem:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  134 => 66,  125 => 59,  115 => 55,  106 => 53,  102 => 52,  99 => 51,  93 => 49,  91 => 48,  86 => 46,  83 => 45,  79 => 44,  46 => 14,  36 => 7,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":combinacionitem:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/combinacionitem/index.html.twig");
    }
}
