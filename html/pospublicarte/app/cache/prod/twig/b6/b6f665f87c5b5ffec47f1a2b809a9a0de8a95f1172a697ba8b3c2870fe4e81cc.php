<?php

/* :orden:hnew.html.twig */
class __TwigTemplate_3bcb1abf9b4ba01edb4133745b9c96c9447facd2917189f468e532339b487484 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":orden:hnew.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
            'scriptsheader' => array($this, 'block_scriptsheader'),
            'stylesheets' => array($this, 'block_stylesheets'),
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

            ";
        // line 8
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "return datasubmit();")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 13
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "cliente", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 15
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cliente", array()), 'widget');
        echo "
                    ";
        // line 16
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cliente", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 20
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "foliofactura", array()), 'widget');
        echo "
                        ";
        // line 21
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "foliofactura", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 29
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "total", array()), 'widget', array("attr" => array("pattern" => "[0-9]*(.[0-9]+)?")));
        echo "
                        ";
        // line 30
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "total", array()), 'label');
        echo "
                        <span class=\"mdl-textfield__error\">Total debe ser numérico</span>
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 36
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "abono", array()), 'widget', array("attr" => array("pattern" => "[0-9]*(.[0-9]+)?")));
        echo "
                        ";
        // line 37
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "abono", array()), 'label');
        echo "
                        <span class=\"mdl-textfield__error\">Abono debe ser numérico</span>
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Crear</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 48
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_indexfact", array());
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 51
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 54
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock(($context["form"] ?? null), 'errors');
        echo "
            </div>
        </div>
    </div>

    <script>
        \$('form input').addClass('mdl-textfield__input')
        \$('form textarea').addClass('mdl-textfield__input')

        \$('.mdl-textfield label').addClass('mdl-textfield__label')

        \$( function() {
            \$('#appbundle_orden_cliente').select2();
        } );
    </script>

    <script>
        function datasubmit()
        {
            mostrarProgreso(true);

            return true;
        }
    </script>

";
    }

    // line 81
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 82
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js\"></script>
";
    }

    // line 86
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 87
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css\" rel=\"stylesheet\" />
";
    }

    public function getTemplateName()
    {
        return ":orden:hnew.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  163 => 87,  160 => 86,  154 => 82,  151 => 81,  121 => 54,  115 => 51,  109 => 48,  95 => 37,  91 => 36,  82 => 30,  78 => 29,  67 => 21,  63 => 20,  56 => 16,  52 => 15,  47 => 13,  39 => 8,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":orden:hnew.html.twig", "/var/www/html/pospublicarte/app/Resources/views/orden/hnew.html.twig");
    }
}
