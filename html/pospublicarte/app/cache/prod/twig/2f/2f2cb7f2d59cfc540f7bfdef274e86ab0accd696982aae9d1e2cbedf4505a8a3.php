<?php

/* :venta:index.html.twig */
class __TwigTemplate_b4b8a7442f2457b94b6b18cc91b978dc73220f8948bb898ab41a3d70038b0a74 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":venta:index.html.twig", 1);
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
            <button type=\"button\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\" onclick=\"window.location.href = '";
        // line 17
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_comparativoanualgrf");
        echo "'\">Comparativo anual</button>
        </div>
        <div class=\"mdl-cell mdl-cell--2-col\">
            <button type=\"button\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\" onclick=\"window.location.href = '";
        // line 20
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_indexgrf");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();\">Vista de grafica</button>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <script>
                var items = [
                    ";
        // line 29
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["ventas"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["venta"]) {
            // line 30
            echo "
                    ";
            // line 31
            $context["iva"] = ($this->getAttribute($context["venta"], "iva", array()) / $this->getAttribute($context["venta"], "subtotal", array()));
            // line 32
            echo "
                        ";
            // line 33
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["venta"], "items", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["ventaitem"]) {
                // line 34
                echo "
                        {
                        \"Fecha\": \"";
                // line 36
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["ventaitem"], "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
                echo "\",
                        \"Sucursal\": ";
                // line 37
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["venta"], "sucursal", array()), "id", array()), "html", null, true);
                echo ",
                        \"Producto\": \"";
                // line 38
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitem"], "descripcion", array()), "html", null, true);
                echo "\",
                        \"Cantidad\": \"";
                // line 39
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitem"], "cantidad", array()), "html", null, true);
                echo "\",
                        \"PrecioUnitario\": \"";
                // line 40
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitem"], "precio", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Subtotal\": \"";
                // line 41
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitem"], "precio", array()) * $this->getAttribute($context["ventaitem"], "cantidad", array())), 2, ".", ","), "html", null, true);
                echo "\",
                        \"IVA\": \"";
                // line 42
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, (($this->getAttribute($context["ventaitem"], "precio", array()) * $this->getAttribute($context["ventaitem"], "cantidad", array())) * ($context["iva"] ?? null)), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Total\": \"";
                // line 43
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitem"], "total", array()) + (($this->getAttribute($context["ventaitem"], "precio", array()) * $this->getAttribute($context["ventaitem"], "cantidad", array())) * ($context["iva"] ?? null))), 2, ".", ","), "html", null, true);
                echo "\"
                         },

                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ventaitem'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 47
            echo "
                    ";
            // line 48
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["venta"], "itempaquetes", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["ventaitempaquete"]) {
                // line 49
                echo "
                    {
                        \"Fecha\": \"";
                // line 51
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
                echo "\",
                        \"Sucursal\": ";
                // line 52
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["venta"], "sucursal", array()), "id", array()), "html", null, true);
                echo ",
                        \"Producto\": \"";
                // line 53
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "descripcion", array()), "html", null, true);
                echo "\",
                        \"Cantidad\": \"";
                // line 54
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "cantidad", array()), "html", null, true);
                echo "\",
                        \"PrecioUnitario\": \"";
                // line 55
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "precio", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Subtotal\": \"";
                // line 56
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "total", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"IVA\": \"";
                // line 57
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitempaquete"], "total", array()) * ($context["iva"] ?? null)), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Total\": \"";
                // line 58
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitempaquete"], "total", array()) + ($this->getAttribute($context["ventaitempaquete"], "total", array()) * ($context["iva"] ?? null))), 2, ".", ","), "html", null, true);
                echo "\"
                    },

                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ventaitempaquete'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 62
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['venta'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 63
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
                                { name: \"Fecha\", title: \"Fecha\", type: \"text\", width: \"6em\", css: \"textofila\", filtering:false },
                                { name: \"Sucursal\", title: \"Sucursal\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todas\" },
                                        ";
        // line 93
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["sucursales"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["sucursal"]) {
            // line 94
            echo "                                        {
                                            \"Id\": ";
            // line 95
            echo twig_escape_filter($this->env, $this->getAttribute($context["sucursal"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 96
            echo twig_escape_filter($this->env, $this->getAttribute($context["sucursal"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sucursal'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 99
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },
                                { name: \"Producto\",title: \"Producto\", type: \"text\", width: \"18em\", css: \"textofila\"},
                                { name: \"Cantidad\", title: \"Cantidad\", type: \"number\", width: \"3em\", css: \"textofila\", filtering:false },
                                { name: \"PrecioUnitario\", title: \"Precio Unitario\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Subtotal\", title: \"Subtotal\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"IVA\", title: \"IVA\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Total\", title: \"Total\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
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

                                    if (filter.Producto != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Producto.toUpperCase().indexOf(filter.Producto.toUpperCase()) >= 0);
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
        // line 173
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }

        function fechaFinCambio()
        {
            mostrarProgreso(true);
            window.location.href = '";
        // line 179
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("venta_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }
    </script>

";
    }

    // line 185
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 186
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 187
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 188
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

    // line 192
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 193
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 194
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
        // line 196
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 197
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
        // line 199
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":venta:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  414 => 199,  400 => 197,  395 => 196,  381 => 194,  376 => 193,  373 => 192,  357 => 188,  353 => 187,  350 => 186,  347 => 185,  338 => 179,  329 => 173,  253 => 99,  244 => 96,  240 => 95,  237 => 94,  233 => 93,  201 => 63,  195 => 62,  183 => 58,  177 => 57,  171 => 56,  165 => 55,  161 => 54,  157 => 53,  153 => 52,  149 => 51,  145 => 49,  141 => 48,  138 => 47,  126 => 43,  120 => 42,  114 => 41,  108 => 40,  104 => 39,  100 => 38,  96 => 37,  92 => 36,  88 => 34,  84 => 33,  81 => 32,  79 => 31,  76 => 30,  72 => 29,  60 => 20,  54 => 17,  48 => 14,  40 => 9,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":venta:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/venta/index.html.twig");
    }
}
