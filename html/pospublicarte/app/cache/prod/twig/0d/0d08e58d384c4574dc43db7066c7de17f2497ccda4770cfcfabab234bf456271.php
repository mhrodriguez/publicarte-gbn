<?php

/* :combinacion:new.html.twig */
class __TwigTemplate_e9b20c0f09f83e824888b14a7ccc3fd1ae4761b3b7308e1bd5de62d203bfc8fd extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":combinacion:new.html.twig", 1);
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
            <span class=\"mdl-layout-title\">Nueva Combinación</span>

            ";
        // line 9
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "mostrarProgreso(true); return true;")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 14
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "nombre", array()), 'widget');
        echo "
                        ";
        // line 15
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "nombre", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 23
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "precio", array()), 'widget', array("attr" => array("pattern" => "?[0-9]*(.[0-9]+)?")));
        echo "
                        ";
        // line 24
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "precio", array()), 'label');
        echo "
                        <span class=\"mdl-textfield__error\">Precio debe ser numérico</span>
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label id=\"lblMonedaNombre\" class=\"mdl-label\">
                        ";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "moneda", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 33
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "moneda", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Crear</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 43
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacion_index", array());
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>

            ";
        // line 47
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 50
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "nombre", array()), 'errors');
        echo "
                ";
        // line 51
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "precio", array()), 'errors');
        echo "
                ";
        // line 52
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "moneda", array()), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        \$('form input').addClass('mdl-textfield__input');
        \$('.mdl-textfield label').addClass('mdl-textfield__label');
    </script>

";
    }

    public function getTemplateName()
    {
        return ":combinacion:new.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  114 => 52,  110 => 51,  106 => 50,  100 => 47,  93 => 43,  80 => 33,  74 => 30,  65 => 24,  61 => 23,  50 => 15,  46 => 14,  38 => 9,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":combinacion:new.html.twig", "/var/www/html/pospublicarte/app/Resources/views/combinacion/new.html.twig");
    }
}
