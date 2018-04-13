<?php

/* :cotizacion:showpdf.html.twig */
class __TwigTemplate_b21eed65a8e1e2e06be87be3ff0b20a6302f4018dee8271809b5a9f0dce76dd6 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":cotizacion:showpdf.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_body($context, array $blocks = array())
    {
        // line 4
        echo "    <h1>Cotizacion</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Subtotal</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "subtotal", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Iva</th>
                <td>";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "iva", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Total</th>
                <td>";
        // line 22
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "total", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Motivocancelacion</th>
                <td>";
        // line 26
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "motivocancelacion", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Fecha</th>
                <td>";
        // line 30
        if ($this->getAttribute(($context["cotizacion"] ?? null), "fecha", array())) {
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
        }
        echo "</td>
            </tr>
            <tr>
                <th>Fechavalida</th>
                <td>";
        // line 34
        if ($this->getAttribute(($context["cotizacion"] ?? null), "fechavalida", array())) {
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fechavalida", array()), "Y-m-d H:i:s"), "html", null, true);
        }
        echo "</td>
            </tr>
            <tr>
                <th>Fecharecepcion</th>
                <td>";
        // line 38
        if ($this->getAttribute(($context["cotizacion"] ?? null), "fecharecepcion", array())) {
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecharecepcion", array()), "Y-m-d H:i:s"), "html", null, true);
        }
        echo "</td>
            </tr>
            <tr>
                <th>Activo</th>
                <td>";
        // line 42
        if ($this->getAttribute(($context["cotizacion"] ?? null), "activo", array())) {
            echo "Yes";
        } else {
            echo "No";
        }
        echo "</td>
            </tr>
        </tbody>
    </table>

    <ul>
        <li>
            <a href=\"";
        // line 49
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 52
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_edit", array("id" => $this->getAttribute(($context["cotizacion"] ?? null), "id", array()))), "html", null, true);
        echo "\">Edit</a>
        </li>
    </ul>
";
    }

    public function getTemplateName()
    {
        return ":cotizacion:showpdf.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  121 => 52,  115 => 49,  101 => 42,  92 => 38,  83 => 34,  74 => 30,  67 => 26,  60 => 22,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cotizacion:showpdf.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/showpdf.html.twig");
    }
}
