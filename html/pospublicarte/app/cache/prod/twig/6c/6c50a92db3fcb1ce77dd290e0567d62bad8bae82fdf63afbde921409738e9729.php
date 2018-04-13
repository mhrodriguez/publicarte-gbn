<?php

/* :menu:menu.html.twig */
class __TwigTemplate_39f5d22a39db31074118852178621a39fcb6aef3e9094547409cb13465ef204f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
            // line 2
            echo "    ";
            $this->loadTemplate("menu/empresa.html.twig", ":menu:menu.html.twig", 2)->display($context);
        }
        // line 4
        echo "
";
        // line 5
        if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_VENDEDOR")) {
            // line 6
            echo "    ";
            $this->loadTemplate("menu/vendedor.html.twig", ":menu:menu.html.twig", 6)->display($context);
        }
        // line 8
        echo "
";
        // line 9
        if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_COBRANZA")) {
            // line 10
            echo "    ";
            $this->loadTemplate("menu/cobranza.html.twig", ":menu:menu.html.twig", 10)->display($context);
        }
    }

    public function getTemplateName()
    {
        return ":menu:menu.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  39 => 10,  37 => 9,  34 => 8,  30 => 6,  28 => 5,  25 => 4,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":menu:menu.html.twig", "/var/www/html/pospublicarte/app/Resources/views/menu/menu.html.twig");
    }
}
