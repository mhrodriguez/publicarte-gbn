<?php

/* :venta:comparativoanualgrf.html.twig */
class __TwigTemplate_db596f133e77aad17d1b4fc92b90683a216b6f21ae5cd221badb8b23da802f90 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":venta:comparativoanualgrf.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--10-col\">
        </div>
        <div class=\"mdl-cell mdl-cell--2-col\">
            <button type=\"button\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\" onclick=\"window.location.href = '";
        // line 9
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_index");
        echo "';\">Vista de tabla</button>
        </div>
    </div>

    <div id=\"chart_div\" style=\"height: 35em\"></div>

    <script>

        function dibujarGrafica()
        {

            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Periodo');
            data.addColumn('number', 'Año Actual');
            data.addColumn('number', 'Año Anterior');

            data.addRows([
                ";
        // line 26
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["ventas"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["venta"]) {
            // line 27
            echo "                [ '";
            echo twig_escape_filter($this->env, $this->getAttribute($context["venta"], "periodo", array(), "array"), "html", null, true);
            echo "', ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["venta"], "totalactual", array(), "array"), "html", null, true);
            echo ", ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["venta"], "totalanterior", array(), "array"), "html", null, true);
            echo "],
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['venta'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 29
        echo "            ]);

            var options = {
                hAxis: {
                    title: 'Periodo'
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

    // line 53
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 54
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>
";
    }

    // line 58
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 59
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":venta:comparativoanualgrf.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  115 => 59,  112 => 58,  106 => 54,  103 => 53,  77 => 29,  64 => 27,  60 => 26,  40 => 9,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":venta:comparativoanualgrf.html.twig", "/var/www/html/pospublicarte/app/Resources/views/venta/comparativoanualgrf.html.twig");
    }
}
