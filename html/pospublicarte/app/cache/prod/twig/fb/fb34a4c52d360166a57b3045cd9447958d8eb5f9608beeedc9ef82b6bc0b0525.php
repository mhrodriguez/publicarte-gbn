<?php

/* :cliente:show.html.twig */
class __TwigTemplate_27cca5c595af57b2225197eb84cd6ada289276ee83fcf89a3b16cc9f0833d95b extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":cliente:show.html.twig", 1);
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
        echo "    <h1>Cliente</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Rfc</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "rfc", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Razonsocial</th>
                <td>";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "razonsocial", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Cp</th>
                <td>";
        // line 22
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "cp", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Municipio</th>
                <td>";
        // line 26
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "municipio", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Colonia</th>
                <td>";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "colonia", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Calle</th>
                <td>";
        // line 34
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "calle", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Numext</th>
                <td>";
        // line 38
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "numext", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Numint</th>
                <td>";
        // line 42
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "numint", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Localidad</th>
                <td>";
        // line 46
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "localidad", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Correo</th>
                <td>";
        // line 50
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "correo", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Telefono</th>
                <td>";
        // line 54
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "telefono", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Activo</th>
                <td>";
        // line 58
        if ($this->getAttribute(($context["cliente"] ?? null), "activo", array())) {
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
        // line 65
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cliente_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 68
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cliente_edit", array("id" => $this->getAttribute(($context["cliente"] ?? null), "id", array()))), "html", null, true);
        echo "\">Edit</a>
        </li>
        <li>
            ";
        // line 71
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_start');
        echo "
                <input type=\"submit\" value=\"Delete\">
            ";
        // line 73
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_end');
        echo "
        </li>
    </ul>
";
    }

    public function getTemplateName()
    {
        return ":cliente:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  154 => 73,  149 => 71,  143 => 68,  137 => 65,  123 => 58,  116 => 54,  109 => 50,  102 => 46,  95 => 42,  88 => 38,  81 => 34,  74 => 30,  67 => 26,  60 => 22,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cliente:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cliente/show.html.twig");
    }
}
