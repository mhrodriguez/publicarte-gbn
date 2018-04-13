<?php

/* :factura:show.html.twig */
class __TwigTemplate_984dcbaf6f1e495a63b406001ada62f067bd65f68ac21bdbbc4e835f093b473a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":factura:show.html.twig", 1);
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
        echo "    <h1>Factura</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Folio</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "folio", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Subtotal</th>
                <td>";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "subtotal", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Iva</th>
                <td>";
        // line 22
        echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "iva", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Total</th>
                <td>";
        // line 26
        echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "total", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Xmlsello</th>
                <td>";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "xmlsello", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Fecha</th>
                <td>";
        // line 34
        if ($this->getAttribute(($context["factura"] ?? null), "fecha", array())) {
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
        }
        echo "</td>
            </tr>
        </tbody>
    </table>

    <ul>
        <li>
            <a href=\"";
        // line 41
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("factura_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 44
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("factura_edit", array("id" => $this->getAttribute(($context["factura"] ?? null), "id", array()))), "html", null, true);
        echo "\">Edit</a>
        </li>
        <li>
            ";
        // line 47
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_start');
        echo "
                <input type=\"submit\" value=\"Delete\">
            ";
        // line 49
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_end');
        echo "
        </li>
    </ul>
";
    }

    public function getTemplateName()
    {
        return ":factura:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  110 => 49,  105 => 47,  99 => 44,  93 => 41,  81 => 34,  74 => 30,  67 => 26,  60 => 22,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":factura:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/factura/show.html.twig");
    }
}
