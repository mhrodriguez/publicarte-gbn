<?php

/* :combinacionitem:show.html.twig */
class __TwigTemplate_6b370d7e3fd498f275da33cbcaae17dcc647be1ea84a481fc586dea709d5f4f7 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":combinacionitem:show.html.twig", 1);
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
        echo "    <h1>Combinacionitem</h1>

    <table>
        <tbody>
            <tr>
                <th>Id</th>
                <td>";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute(($context["combinacionItem"] ?? null), "id", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Cantidad</th>
                <td>";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute(($context["combinacionItem"] ?? null), "cantidad", array()), "html", null, true);
        echo "</td>
            </tr>
            <tr>
                <th>Incluido</th>
                <td>";
        // line 18
        if ($this->getAttribute(($context["combinacionItem"] ?? null), "incluido", array())) {
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
        // line 25
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacionitem_index");
        echo "\">Back to the list</a>
        </li>
        <li>
            <a href=\"";
        // line 28
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacionitem_edit", array("id" => $this->getAttribute(($context["combinacionItem"] ?? null), "id", array()))), "html", null, true);
        echo "\">Edit</a>
        </li>
        <li>
            ";
        // line 31
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_start');
        echo "
                <input type=\"submit\" value=\"Delete\">
            ";
        // line 33
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["delete_form"] ?? null), 'form_end');
        echo "
        </li>
    </ul>
";
    }

    public function getTemplateName()
    {
        return ":combinacionitem:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  84 => 33,  79 => 31,  73 => 28,  67 => 25,  53 => 18,  46 => 14,  39 => 10,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":combinacionitem:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/combinacionitem/show.html.twig");
    }
}
