<?php

/* :pago:new.html.twig */
class __TwigTemplate_3db21b7e9c405977be0f47f39d3616630f2b7a362da216212628d6511b605302 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":pago:new.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 7
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "datasubmit(); mostrarProgreso(true); return true;")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <h4>Orden ";
        // line 11
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "id", array()), "html", null, true);
        echo "</h4>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <h5>Total: ";
        // line 17
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <h5>Pagado: ";
        // line 20
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldoPagado", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <h5>Pendiente: ";
        // line 23
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldoPendiente", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 30
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "tipo", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 33
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "tipo", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 35
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "tipo", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 39
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "mediopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 42
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "mediopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 44
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "mediopago", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                    ";
        // line 51
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "monto", array()), 'widget', array("attr" => array("pattern" => "[0-9]*(.[0-9]+)?")));
        echo "
                    ";
        // line 52
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "monto", array()), 'label');
        echo "
                    <span class=\"mdl-textfield__error\">Monto debe ser numérico</span>
                    </div>
                    ";
        // line 55
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "monto", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        <label for=\"appbundle_pago_fechapago\">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        // line 63
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "fechapago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </label>
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        ";
        // line 66
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "fechapago", array()), 'widget');
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
        // line 76
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_index", array("idOrden" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 79
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 82
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
        return ":pago:new.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  221 => 121,  218 => 120,  213 => 117,  210 => 116,  173 => 82,  167 => 79,  161 => 76,  148 => 66,  142 => 63,  131 => 55,  125 => 52,  121 => 51,  111 => 44,  106 => 42,  100 => 39,  93 => 35,  88 => 33,  82 => 30,  70 => 23,  62 => 20,  54 => 17,  45 => 11,  38 => 7,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":pago:new.html.twig", "/var/www/html/pospublicarte/app/Resources/views/pago/new.html.twig");
    }
}
