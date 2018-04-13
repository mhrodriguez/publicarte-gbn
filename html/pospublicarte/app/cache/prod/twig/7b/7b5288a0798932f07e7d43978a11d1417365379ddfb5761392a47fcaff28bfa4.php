<?php

/* :factura:index.html.twig */
class __TwigTemplate_2f17e8ab8c6a88db39e5f9e9158d2da69610b8146c327eecb3a8d238dccdfa7e extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":factura:index.html.twig", 1);
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
    ";
        // line 5
        if ((twig_length_filter($this->env, ($context["facturas"] ?? null)) > 0)) {
            // line 6
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["facturas"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 7
                echo "            ";
                $context["factura"] = $this->getAttribute(($context["facturas"] ?? null), ($context["index"] - 1), array(), "array");
                // line 8
                echo "            ";
                if (($this->getAttribute($this->getAttribute(($context["factura"] ?? null), "estado", array()), "id", array()) != 2)) {
                    // line 9
                    echo "                ";
                    $context["cobrarForm"] = $this->getAttribute(($context["cobrarForms"] ?? null), ($context["index"] - 1), array(), "array");
                    // line 10
                    echo "                ";
                    $context["frmNombre"] = ("frm" . $this->getAttribute(($context["factura"] ?? null), "id", array()));
                    // line 11
                    echo "                ";
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["cobrarForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["cobrarForm"] ?? null), 'form_end');
                    echo "
            ";
                }
                // line 13
                echo "        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 14
            echo "    ";
        }
        // line 15
        echo "
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <script>
                var items = [

                    ";
        // line 22
        if ((twig_length_filter($this->env, ($context["facturas"] ?? null)) > 0)) {
            // line 23
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["facturas"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 24
                echo "                    {
                        ";
                // line 25
                $context["factura"] = $this->getAttribute(($context["facturas"] ?? null), ($context["index"] - 1), array(), "array");
                // line 26
                echo "                        ";
                $context["frmNombre"] = ("frm" . $this->getAttribute(($context["factura"] ?? null), "id", array()));
                // line 27
                echo "                        \"Fecha\": \"";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "fecha", array()), "Y-m-d"), "html", null, true);
                echo "\",
                        \"Orden\": ";
                // line 28
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["factura"] ?? null), "orden", array()), "id", array()), "html", null, true);
                echo ",
                        \"Estado\": ";
                // line 29
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["factura"] ?? null), "estado", array()), "id", array()), "html", null, true);
                echo ",
                        \"Id\": \"";
                // line 30
                echo twig_escape_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "id", array()), "html", null, true);
                echo "\",
                        \"Subtotal\": \"";
                // line 31
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["factura"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "subtotal", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"IVA\": \"";
                // line 32
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["factura"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "iva", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Total\": \"";
                // line 33
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["factura"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["factura"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Operaciones\": \"";
                // line 34
                if (($this->getAttribute($this->getAttribute(($context["factura"] ?? null), "estado", array()), "id", array()) != 2)) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de marcar esta factura como cobrada?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombre"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">done_all</i></a>";
                }
                echo "\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 37
            echo "                    ";
        }
        // line 38
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
                                { name: \"Id\",title: \"Folio\", type: \"text\", width: \"3em\", css: \"textofila\", filtering:false},
                                { name: \"Fecha\", title: \"Fecha\", type: \"text\", width: \"4em\", css: \"textofila\" },
                                { name: \"Estado\", title: \"Estado\", type: \"select\", width: \"4em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 69
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["estados"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["estado"]) {
            // line 70
            echo "                                        {
                                            \"Id\": ";
            // line 71
            echo twig_escape_filter($this->env, $this->getAttribute($context["estado"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 72
            echo twig_escape_filter($this->env, $this->getAttribute($context["estado"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['estado'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 75
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },
                                { name: \"Orden\",title: \"Folio de Orden de Trabajo\", type: \"text\", width: \"3em\", css: \"textofila\", filtering:false},
                                { name: \"Subtotal\", title: \"Subtotal\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"IVA\", title: \"IVA\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Total\", title: \"Total\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"4em\", css: \"textofila\", filtering:false },
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Fecha != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Fecha.toUpperCase().indexOf(filter.Fecha.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Estado != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (filter.Estado>0) {
                                                return (item.Estado == filter.Estado);
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
        // line 146
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("factura_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }

        function fechaFinCambio()
        {
            mostrarProgreso(true);
            window.location.href = '";
        // line 152
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("factura_index");
        echo "?fechaInicio=' + \$('#inpFechaInicio').val() + '&fechaFin=' + \$('#inpFechaFin').val();
        }
    </script>

";
    }

    // line 158
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 159
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 160
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 161
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

    // line 165
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 166
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 167
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
        // line 169
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 170
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
        // line 172
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":factura:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  357 => 172,  343 => 170,  338 => 169,  324 => 167,  319 => 166,  316 => 165,  300 => 161,  296 => 160,  293 => 159,  290 => 158,  281 => 152,  272 => 146,  199 => 75,  190 => 72,  186 => 71,  183 => 70,  179 => 69,  146 => 38,  143 => 37,  130 => 34,  124 => 33,  118 => 32,  112 => 31,  108 => 30,  104 => 29,  100 => 28,  95 => 27,  92 => 26,  90 => 25,  87 => 24,  82 => 23,  80 => 22,  71 => 15,  68 => 14,  62 => 13,  55 => 11,  52 => 10,  49 => 9,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":factura:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/factura/index.html.twig");
    }
}
