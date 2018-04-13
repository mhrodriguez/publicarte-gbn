<?php

/* :venta:indexgrf.html.twig */
class __TwigTemplate_d1ea168d28b9437f6a1e415516a1cbdf3ad377e872a234696adddf79e379317a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":venta:indexgrf.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--3-col\">
            <label class=\"mdl-label\">Desde</label>
            <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
            <input type=\"text\" id=\"inpFechaInicio\" value=\"";
        // line 9
        echo twig_escape_filter($this->env, ($context["fechaIniciostr"] ?? null), "html", null, true);
        echo "\" onchange=\"fechaInicioCambio();\" />
        </div>
        <div class=\"mdl-cell mdl-cell--7-col\">
            <label class=\"mdl-label\">Hasta</label>
            <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
            <input type=\"text\" id=\"inpFechaFin\" value=\"";
        // line 14
        echo twig_escape_filter($this->env, ($context["fechaFinstr"] ?? null), "html", null, true);
        echo "\" onchange=\"fechaFinCambio();\"/>
        </div>
        <div class=\"mdl-cell mdl-cell--2-col\">
            <button type=\"button\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\" onclick=\"window.location.href = '";
        // line 17
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();\">Vista de tabla</button>
        </div>
    </div>

    <div id=\"chart_div\" style=\"height: 35em\"></div>

    <script>


        \$( function() {
            prepararCalendario(\$( \"#inpFechaInicio\" ));
            prepararCalendario(\$( \"#inpFechaFin\" ));
        } );

        function prepararCalendario(control)
        {
            control.datepicker({
                        dateFormat: \"dd-mm-yy\",
                        monthNames: [ \"Enero\", \"Febrero\", \"Marzo\", \"Abril\", \"Mayo\", \"Junio\", \"Julio\", \"Agosto\", \"Septiembre\", \"Octubre\", \"Noviembre\", \"Diciembre\" ]
                    }
            );
        }

        function fechaInicioCambio()
        {
            mostrarProgreso(true);
            window.location.href = '";
        // line 43
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_indexgrf");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }

        function fechaFinCambio()
        {
            mostrarProgreso(true);
            window.location.href = '";
        // line 49
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_indexgrf");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }

        function dibujarGrafica()
        {

                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Fecha');
                data.addColumn('number', 'Venta Actual');

                data.addRows([
                    ";
        // line 60
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["ventas"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["venta"]) {
            // line 61
            echo "                    [ '";
            echo twig_escape_filter($this->env, $this->getAttribute($context["venta"], "fecha", array(), "array"), "html", null, true);
            echo "', ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["venta"], "total", array(), "array"), "html", null, true);
            echo "],
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['venta'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 63
        echo "                ]);

                var options = {
                    hAxis: {
                        title: 'Fecha'
                    },
                    vAxis: {
                        title: 'Monto'
                    }
                };

                var chart = new google.visualization.ColumnChart(
                        document.getElementById('chart_div'));

                chart.draw(data, options);
        }

        google.charts.load('current', {packages: ['corechart', 'bar']});
        google.charts.setOnLoadCallback(dibujarGrafica);

    </script>

";
    }

    // line 87
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 88
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
";
    }

    // line 92
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 93
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":venta:indexgrf.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  159 => 93,  156 => 92,  150 => 88,  147 => 87,  121 => 63,  110 => 61,  106 => 60,  92 => 49,  83 => 43,  54 => 17,  48 => 14,  40 => 9,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":venta:indexgrf.html.twig", "/var/www/html/pospublicarte/app/Resources/views/venta/indexgrf.html.twig");
    }
}
