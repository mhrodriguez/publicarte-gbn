<?php

/* :categoria:index.html.twig */
class __TwigTemplate_5482013c6ab2da99455518fdc26d4e65dcee7a862835bcf3d31e1b785e36b6ef extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":categoria:index.html.twig", 1);
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
    <h3>Categorias</h3>
    </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 13
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("categoria_new");
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
                <th class=\"mdl-data-table__cell--non-numeric\">Activo</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Operaciones</th>
            </tr>
        </thead>
        <tbody>
        ";
        // line 41
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categorias"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["categorium"]) {
            // line 42
            echo "            <tr>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 43
            echo twig_escape_filter($this->env, $this->getAttribute($context["categorium"], "nombre", array()), "html", null, true);
            echo "</td>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 44
            if ($this->getAttribute($context["categorium"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                <td>
                    <a href=\"";
            // line 46
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("categoria_edit", array("id" => $this->getAttribute($context["categorium"], "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
                </td>
            </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['categorium'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 50
        echo "        </tbody>
    </table>
    </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 57
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_index");
        echo "\">Volver a productos</a>
        </div>
    </div>


";
    }

    public function getTemplateName()
    {
        return ":categoria:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  112 => 57,  103 => 50,  93 => 46,  84 => 44,  80 => 43,  77 => 42,  73 => 41,  42 => 13,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":categoria:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/categoria/index.html.twig");
    }
}
