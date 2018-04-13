<?php

/* :pago:show.html.twig */
class __TwigTemplate_35671a47b1d9abde34fcc3213b889952f534a977686f1a81b4ce2947d926cdc9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":pago:show.html.twig", 1);
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
        echo "    <h1>Pago</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Concepto</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "concepto", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Monto</th>
                <td>";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "monto", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Fecha</th>
                <td>";
        // line 22
        if ($this->getAttribute(($context["pago"] ?? null), "fecha", array())) {
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
        }
        echo "</td>
            </tr>
            <tr>
                <th>Validado</th>
                <td>";
        // line 26
        if ($this->getAttribute(($context["pago"] ?? null), "validado", array())) {
            echo "Yes";
        } else {
            echo "No";
        }
        echo "</td>
            </tr>
            <tr>
                <th>Activo</th>
                <td>";
        // line 30
        if ($this->getAttribute(($context["pago"] ?? null), "activo", array())) {
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
        // line 37
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 40
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_edit", array("id" => $this->getAttribute(($context["pago"] ?? null), "id", array()))), "html", null, true);
        echo "\">Edit</a>
        </li>
        <li>
            ";
        // line 43
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_start');
        echo "
                <input type=\"submit\" value=\"Delete\">
            ";
        // line 45
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_end');
        echo "
        </li>
    </ul>
";
    }

    public function getTemplateName()
    {
        return ":pago:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  111 => 45,  106 => 43,  100 => 40,  94 => 37,  80 => 30,  69 => 26,  60 => 22,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":pago:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/pago/show.html.twig");
    }
}
