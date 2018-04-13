<?php

/* :producto_imagen:index.html.twig */
class __TwigTemplate_71bf278564c92f72d09dcbb2a079dac4b1aab8bdda9999257947a3b7a3f327ab extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":producto_imagen:index.html.twig", 1);
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
            <h3>";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute(($context["producto"] ?? null), "nombre", array()), "html", null, true);
        echo "</h3>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 14
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("productoimagen_new", array("idProducto" => $this->getAttribute(($context["producto"] ?? null), "id", array()))), "html", null, true);
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
                <th class=\"mdl-data-table__cell--non-numeric\"></th>
                <th class=\"mdl-data-table__cell--non-numeric\">Titulo</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Descripcion</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Activo</th>
                <th class=\"mdl-data-table__cell--non-numeric\">Operaciones</th>
            </tr>
        </thead>
        <tbody>
        ";
        // line 44
        $context["index"] = 0;
        // line 45
        echo "        ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["producto"] ?? null), "imagenes", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["imagen"]) {
            // line 46
            echo "            <tr>
                <td class=\"mdl-data-table__cell--non-numeric\"><img class=\"imagenproducto\" src=\"";
            // line 47
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("imagen_show", array("id" => $this->getAttribute($context["imagen"], "id", array()))), "html", null, true);
            echo "\" /></td>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 48
            echo twig_escape_filter($this->env, $this->getAttribute($context["imagen"], "titulo", array()), "html", null, true);
            echo "</td>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 49
            echo twig_escape_filter($this->env, $this->getAttribute($context["imagen"], "descripcion", array()), "html", null, true);
            echo "</td>
                <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 50
            if ($this->getAttribute($context["imagen"], "activo", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
                <td>
                    ";
            // line 52
            $context["idform"] = "form";
            // line 53
            echo "                    ";
            echo             $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock($this->getAttribute(($context["delete_views"] ?? null), ($context["index"] ?? null), array(), "array"), 'form_start', array("attr" => array("id" => ("form" . twig_number_format_filter($this->env, ($context["index"] ?? null))))));
            echo "
                        <a href=\"#\" onclick=\"confirmarBorrar(document.getElementById('form";
            // line 54
            echo twig_escape_filter($this->env, ($context["index"] ?? null), "html", null, true);
            echo "'));\"><i class=\"material-icons\">delete</i></a>
                    ";
            // line 55
            echo             $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock($this->getAttribute(($context["delete_views"] ?? null), ($context["index"] ?? null), array(), "array"), 'form_end');
            echo "
                </td>
            </tr>
            ";
            // line 58
            $context["index"] = (($context["index"] ?? null) + 1);
            // line 59
            echo "        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['imagen'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 60
        echo "        </tbody>
    </table>
    </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 67
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_index", array());
        echo "\" style=\"cursor:pointer;\">Volver a productos</a>
        </div>
    </div>

    <script>
        function confirmarBorrar(form) {
            if (confirm(\"¿Está seguro de borrar esta imagen?\"))
            {
                mostrarProgreso(true);
                form.action = form.action + '?idProducto=";
        // line 76
        echo twig_escape_filter($this->env, $this->getAttribute(($context["producto"] ?? null), "id", array()), "html", null, true);
        echo "';
                form.submit();
            }
        }
    </script>

    <style>
        .imagenproducto
        {
            width: 12em;
            height: 12em;
        }
    </style>
";
    }

    public function getTemplateName()
    {
        return ":producto_imagen:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  156 => 76,  144 => 67,  135 => 60,  129 => 59,  127 => 58,  121 => 55,  117 => 54,  112 => 53,  110 => 52,  101 => 50,  97 => 49,  93 => 48,  89 => 47,  86 => 46,  81 => 45,  79 => 44,  46 => 14,  36 => 7,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":producto_imagen:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/producto_imagen/index.html.twig");
    }
}
