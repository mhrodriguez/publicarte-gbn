<?php

/* cotizacion/index.html.twig */
class __TwigTemplate_47935a65b4c86a0eeb64da94537713d84924a7a98e8561e532574a0676cf4887 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "cotizacion/index.html.twig", 1);
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
        if ((twig_length_filter($this->env, ($context["cotizaciones"] ?? null)) > 0)) {
            // line 6
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["cotizaciones"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 7
                echo "            ";
                $context["cotizacion"] = $this->getAttribute(($context["cotizaciones"] ?? null), ($context["index"] - 1), array(), "array");
                // line 8
                echo "            ";
                if (($this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "estado", array()), "id", array()) != 2)) {
                    // line 9
                    echo "                ";
                    $context["ordenarForm"] = $this->getAttribute(($context["ordenarForms"] ?? null), ($context["index"] - 1), array(), "array");
                    // line 10
                    echo "                ";
                    $context["frmNombre"] = ("frm" . $this->getAttribute(($context["cotizacion"] ?? null), "id", array()));
                    // line 11
                    echo "                ";
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["ordenarForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["ordenarForm"] ?? null), 'form_end');
                    echo "
            ";
                }
                // line 13
                echo "
            ";
                // line 14
                $context["deleteForm"] = $this->getAttribute(($context["deleteForms"] ?? null), ($context["index"] - 1), array(), "array");
                // line 15
                echo "            ";
                $context["frmNombre"] = ("frmDelete" . $this->getAttribute(($context["cotizacion"] ?? null), "id", array()));
                // line 16
                echo "            ";
                echo                 $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["deleteForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                echo                 $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["deleteForm"] ?? null), 'form_end');
                echo "
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 18
            echo "    ";
        }
        // line 19
        echo "
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--3-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 23
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_new");
        echo "'\">
                Nueva Cotización
            </button>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <br>
            <div>(<i class=\"material-icons\">edit</i>) Editar &emsp; (<i class=\"material-icons\">delete</i>) Borrar&emsp; (<i class=\"material-icons\">get_app</i>) Descargar&emsp; (<i class=\"material-icons\">print</i>) Imprimir&emsp; (<i class=\"material-icons\">content_paste</i>) Generar Orden de Trabajo</div>
            <script>
                var items = [
                    ";
        // line 36
        if ((twig_length_filter($this->env, ($context["cotizaciones"] ?? null)) > 0)) {
            // line 37
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["cotizaciones"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 38
                echo "                    ";
                $context["cotizacion"] = $this->getAttribute(($context["cotizaciones"] ?? null), ($context["index"] - 1), array(), "array");
                // line 39
                echo "                    ";
                $context["frmNombre"] = ("frm" . $this->getAttribute(($context["cotizacion"] ?? null), "id", array()));
                // line 40
                echo "                    ";
                $context["frmNombreDelete"] = ("frmDelete" . $this->getAttribute(($context["cotizacion"] ?? null), "id", array()));
                // line 41
                echo "                    {
                        \"Id\": ";
                // line 42
                echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "id", array()), "html", null, true);
                echo ",
                        \"Usuario\": ";
                // line 43
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "usuario", array()), "id", array()), "html", null, true);
                echo ",
                        \"Cliente\": ";
                // line 44
                if ($this->getAttribute(($context["cotizacion"] ?? null), "cliente", array())) {
                    echo " ";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "cliente", array()), "id", array()), "html", null, true);
                    echo " ";
                } else {
                    echo " null ";
                }
                echo " ,
                        \"Estado\": ";
                // line 45
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "estado", array()), "id", array()), "html", null, true);
                echo ",
                        \"Fecha\": new Date(";
                // line 46
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "Y"), "html", null, true);
                echo ", ";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "m"), "html", null, true);
                echo "-1, ";
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "d"), "html", null, true);
                echo ", 0, 0, 0, 0),
                        \"Total\": \"";
                // line 47
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Operaciones\": \"<a href=\\\"";
                // line 48
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_showpdf", array("id" => $this->getAttribute(($context["cotizacion"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">get_app</i></a><span></span>";
                if ($this->getAttribute(($context["cotizacion"] ?? null), "contacto", array())) {
                    echo "<!--a href=\\\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_mail", array("id" => $this->getAttribute(($context["cotizacion"] ?? null), "id", array()))), "html", null, true);
                    echo "\\\"><i class=\\\"material-icons\\\">send</i></a><span></span-->";
                }
                if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de borrar esta cotización?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombreDelete"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">delete</i></a>";
                }
                echo "<span></span><a href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_edit", array("id" => $this->getAttribute(($context["cotizacion"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">edit</i></a><span></span><a target=\\\"_blank\\\" href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_showprint", array("id" => $this->getAttribute(($context["cotizacion"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">print</i></a><span></span>";
                if (($this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "estado", array()), "id", array()) != 2)) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de generar la orden de trabajo para esta cotización?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombre"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">content_paste</i></a><span></span>";
                }
                echo "<a href=\\\"#\\\" onclick=\\\"modal('";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_show", array("id" => $this->getAttribute(($context["cotizacion"] ?? null), "id", array()))), "html", null, true);
                echo "');\\\"><i class=\\\"material-icons\\\">search</i></a>\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 51
            echo "                    ";
        }
        // line 52
        echo "                ];

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
                            paging: true,

                            pageIndex: 1,
                            pageSize: 20,

                            pagePrevText: \"<\",
                            pageNextText: \">\",
                            pageFirstText: \"Primera\",
                            pageLastText: \"Última\",
                            pagerFormat: \"Páginas: {first} {prev} {pages} {next} {last}    {pageIndex} de {pageCount}\",
                            noDataContent: \"No se encontraron registros\",

                            filtering: true,
                            clearFilterButton: true,

                            data: items,

                            noDataContent: \"No se encontraron registros\",

                            fields: [
                                { name: \"Id\", title: \"Folio\", type: \"text\", width: \"1.5em\", css: \"textofila\" },

                                { name: \"Usuario\", title: \"Usuario\", type: \"select\", width: \"6em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 120
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["usuarios"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["usuario"]) {
            // line 121
            echo "                                        {
                                            \"Id\": ";
            // line 122
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 123
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
        // line 126
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Cliente\", title: \"Cliente\", type: \"select\", width: \"6em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 134
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["clientes"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["cliente"]) {
            // line 135
            echo "                                        {
                                            \"Id\": ";
            // line 136
            echo twig_escape_filter($this->env, $this->getAttribute($context["cliente"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 137
            echo twig_escape_filter($this->env, $this->getAttribute($context["cliente"], "razonsocial", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['cliente'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 140
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Estado\", title: \"Estado\", type: \"select\", width: \"4em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 148
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["estados"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["estado"]) {
            // line 149
            echo "                                        {
                                            \"Id\": ";
            // line 150
            echo twig_escape_filter($this->env, $this->getAttribute($context["estado"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 151
            echo twig_escape_filter($this->env, $this->getAttribute($context["estado"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['estado'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 154
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Fecha\",title: \"Fecha\", type: \"myDateField\", width: \"3em\", css: \"textofila\"},
                                { name: \"Total\",title: \"Total\", type: \"text\", width: \"3.5em\", css: \"textofila\", filtering:false},
                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"5em\", css: \"textofila\", filtering:false },
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Id > 0) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Id == filter.Id);
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
            <script>
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

    // line 258
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 259
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 260
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 261
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

    // line 265
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 266
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 267
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
        // line 269
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 270
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
        // line 272
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return "cotizacion/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  520 => 272,  506 => 270,  501 => 269,  487 => 267,  482 => 266,  479 => 265,  463 => 261,  459 => 260,  456 => 259,  453 => 258,  347 => 154,  338 => 151,  334 => 150,  331 => 149,  327 => 148,  317 => 140,  308 => 137,  304 => 136,  301 => 135,  297 => 134,  287 => 126,  276 => 123,  272 => 122,  269 => 121,  265 => 120,  195 => 52,  192 => 51,  160 => 48,  154 => 47,  146 => 46,  142 => 45,  132 => 44,  128 => 43,  124 => 42,  121 => 41,  118 => 40,  115 => 39,  112 => 38,  107 => 37,  105 => 36,  89 => 23,  83 => 19,  80 => 18,  70 => 16,  67 => 15,  65 => 14,  62 => 13,  55 => 11,  52 => 10,  49 => 9,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "cotizacion/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/index.html.twig");
    }
}
