<?php

/* :producto/relacionado:index.html.twig */
class __TwigTemplate_ee39b3819939c8876c1449d19dd6ea156334966516959b18f4b7a64166202c5a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":producto/relacionado:index.html.twig", 1);
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
        <h3>Relacionados a ";
        // line 6
        echo twig_escape_filter($this->env, $this->getAttribute(($context["productopadre"] ?? null), "nombre", array()), "html", null, true);
        echo "</h3>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 13
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_relacionadodependiente_new", array("idProducto" => $this->getAttribute(($context["productopadre"] ?? null), "id", array()))), "html", null, true);
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
                <th class=\"mdl-data-table__cell--non-numeric\">Nombre</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Categoria</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Subcategoria</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Precio</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Activo</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Operaciones</th>
            </tr>
        </thead>
        <tbody>
        ";
        // line 44
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 45
            echo "            <tr>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 46
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "</td>
                <td class=\"mdl-data-table__cell--non-numeric\">
                    ";
            // line 48
            if ( !twig_test_empty($this->getAttribute($context["producto"], "categoria", array()))) {
                // line 49
                echo "                    ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["producto"], "categoria", array()), "nombre", array()), "html", null, true);
                echo "
                    ";
            }
            // line 51
            echo "                </td>
                <td class=\"mdl-data-table__cell--non-numeric\">
                    ";
            // line 53
            if ( !twig_test_empty($this->getAttribute($context["producto"], "subcategoria", array()))) {
                // line 54
                echo "                    ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["producto"], "subcategoria", array()), "nombre", array()), "html", null, true);
                echo "
                    ";
            }
            // line 56
            echo "                </td>
                <td>";
            // line 57
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["producto"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "precio", array()), "html", null, true);
            echo "</td>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 58
            if ($this->getAttribute($context["producto"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                <td>
                    <a href=\"";
            // line 60
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_relacionadodependiente_edit", array("id" => $this->getAttribute($context["producto"], "id", array()), "idProducto" => $this->getAttribute(($context["productopadre"] ?? null), "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                    <span></span>
                    <a href=\"";
            // line 62
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("productoimagen_index", array("idProducto" => $this->getAttribute($context["producto"], "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">photo_library</i></a>
                    <span></span>
                    ";
            // line 64
            if ($this->getAttribute($context["producto"], "independiente", array())) {
                // line 65
                echo "                    <a href=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_relacionado_index", array("idProducto" => $this->getAttribute($context["producto"], "id", array()))), "html", null, true);
                echo "\"><i class=\"material-icons\">add</i></a>
                    ";
            }
            // line 67
            echo "                </td>
            </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 70
        echo "        </tbody>
    </table>
    </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 77
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_index");
        echo "\">Volver a productos</a></div>
    </div>
";
    }

    public function getTemplateName()
    {
        return ":producto/relacionado:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  163 => 77,  154 => 70,  146 => 67,  140 => 65,  138 => 64,  133 => 62,  128 => 60,  119 => 58,  114 => 57,  111 => 56,  105 => 54,  103 => 53,  99 => 51,  93 => 49,  91 => 48,  86 => 46,  83 => 45,  79 => 44,  45 => 13,  35 => 6,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":producto/relacionado:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/producto/relacionado/index.html.twig");
    }
}
