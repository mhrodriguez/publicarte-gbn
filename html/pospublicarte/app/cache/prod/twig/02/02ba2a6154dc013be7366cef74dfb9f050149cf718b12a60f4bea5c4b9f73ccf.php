<?php

/* orden/indexterm.html.twig */
class __TwigTemplate_ea5c19eb079b5a95f0f66540fc1d12f466e4361b32f8d6d25498383ae7e854e2 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "orden/indexterm.html.twig", 1);
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
    <div id=\"divBotones\" class=\"mdl-grid\">
        ";
        // line 6
        if ((($context["facturadas"] ?? null) == true)) {
            // line 7
            echo "        <div class=\"mdl-cell mdl-cell--3-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
            // line 9
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_hnew", array());
            echo "'\">
                Nueva Factura Histórica
            </button>
        </div>
        ";
        }
        // line 14
        echo "        <div class=\"mdl-cell mdl-cell--2-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.print();\">
                Imprimir
            </button>
        </div>
    </div>

    <div id=\"dialog-confirm\" title=\"Imprimir\">
        <p>¿Desea imprimir la Orden de Trabajo con precios?</p>
    </div>

    <div id=\"dialog-confirm2\" title=\"Imprimir\">
        <p>¿Desea descargar la Orden de Trabajo con precios?</p>
    </div>

    ";
        // line 30
        if ((twig_length_filter($this->env, ($context["ordenes"] ?? null)) > 0)) {
            // line 31
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["ordenes"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 32
                echo "            ";
                $context["orden"] = $this->getAttribute(($context["ordenes"] ?? null), ($context["index"] - 1), array(), "array");
                // line 33
                echo "            ";
                if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
                    // line 34
                    echo "
                ";
                    // line 35
                    $context["clonarForm"] = $this->getAttribute(($context["clonarForms"] ?? null), ($context["index"] - 1), array(), "array");
                    // line 36
                    echo "                ";
                    $context["frmClonarNombre"] = ("frmClonar" . $this->getAttribute(($context["orden"] ?? null), "id", array()));
                    // line 37
                    echo "                ";
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["clonarForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmClonarNombre"] ?? null))));
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["clonarForm"] ?? null), 'form_end');
                    echo "

            ";
                }
                // line 40
                echo "        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 41
            echo "    ";
        }
        // line 42
        echo "
    <script>
        function mostrarColumna(nombre, mostrar)
        {
            \$(\"#jsGrid\").jsGrid(\"fieldOption\", nombre, \"visible\", mostrar);
        }
        (function() {

            var beforePrint = function() {
                mostrarColumna('Operaciones', false);
                mostrarColumna('IdCotizacion', false);
                mostrarColumna('Usuario', false);

                \$(\"#divBotones\").hide();
                \$(\"#divAyuda\").hide();
            };

            var afterPrint = function() {
                mostrarColumna('Operaciones', true);
                mostrarColumna('IdCotizacion', true);
                mostrarColumna('Usuario', true);

                \$(\"#divBotones\").show();
                \$(\"#divAyuda\").show();
            };

            if (window.matchMedia) {
                var mediaQueryList = window.matchMedia('print');
                mediaQueryList.addListener(function(mql) {
                    if (mql.matches) {
                        beforePrint();
                    } else {
                        afterPrint();
                    }
                });
            }

            window.onbeforeprint = beforePrint;
            window.onafterprint = afterPrint;

        }());
    </script>

    <script>
        var urlImprimir;
        function imprimir(url)
        {
            urlImprimir = url;

            \$( \"#dialog-confirm\" ).dialog(\"open\");
        }

        \$( \"#dialog-confirm\" ).dialog({
            autoOpen: false,
            resizable: false,
            height: \"auto\",
            width: 400,
            modal: true,
            buttons: {
                \"Si\": function() {
                    window.open(urlImprimir + '?cp=1');
                    \$( this ).dialog( \"close\" );
                },
                \"No\": function() {
                    window.open(urlImprimir);
                    \$( this ).dialog( \"close\" );
                },
                Cancel: function() {
                    \$( this ).dialog( \"close\" );
                }
            }
        });

        function pdf(url)
        {
            urlPdf = url;

            \$( \"#dialog-confirm2\" ).dialog(\"open\");
        }
        \$( \"#dialog-confirm2\" ).dialog({
            autoOpen: false,
            resizable: false,
            height: \"auto\",
            width: 400,
            modal: true,
            buttons: {
                \"Si\": function() {
                    window.open(urlPdf + '?cp=1');
                    \$( this ).dialog( \"close\" );
                },
                \"No\": function() {
                    window.open(urlPdf);
                    \$( this ).dialog( \"close\" );
                },
                Cancel: function() {
                    \$( this ).dialog( \"close\" );
                }
            }
        });

        \$( function() {
            \$( \"#dialog-url\" ).dialog({
                autoOpen: false,
                resizable: false,
                height: \"auto\",
                width: 900,
                modal: true,});
        } );

        function modal(url)
        {
            document.getElementById(\"frmUrl\").src = url;
            \$( \"#dialog-url\" ).dialog(\"open\");
        }
    </script>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <br>
            <div id=\"divAyuda\">(<i class=\"material-icons\">edit</i>) Editar &emsp; (<i class=\"material-icons\">get_app</i>) Descargar&emsp; (<i class=\"material-icons\">print</i>) Imprimir&emsp; (<i class=\"material-icons\">attach_money</i>) Pagos</div>

            <script>
                var items = [
                    ";
        // line 166
        if ((twig_length_filter($this->env, ($context["ordenes"] ?? null)) > 0)) {
            // line 167
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["ordenes"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 168
                echo "                    ";
                $context["orden"] = $this->getAttribute(($context["ordenes"] ?? null), ($context["index"] - 1), array(), "array");
                // line 169
                echo "                    ";
                $context["frmNombreFacturar"] = ("frmFact" . $this->getAttribute(($context["orden"] ?? null), "id", array()));
                // line 170
                echo "                    ";
                $context["frmNombreCobrar"] = ("frmCobrar" . $this->getAttribute(($context["orden"] ?? null), "id", array()));
                // line 171
                echo "                    ";
                $context["frmNombreDelete"] = ("frmDelete" . $this->getAttribute(($context["orden"] ?? null), "id", array()));
                // line 172
                echo "                    ";
                $context["frmClonarNombre"] = ("frmClonar" . $this->getAttribute(($context["orden"] ?? null), "id", array()));
                // line 173
                echo "                    {
                        \"Id\": ";
                // line 174
                echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "id", array()), "html", null, true);
                echo ",
                        ";
                // line 175
                if ($this->getAttribute(($context["orden"] ?? null), "cotizacion", array())) {
                    // line 176
                    echo "                        \"IdCotizacion\": ";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cotizacion", array()), "id", array()), "html", null, true);
                    echo ",
                        ";
                }
                // line 178
                echo "                        \"FolioFactura\": \"";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "foliofactura", array()), "html", null, true);
                echo "\",
                        \"Tipo\": ";
                // line 179
                if ($this->getAttribute(($context["orden"] ?? null), "tipo", array())) {
                    echo " ";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "tipo", array()), "id", array()), "html", null, true);
                    echo " ";
                } else {
                    echo " null ";
                }
                echo ",
                        \"Maquina\": ";
                // line 180
                if ($this->getAttribute(($context["orden"] ?? null), "maquina", array())) {
                    echo " ";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "maquina", array()), "id", array()), "html", null, true);
                    echo " ";
                } else {
                    echo " null ";
                }
                echo ",
                        \"Usuario\": ";
                // line 181
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "usuario", array()), "id", array()), "html", null, true);
                echo ",
                        \"Cliente\": ";
                // line 182
                if ($this->getAttribute(($context["orden"] ?? null), "cliente", array())) {
                    echo " ";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "id", array()), "html", null, true);
                    echo " ";
                } else {
                    echo " null ";
                }
                echo " ,
                        \"Estado\": ";
                // line 183
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "estado", array()), "id", array()), "html", null, true);
                echo ",
                        \"Fecha\": new Date(";
                // line 184
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "fecha", array()), "Y"), "html", null, true);
                echo ", ";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "fecha", array()), "m"), "html", null, true);
                echo "-1, ";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "fecha", array()), "d"), "html", null, true);
                echo ", 0, 0, 0, 0),
                        \"Total\": \"";
                // line 185
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"SaldoPagado\": \"";
                // line 186
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldopagado", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"SaldoRestante\" : \"";
                // line 187
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldopendiente", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Operaciones\": \"<a href=\\\"#\\\" onclick=\\\"pdf('";
                // line 188
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_showpdf", array("id" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
                echo "');\\\"><i class=\\\"material-icons\\\">get_app</i></a><span></span><a href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath(($context["pathedit"] ?? null), array("id" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">edit</i></a><span></span><a href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_index", array("idOrden" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">attach_money</i></a><span></span><a \\\"#\\\" onclick=\\\"imprimir('";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_showprint", array("id" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
                echo "');\\\"><i class=\\\"material-icons\\\">print</i></a><span></span><a href=\\\"#\\\" onclick=\\\"modal('";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_show", array("id" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
                echo "');\\\"><i class=\\\"material-icons\\\">search</i></a><span></span><a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de clonar esta orden?')) document.getElementById('";
                echo twig_escape_filter($this->env, ($context["frmClonarNombre"] ?? null), "html", null, true);
                echo "').submit();\\\"><i class=\\\"material-icons\\\">call_split</i></a>\",
                        \"MontoR\": ";
                // line 189
                echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "total", array()), "html", null, true);
                echo ",
                        \"MontoR2\": ";
                // line 190
                echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldopagado", array()), "html", null, true);
                echo ",
                        \"MontoR3\": ";
                // line 191
                echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldopendiente", array()), "html", null, true);
                echo "
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 194
            echo "                    ";
        }
        // line 195
        echo "                ];

                var totales = {
                    \"Id\": null,
                    \"FolioFactura\": null,
                    \"Usuario\": null,
                    \"Cliente\": null,
                    \"Estado\": null,
                    \"Fecha\": null,
                    \"Total\": \"MXN 0.00\",
                    \"SaldoPagado\": null,
                    \"SaldoRestante\" : null,
                    \"Operaciones\": null,
                    \"MontoR\": 0,
                    \"MontoR2\": 0,
                    \"MontoR3\": 0,
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
                            width: \"140%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: false,

                            noDataContent: \"No se encontraron registros\",

                            filtering: true,
                            clearFilterButton: true,

                            data: items,

                            noDataContent: \"No se encontraron registros\",

                            fields: [
                                { name: \"Id\", title: \"Folio\", type: \"text\", width: \"1.5em\", css: \"textofila\" },

                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"4.5em\", css: \"textofila\", filtering:false },

                                { name: \"IdCotizacion\", title: \"Folio de Cotización\", type: \"text\", width: \"3em\", css: \"textofila\" },

                                { name: \"FolioFactura\", title: \"Folio de Facturación\", type: \"text\", width: \"3.5em\", css: \"textofila\" },

                                { name: \"Tipo\", title: \"Tipo de Servicio\", type: \"select\", width: \"4.5em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 278
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["tipos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["tipo"]) {
            // line 279
            echo "                                        {
                                            \"Id\": ";
            // line 280
            echo twig_escape_filter($this->env, $this->getAttribute($context["tipo"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 281
            echo twig_escape_filter($this->env, $this->getAttribute($context["tipo"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['tipo'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 284
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Maquina\", title: \"Maquina\", type: \"select\", width: \"4.5em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 292
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["maquinas"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["maquina"]) {
            // line 293
            echo "                                        {
                                            \"Id\": ";
            // line 294
            echo twig_escape_filter($this->env, $this->getAttribute($context["maquina"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 295
            echo twig_escape_filter($this->env, $this->getAttribute($context["maquina"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['maquina'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 298
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Usuario\", title: \"Usuario\", type: \"select\", width: \"6em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 306
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["usuarios"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["usuario"]) {
            // line 307
            echo "                                        {
                                            \"Id\": ";
            // line 308
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 309
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
        // line 312
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Cliente\", title: \"Cliente\", type: \"select\", width: \"6em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 320
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["clientes"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["cliente"]) {
            // line 321
            echo "                                        {
                                            \"Id\": ";
            // line 322
            echo twig_escape_filter($this->env, $this->getAttribute($context["cliente"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 323
            echo twig_escape_filter($this->env, $this->getAttribute($context["cliente"], "razonsocial", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['cliente'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 326
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Estado\", title: \"Estado\", type: \"select\", width: \"4em\", css: \"textofila\",
                                    items: [
                                        ";
        // line 333
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["estados"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["estado"]) {
            // line 334
            echo "                                        {
                                            \"Id\": ";
            // line 335
            echo twig_escape_filter($this->env, $this->getAttribute($context["estado"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 336
            echo twig_escape_filter($this->env, $this->getAttribute($context["estado"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['estado'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 339
        echo "                                        { \"Id\": -1, Nombre: \"Todos\" },
                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\",
                                },

                                { name: \"Fecha\",title: \"Fecha\", type: \"myDateField\", width: \"3em\", css: \"textofila\"},
                                { name: \"Total\",title: \"Total\", type: \"text\", width: \"4.5em\", css: \"textofila\", filtering:false},
                                { name: \"SaldoPagado\",title: \"Saldo Pagado\", type: \"text\", width: \"4.5em\", css: \"textofila\", filtering:false},
                                { name: \"SaldoRestante\",title: \"Saldo Restante\", type: \"text\", width: \"4.5em\", css: \"textofila\", filtering:false},
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            onRefreshing: function(args) {
                                var data = args.grid.option(\"data\");
                                var totalR= 0, totalR2= 0, totalR3=0;

                                for (var i = 0, len = data.length; i < len; i++) {
                                    totalR += data[i].MontoR;
                                    totalR2 += data[i].MontoR2;
                                    totalR3 += data[i].MontoR3;
                                }
                                totales.Total = \"MXN \" + totalR.toFixed(2);
                                totales.SaldoPagado = \"MXN \" + totalR2.toFixed(2);
                                totales.SaldoRestante = \"MXN \" + totalR3.toFixed(2);
                            },

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Id > 0) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            return (item.Id == filter.Id);
                                        });
                                    }

                                    if (filter.IdCotizacion > 0) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            return (item.IdCotizacion == filter.IdCotizacion);
                                        });
                                    }

                                    if (filter.FolioFactura != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            return (item.FolioFactura.toUpperCase().indexOf(filter.FolioFactura.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Fecha != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;
                                            return (item.Fecha.valueOf() == filter.Fecha.valueOf());
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

                                    if (filter.Tipo != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            if (filter.Tipo>0) {
                                                return (item.Tipo == filter.Tipo);
                                            }
                                            else
                                            {
                                                return true;
                                            }
                                        });
                                    }

                                    if (filter.Maquina != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

                                            if (filter.Maquina>0) {
                                                return (item.Maquina == filter.Maquina);
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

                                    if (filter.Estado != null) {
                                        registros = \$.grep(registros, function (item) {
                                            if (item.Id == null) return true;

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

                \$(\"#jsGrid\").jsGrid(\"loadData\", { Estado: 10 }).done(function() {
                    console.log(\"data loaded\");
                });
            </script>

            <style>
                .textofila
                {
                    font-size:0.8em;
                }
            </style>
        </div>
    </div>

    <div id=\"dialog-url\" title=\"Items\">
        <iframe id=\"frmUrl\" style=\"height:30em;\"></iframe>
    </div>

";
    }

    // line 499
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 500
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 501
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 502
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

    // line 506
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 507
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 508
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
        // line 510
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 511
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
        // line 513
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return "orden/indexterm.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  828 => 513,  814 => 511,  809 => 510,  795 => 508,  790 => 507,  787 => 506,  771 => 502,  767 => 501,  764 => 500,  761 => 499,  599 => 339,  590 => 336,  586 => 335,  583 => 334,  579 => 333,  570 => 326,  561 => 323,  557 => 322,  554 => 321,  550 => 320,  540 => 312,  529 => 309,  525 => 308,  522 => 307,  518 => 306,  508 => 298,  499 => 295,  495 => 294,  492 => 293,  488 => 292,  478 => 284,  469 => 281,  465 => 280,  462 => 279,  458 => 278,  373 => 195,  370 => 194,  361 => 191,  357 => 190,  353 => 189,  339 => 188,  333 => 187,  327 => 186,  321 => 185,  313 => 184,  309 => 183,  299 => 182,  295 => 181,  285 => 180,  275 => 179,  270 => 178,  264 => 176,  262 => 175,  258 => 174,  255 => 173,  252 => 172,  249 => 171,  246 => 170,  243 => 169,  240 => 168,  235 => 167,  233 => 166,  107 => 42,  104 => 41,  98 => 40,  90 => 37,  87 => 36,  85 => 35,  82 => 34,  79 => 33,  76 => 32,  71 => 31,  69 => 30,  51 => 14,  43 => 9,  39 => 7,  37 => 6,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "orden/indexterm.html.twig", "/var/www/html/pospublicarte/app/Resources/views/orden/indexterm.html.twig");
    }
}
