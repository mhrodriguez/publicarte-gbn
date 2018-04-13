<?php

/* pago/edit.html.twig */
class __TwigTemplate_baf03d5155390631ac9067f1c035cd504a434fbc10a0c223c6028ab0c83eeed4 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "pago/edit.html.twig", 1);
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
        echo "    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h4>Orden ";
        // line 6
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "id", array()), "html", null, true);
        echo "</h4>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h5>Total: ";
        // line 12
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "total", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h5>Pagado: ";
        // line 15
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "saldoPagado", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h5>Pendiente: ";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "saldoPendiente", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 25
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "datasubmit(); mostrarProgreso(true); return true;")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 33
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 35
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 39
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 42
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 44
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 51
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "monto", array()), 'widget', array("attr" => array("pattern" => "[0-9]*(.[0-9]+)?")));
        echo "
                        ";
        // line 52
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "monto", array()), 'label');
        echo "
                        <span class=\"mdl-textfield__error\">Monto debe ser numérico</span>
                    </div>
                    ";
        // line 55
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "monto", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        <label for=\"appbundle_pago_fechapago\">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        // line 63
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "fechapago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </label>
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        ";
        // line 66
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechapago", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Guardar</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"javascript:history.back()\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 79
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 82
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock(($context["edit_form"] ?? null), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        \$('form input').addClass('mdl-textfield__input')
        \$('form textarea').addClass('mdl-textfield__input')

        \$('.mdl-textfield label').addClass('mdl-textfield__label')

        \$( function() {
            prepararCalendario(\$( \"#appbundle_pago_fechapago\" ));
        } );

        function prepararCalendario(control)
        {
            control.datepicker({
                        defaultDate: new Date(),
                        dateFormat: \"dd/mm/yy\",
                        monthNames: [ \"Enero\", \"Febrero\", \"Marzo\", \"Abril\", \"Mayo\", \"Junio\", \"Julio\", \"Agosto\", \"Septiembre\", \"Octubre\", \"Noviembre\", \"Diciembre\" ]
                    }
            );
        }
    </script>

    <script>
        function datasubmit()
        {
        }
    </script>
";
    }

    // line 116
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 117
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
";
    }

    // line 120
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 121
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return "pago/edit.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  218 => 121,  215 => 120,  210 => 117,  207 => 116,  170 => 82,  164 => 79,  148 => 66,  142 => 63,  131 => 55,  125 => 52,  121 => 51,  111 => 44,  106 => 42,  100 => 39,  93 => 35,  88 => 33,  82 => 30,  74 => 25,  62 => 18,  54 => 15,  46 => 12,  37 => 6,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "pago/edit.html.twig", "/var/www/html/pospublicarte/app/Resources/views/pago/edit.html.twig");
    }
}
