<?php

/* :pago:estadistica.html.twig */
class __TwigTemplate_eb5b4a209a037d62852a1b3acbddfd5687294ef9e311058b3093f6c0d60d027c extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":pago:estadistica.html.twig", 1);
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
        if ((twig_length_filter($this->env, ($context["pagos"] ?? null)) > 0)) {
            // line 6
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["pagos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 7
                echo "            ";
                $context["pago"] = $this->getAttribute(($context["pagos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 8
                echo "            ";
                if ((($this->getAttribute(($context["pago"] ?? null), "validado", array()) == false) && $this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA"))) {
                    // line 9
                    echo "                ";
                    $context["validarForm"] = $this->getAttribute(($context["validarForms"] ?? null), ($context["index"] - 1), array(), "array");
                    // line 10
                    echo "                ";
                    $context["frmNombre"] = ("frm" . $this->getAttribute(($context["pago"] ?? null), "id", array()));
                    // line 11
                    echo "                ";
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["validarForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["validarForm"] ?? null), 'form_end');
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
            <br>
            <div>(<i class=\"material-icons\">done_all</i>) Aprobar &emsp; (<i class=\"material-icons\">get_app</i>) Descargar&emsp; (<i class=\"material-icons\">print</i>) Imprimir</div>

            <script>
                var items = [
                    ";
        // line 24
        if ((twig_length_filter($this->env, ($context["pagos"] ?? null)) > 0)) {
            // line 25
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["pagos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 26
                echo "                    ";
                $context["pago"] = $this->getAttribute(($context["pagos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 27
                echo "                    ";
                $context["frmNombre"] = ("frm" . $this->getAttribute(($context["pago"] ?? null), "id", array()));
                // line 28
                echo "                    {
                        \"Id\": ";
                // line 29
                echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "id", array()), "html", null, true);
                echo ",
                        \"IdOrden\": \"<a href=\\\"";
                // line 30
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_edit", array("id" => $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "id", array()))), "html", null, true);
                echo "\\\" \\\">";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "id", array()), "html", null, true);
                echo "</a>\",
                        \"Tipo\": ";
                // line 31
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "tipo", array()), "id", array()), "html", null, true);
                echo ",
                        \"Usuario\": ";
                // line 32
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "usuario", array()), "id", array()), "html", null, true);
                echo ",
                        \"Cliente\": ";
                // line 33
                if ($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "cliente", array())) {
                    echo " ";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "cliente", array()), "id", array()), "html", null, true);
                    echo " ";
                } else {
                    echo " null ";
                }
                echo ",
                        \"Monto\": \"";
                // line 34
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "monto", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"MontoR\": ";
                // line 35
                echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "monto", array()), "html", null, true);
                echo ",
                        \"Fecha\": new Date(";
                // line 36
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fecha", array()), "Y"), "html", null, true);
                echo ", ";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fecha", array()), "m"), "html", null, true);
                echo "-1, ";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fecha", array()), "d"), "html", null, true);
                echo ", 0, 0, 0, 0),
                        \"Validado\": ";
                // line 37
                if ($this->getAttribute(($context["pago"] ?? null), "validado", array())) {
                    echo "true";
                } else {
                    echo "false";
                }
                echo ",
                        \"Operaciones\": \"";
                // line 38
                if ((($this->getAttribute(($context["pago"] ?? null), "validado", array()) == false) && $this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA"))) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de validar este pago?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombre"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">done_all</i></a>";
                }
                if (($this->getAttribute(($context["pago"] ?? null), "validado", array()) == true)) {
                    echo "<a target=\\\"_blank\\\" href=\\\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_showprint", array("id" => $this->getAttribute(($context["pago"] ?? null), "id", array()))), "html", null, true);
                    echo "\\\"><i class=\\\"material-icons\\\">print</i></a><span></span><a href=\\\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_showpdf", array("id" => $this->getAttribute(($context["pago"] ?? null), "id", array()))), "html", null, true);
                    echo "\\\"><i class=\\\"material-icons\\\">get_app</i></a>";
                }
                echo "\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 41
            echo "                    ";
        }
        // line 42
        echo "                ];

                var totales = {
                    \"Id\": null,
                    \"Concepto\": \"Total:\",
                    \"Usuario\": null,
                    \"Monto\": \"MXN 0.00\",
                    \"MontoR\": 0,
                    \"Fecha\": null,
                    \"Validado\": null,
                    \"Operaciones\": null
                };
                items.push(totales);

                var MyDateField = function(config) {
                    jsGrid.Field.call(this, config);
                };
                MyDateField.prototype = new jsGrid.Field({
                    sorter: function(date1, date2) {
                        return new Date(date1) - new Date(date2);
                    },
                    itemTemplate: function(value) {

                        if (value == null) return '';

                        var fecha = new Date(value);

                        var dd = fecha.getDate();
                        var mm = fecha.getMonth()+1;
                        var yyyy = fecha.getFullYear();
                        if(dd<10){dd='0'+dd}
                        if(mm<10){mm='0'+mm}

                        return '' + dd + '-' + mm + '-' + yyyy;
                    },
                    filterTemplate: function() {
                        var now = new Date();
                        this._Picker = \$(\"<input>\").datepicker({ defaultDate: now.setFullYear(now.getFullYear() - 1), dateFormat: \"dd-mm-yy\", onSelect: function(dateText) {
                            \$(\"#jsGrid\").jsGrid(\"search\");
                        } });
                        return \$(\"<div>\").append(this._Picker);
                    },
                    filterValue: function() {
                        return this._Picker.datepicker(\"getDate\");
                    },
                });
                jsGrid.fields.myDateField = MyDateField;

                \$(\"#jsGrid\").jsGrid({
                            width: \"100%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: false,

                            noDataContent: \"No se encontraron registros\",

                            filtering: true,
                            clearFilterButton: true,

                            data: items,

                            fields: [
                                { name: \"Id\", title: \"Id\", type: \"text\", width: \"1.5em\", css: \"textofila\", filtering:false },
                                { name: \"IdOrden\", title: \"Folio de Orden\", type: \"html\", width: \"2em\", css: \"textofila\" },
                                { name: \"Usuario\", title: \"Usuario\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 112
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["usuarios"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["usuario"]) {
            // line 113
            echo "                                        {
                                            \"Id\": ";
            // line 114
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 115
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "nombre", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "apellidos", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['usuario'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 118
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Cliente\", title: \"Cliente\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 126
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["clientes"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["cliente"]) {
            // line 127
            echo "                                        {
                                            \"Id\": ";
            // line 128
            echo twig_escape_filter($this->env, $this->getAttribute($context["cliente"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 129
            echo twig_escape_filter($this->env, $this->getAttribute($context["cliente"], "razonsocial", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['cliente'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 132
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Tipo\", title: \"Concepto\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 140
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["tipos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["tipo"]) {
            // line 141
            echo "                                        {
                                            \"Id\": ";
            // line 142
            echo twig_escape_filter($this->env, $this->getAttribute($context["tipo"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 143
            echo twig_escape_filter($this->env, $this->getAttribute($context["tipo"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['tipo'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 146
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Monto\",title: \"Monto\", type: \"text\", width: \"4em\", css: \"textofila\", filtering:false},
                                { name: \"Fecha\", title: \"Fecha\", type: \"myDateField\", width: \"4em\", css: \"textofila\",filtering:true },
                                { name: \"Validado\",title: \"Validado\", type: \"checkbox\", width: \"3em\", css: \"textofila\"},
                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"4em\", css: \"textofila\" },
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            onRefreshing: function(args) {
                                var data = args.grid.option(\"data\");
                                var total=0;

                                for (var i = 0, len = data.length; i < len; i++) {
                                    total += data[i].MontoR;
                                }
                                totales.Monto = \"MXN \" + total.toFixed(2);
                            },

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Tipo != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (filter.Tipo>0) {
                                                return (item.Tipo == filter.Tipo);
                                            }
                                            else
                                            {
                                                return true;
                                            }
                                        });
                                    }

                                    if (filter.Usuario != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            if (filter.Usuario>0) {
                                                return (item.Usuario == filter.Usuario);
                                            }
                                            else
                                            {
                                                return true;
                                            }
                                        });
                                    }

                                    if (filter.Cliente != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            if (filter.Cliente>0) {
                                                return (item.Cliente == filter.Cliente);
                                            }
                                            else
                                            {
                                                return true;
                                            }
                                        });
                                    }

                                    if (filter.Fecha != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;
                                            return (item.Fecha.valueOf() == filter.Fecha.valueOf());
                                        });
                                    }

                                    if (filter.Validado != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            return (item.Validado == filter.Validado);
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

";
    }

    // line 248
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 249
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 250
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 251
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

    // line 255
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 256
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 257
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
        // line 259
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 260
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
        // line 262
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":pago:estadistica.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  500 => 262,  486 => 260,  481 => 259,  467 => 257,  462 => 256,  459 => 255,  443 => 251,  439 => 250,  436 => 249,  433 => 248,  329 => 146,  320 => 143,  316 => 142,  313 => 141,  309 => 140,  299 => 132,  290 => 129,  286 => 128,  283 => 127,  279 => 126,  269 => 118,  258 => 115,  254 => 114,  251 => 113,  247 => 112,  175 => 42,  172 => 41,  152 => 38,  144 => 37,  136 => 36,  132 => 35,  126 => 34,  116 => 33,  112 => 32,  108 => 31,  102 => 30,  98 => 29,  95 => 28,  92 => 27,  89 => 26,  84 => 25,  82 => 24,  71 => 15,  68 => 14,  62 => 13,  55 => 11,  52 => 10,  49 => 9,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":pago:estadistica.html.twig", "/var/www/html/pospublicarte/app/Resources/views/pago/estadistica.html.twig");
    }
}
