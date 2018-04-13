<?php

/* :venta:show.html.twig */
class __TwigTemplate_c0eef6f7dfb51f6388c147ce5d4bd137333dab536692e13312784698f48018bc extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":venta:show.html.twig", 1);
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
        echo "    <h1>Ventum</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Subtotal</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "subtotal", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Iva</th>
                <td>";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "iva", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Total</th>
                <td>";
        // line 22
        echo twig_escape_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "total", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Propina</th>
                <td>";
        // line 26
        echo twig_escape_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "propina", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Ticket</th>
                <td>";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "ticket", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Fecha</th>
                <td>";
        // line 34
        if ($this->getAttribute(($context["ventum"] ?? null), "fecha", array())) {
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["ventum"] ?? null), "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
        }
        echo "</td>
            </tr>
            <tr>
                <th>Activo</th>
                <td>";
        // line 38
        if ($this->getAttribute(($context["ventum"] ?? null), "activo", array())) {
            echo "Yes";
        } else {
            echo "No";
        }
        echo "</td>
            </tr>
            <tr>
                <th>Facturada</th>
                <td>";
        // line 42
        if ($this->getAttribute(($context["ventum"] ?? null), "facturada", array())) {
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
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 52
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_edit", array("id" => $this->getAttribute(($context["ventum"] ?? null), "id", array()))), "html", null, true);
        echo "\">Edit</a>
        </li>
        <li>
            ";
        // line 55
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_start');
        echo "
                <input type=\"submit\" value=\"Delete\">
            ";
        // line 57
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_end');
        echo "
        </li>
    </ul>
";
    }

    public function getTemplateName()
    {
        return ":venta:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  132 => 57,  127 => 55,  121 => 52,  115 => 49,  101 => 42,  90 => 38,  81 => 34,  74 => 30,  67 => 26,  60 => 22,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":venta:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/venta/show.html.twig");
    }
}
