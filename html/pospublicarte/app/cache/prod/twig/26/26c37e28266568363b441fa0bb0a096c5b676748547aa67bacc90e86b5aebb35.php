<?php

/* :cortecaja:index.html.twig */
class __TwigTemplate_d7eb2e8e9312d6914ce6e04401e4289e8d53c265eaa6987a7349c112773a43a1 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":cortecaja:index.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--4-col\">
            <label class=\"mdl-label\">Hasta</label>
            <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
            <input type=\"text\" id=\"inpFechaFin\" value=\"";
        // line 14
        echo twig_escape_filter($this->env, ($context["fechaFinstr"] ?? null), "html", null, true);
        echo "\" onchange=\"fechaFinCambio();\"/>
        </div>
        <div class=\"mdl-cell mdl-cell--3-col\">
        </div>
        <div class=\"mdl-cell mdl-cell--2-col\">
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <script>
                var items = [
                    ";
        // line 27
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["cortecajas"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["cortecaja"]) {
            // line 28
            echo "                    {
                        \"Fecha\": \"";
            // line 29
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["cortecaja"], "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
            echo "<br><a href='";
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cortecaja_show", array("id" => $this->getAttribute($context["cortecaja"], "id", array()))), "html", null, true);
            echo "'><i class='material-icons'>visibility</i></a>\",
                        \"Sucursal\": ";
            // line 30
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "sucursal", array()), "id", array()), "html", null, true);
            echo ",
                        \"Usuario\": ";
            // line 31
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "usuario", array()), "id", array()), "html", null, true);
            echo ",
                        \"Periodo\": \"";
            // line 32
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["cortecaja"], "fechainicio", array()), "Y-m-d H:i:s"), "html", null, true);
            echo "<br>a<br>";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["cortecaja"], "fechafin", array()), "Y-m-d H:i:s"), "html", null, true);
            echo "\",
                        \"TotalEfectivo\": \"";
            // line 33
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["cortecaja"], "totalefectivo", array()), 2, ".", ","), "html", null, true);
            echo "\",
                        \"TotalTarjetaCredito\": \"";
            // line 34
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["cortecaja"], "totaltarjetacredito", array()), 2, ".", ","), "html", null, true);
            echo "\",

                        \"TotalEfectivoReportado\": \"";
            // line 36
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["cortecaja"], "totalefectivoreportado", array()), 2, ".", ","), "html", null, true);
            echo "\",
                        \"TotalTarjetaCreditoReportado\": \"";
            // line 37
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["cortecaja"], "totaltarjetacreditoreportado", array()), 2, ".", ","), "html", null, true);
            echo "\",

                        \"Remanente\": \"";
            // line 39
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["cortecaja"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["cortecaja"], "remanente", array()), 2, ".", ","), "html", null, true);
            echo "\",
                    },

                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['cortecaja'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 43
        echo "                ];

                \$(\"#jsGrid\").jsGrid({
                            width: \"100%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: false,

                            pageIndex: 1,

                            filtering: true,
                            clearFilterButton: true,

                            data: items,

                            pagePrevText: \"<\",
                            pageNextText: \">\",
                            pageFirstText: \"Primera\",
                            pageLastText: \"Última\",
                            pagerFormat: \"Páginas: {first} {prev} {pages} {next} {last}    {pageIndex} de {pageCount}\",
                            noDataContent: \"No se encontraron registros\",

                            fields: [
                                { name: \"Fecha\", title: \"Fecha\", type: \"html\", width: \"5.5em\", css: \"textofila\", filtering:false },
                                { name: \"Sucursal\", title: \"Sucursal\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todas\" },
                                        ";
        // line 73
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["sucursales"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["sucursal"]) {
            // line 74
            echo "                                        {
                                            \"Id\": ";
            // line 75
            echo twig_escape_filter($this->env, $this->getAttribute($context["sucursal"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 76
            echo twig_escape_filter($this->env, $this->getAttribute($context["sucursal"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sucursal'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 79
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },
                                { name: \"Usuario\", title: \"Usuario\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todas\" },
                                        ";
        // line 86
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["usuarios"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["usuario"]) {
            // line 87
            echo "                                        {
                                            \"Id\": ";
            // line 88
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 89
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "nombre", array()), "html", null, true);
            if ( !(null === $this->getAttribute($context["usuario"], "apellidos", array()))) {
                echo " ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "apellidos", array()), "html", null, true);
            }
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['usuario'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 92
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },
                                { name: \"Periodo\", title: \"Periodo: \", type: \"html\", width: \"6em\", css: \"textofila\", filtering:false },

                                { name: \"TotalEfectivo\", title: \"Ventas en Efectivo\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"TotalTarjetaCredito\", title: \"Ventas con Tarjeta\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },

                                { name: \"TotalEfectivoReportado\", title: \"Ventas en Efectivo Reportadas\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },

                                { name: \"TotalTarjetaCreditoReportado\", title: \"Ventas con Tarjeta Reportadas\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },

                                { name: \"Remanente\", title: \"Remanente\", type: \"number\", width: \"3.5em\", css: \"textofila\", filtering:false }
                            ],

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Sucursal != null) {

                                        registros = \$.grep(registros, function (item) {
                                            if (filter.Sucursal>0) {

                                                return (item.Sucursal == filter.Sucursal);

                                            }
                                            else
                                            {
                                                return true;
                                            }
                                        });
                                    }

                                    if (filter.Usuario != null) {

                                        registros = \$.grep(registros, function (item) {
                                            if (filter.Usuario>0) {

                                                return (item.Usuario == filter.Usuario);

                                            }
                                            else
                                            {
                                                return true;
                                            }
                                        });
                                    }

                                    return registros;
                                }
                            }
                        }
                );

            </script>

            <style>
                .textofila
                {
                    font-size:0.8em;
                }
            </style>
        </div>
    </div>

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
        // line 179
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cortecaja_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }

        function fechaFinCambio()
        {
            mostrarProgreso(true);
            window.location.href = '";
        // line 185
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cortecaja_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }
    </script>

";
    }

    // line 191
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 192
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 193
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 194
            echo "    <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
    ";
        } else {
            // asset "a98ed61"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61.js");
            echo "    <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
    ";
        }
        unset($context["asset_url"]);
    }

    // line 198
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 199
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 200
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        } else {
            // asset "b89e345"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345.css");
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        }
        unset($context["asset_url"]);
        // line 202
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 203
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        } else {
            // asset "83d0aca"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca.css");
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        }
        unset($context["asset_url"]);
        // line 205
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":cortecaja:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  388 => 205,  374 => 203,  369 => 202,  355 => 200,  350 => 199,  347 => 198,  331 => 194,  327 => 193,  324 => 192,  321 => 191,  312 => 185,  303 => 179,  214 => 92,  201 => 89,  197 => 88,  194 => 87,  190 => 86,  181 => 79,  172 => 76,  168 => 75,  165 => 74,  161 => 73,  129 => 43,  117 => 39,  110 => 37,  104 => 36,  97 => 34,  91 => 33,  85 => 32,  81 => 31,  77 => 30,  71 => 29,  68 => 28,  64 => 27,  48 => 14,  40 => 9,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cortecaja:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cortecaja/index.html.twig");
    }
}
