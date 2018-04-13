<?php

/* :contacto:show.html.twig */
class __TwigTemplate_3b316d88afc4a50ae516bddf70bb97b1972e088a0da9d8886de46dca86ae23f4 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":contacto:show.html.twig", 1);
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
        echo "    <h1>Contacto</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Nombre</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "nombre", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Puesto</th>
                <td>";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "puesto", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Correo</th>
                <td>";
        // line 22
        echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "correo", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Correofacturacion</th>
                <td>";
        // line 26
        echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "correofacturacion", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Telefono</th>
                <td>";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "telefono", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Activo</th>
                <td>";
        // line 34
        if ($this->getAttribute(($context["contacto"] ?? null), "activo", array())) {
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
        // line 41
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("contacto_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 44
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("contacto_edit", array("id" => $this->getAttribute(($context["contacto"] ?? null), "id", array()))), "html", null, true);
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
        return ":contacto:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  112 => 49,  107 => 47,  101 => 44,  95 => 41,  81 => 34,  74 => 30,  67 => 26,  60 => 22,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":contacto:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/contacto/show.html.twig");
    }
}
