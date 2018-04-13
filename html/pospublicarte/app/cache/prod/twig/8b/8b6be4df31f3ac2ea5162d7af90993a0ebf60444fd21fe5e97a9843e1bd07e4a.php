<?php

/* :usuario:index.html.twig */
class __TwigTemplate_3919b49829543066a746209f4cd5e2b89f881e188d30be81bc46f4dd8dd3d5bd extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":usuario:index.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 7
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_new");
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
            <th class=\"mdl-data-table__cell--non-numeric\">Nombre de usuario</th>
            <th class=\"mdl-data-table__cell--non-numeric\">Nombre</th>
            <th class=\"mdl-data-table__cell--non-numeric\">Apellidos</th>
            <th class=\"mdl-data-table__cell--non-numeric\">E-mail</th>
            <th class=\"mdl-data-table__cell--non-numeric\">Roles</th>
            <th class=\"mdl-data-table__cell--non-numeric\">Sucursales</th>
            <th class=\"mdl-data-table__cell--non-numeric\">Activo</th>
            <th class=\"mdl-data-table__cell--non-numeric\">Operaciones</th>
        </tr>
        </thead>
        <tbody>
        ";
        // line 40
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["usuarios"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["usuario"]) {
            // line 41
            echo "        <tr>
            <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 42
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "username", array()), "html", null, true);
            echo "</td>
            <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 43
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "nombre", array()), "html", null, true);
            echo "</td>
            <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 44
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "apellidos", array()), "html", null, true);
            echo "</td>
            <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 45
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "email", array()), "html", null, true);
            echo "</td>

            <td class=\"mdl-data-table__cell--non-numeric\">
                ";
            // line 48
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["usuario"], "roles2", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["rol"]) {
                // line 49
                echo "                    ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["rol"], "descripcion", array()), "html", null, true);
                echo "<br>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rol'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 51
            echo "            </td>

            <td class=\"mdl-data-table__cell--non-numeric\">
                ";
            // line 54
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["usuario"], "sucursales", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["sucursal"]) {
                // line 55
                echo "                    ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["sucursal"], "nombre", array()), "html", null, true);
                echo "<br>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sucursal'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 57
            echo "            </td>

            <td class=\"mdl-data-table__cell--non-numeric\">";
            // line 59
            if ($this->getAttribute($context["usuario"], "isActive", array())) {
                echo "Si";
            } else {
                echo "No";
            }
            echo "</td>
            <td class=\"mdl-data-table__cell--non-numeric\">
                <a href=\"";
            // line 61
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_edit", array("id" => $this->getAttribute($context["usuario"], "id", array()))), "html", null, true);
            echo "\"><i class=\"material-icons\">edit</i></a>
            </td>
        </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['usuario'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 65
        echo "        </tbody>
    </table>
    </div>
    </div>

    <style>
        button
        {
            margin-bottom: 1em;
        }
    </style>

";
    }

    public function getTemplateName()
    {
        return ":usuario:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  151 => 65,  141 => 61,  132 => 59,  128 => 57,  119 => 55,  115 => 54,  110 => 51,  101 => 49,  97 => 48,  91 => 45,  87 => 44,  83 => 43,  79 => 42,  76 => 41,  72 => 40,  36 => 7,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":usuario:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/usuario/index.html.twig");
    }
}
