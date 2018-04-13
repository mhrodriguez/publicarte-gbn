<?php

/* :producto:new.html.twig */
class __TwigTemplate_6e2bf2949c51b3e2e04172ebd4cb938f874f98c6127d2f459c3e7f6269d11607 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":producto:new.html.twig", 1);
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
        <span class=\"mdl-layout-title\">Nuevo Servicio</span>

    ";
        // line 9
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "datasubmit(); mostrarProgreso(true); return true;")));
        echo "

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--4-col\">
           <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
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
        <div class=\"mdl-cell mdl-cell--4-col\">
            <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                ";
        // line 20
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "precio", array()), 'widget', array("attr" => array("pattern" => "[0-9]*(.[0-9]+)?")));
        echo "
                ";
        // line 21
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "precio", array()), 'label');
        echo "
                <span class=\"mdl-textfield__error\">Precio debe ser numérico</span>
            </div>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <label id=\"lblMonedaNombre\" class=\"mdl-label\">
                ";
        // line 27
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "moneda", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
            </label>
            <div class=\"select-style\">
                ";
        // line 30
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
        // line 40
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_index");
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
        </div>
    </div>

    ";
        // line 44
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

    <div>
        ";
        // line 47
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "nombre", array()), 'errors');
        echo "
        ";
        // line 48
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "precio", array()), 'errors');
        echo "
        ";
        // line 49
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "moneda", array()), 'errors');
        echo "
    </div>

    </div>
</div>

<script>
        \$('form input').addClass('mdl-textfield__input')
        \$('form textarea').addClass('mdl-textfield__input')

        \$('.mdl-textfield label').addClass('mdl-textfield__label')

        \$('#appbundle_producto_precio').val(\"0.0\");


</script>

<script>
        function datasubmit()
        {
        }
</script>

";
    }

    public function getTemplateName()
    {
        return ":producto:new.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  111 => 49,  107 => 48,  103 => 47,  97 => 44,  90 => 40,  77 => 30,  71 => 27,  62 => 21,  58 => 20,  50 => 15,  46 => 14,  38 => 9,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":producto:new.html.twig", "/var/www/html/pospublicarte/app/Resources/views/producto/new.html.twig");
    }
}
