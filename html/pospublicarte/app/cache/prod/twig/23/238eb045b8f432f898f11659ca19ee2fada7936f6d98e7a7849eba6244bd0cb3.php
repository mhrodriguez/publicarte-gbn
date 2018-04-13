<?php

/* pago/index.html.twig */
class __TwigTemplate_5e1a3097bc1a7d970baa173353a49c360987938d865a9e9e5112b6976004af22 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "pago/index.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h4>Orden ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "id", array()), "html", null, true);
        echo "</h4>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h5>Total: ";
        // line 13
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h5>Pagado: ";
        // line 16
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldoPagado", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h5>Pendiente: ";
        // line 19
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "saldoPendiente", array()), 2, ".", ","), "html", null, true);
        echo "</h5>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--9-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 26
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_new", array("idOrden" => $this->getAttribute(($context["orden"] ?? null), "id", array()))), "html", null, true);
        echo "'\">
                Nuevo Pago
            </button>
        </div>
        <div class=\"mdl-cell mdl-cell--1-col\">

        </div>
    </div>

    ";
        // line 35
        if ((twig_length_filter($this->env, ($context["pagos"] ?? null)) > 0)) {
            // line 36
            echo "    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["pagos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 37
                echo "        ";
                $context["pago"] = $this->getAttribute(($context["pagos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 38
                echo "        ";
                if ((($this->getAttribute(($context["pago"] ?? null), "validado", array()) == false) && $this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA"))) {
                    // line 39
                    echo "
            ";
                    // line 40
                    $context["validarForm"] = $this->getAttribute(($context["validarForms"] ?? null), ($context["index"] - 1), array(), "array");
                    // line 41
                    echo "            ";
                    $context["frmNombre"] = ("frm" . $this->getAttribute(($context["pago"] ?? null), "id", array()));
                    // line 42
                    echo "            ";
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["validarForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["validarForm"] ?? null), 'form_end');
                    echo "

            ";
                    // line 44
                    $context["borrarForm"] = $this->getAttribute(($context["borrarForms"] ?? null), ($context["index"] - 1), array(), "array");
                    // line 45
                    echo "            ";
                    $context["frmNombre"] = ("frmBorrar" . $this->getAttribute(($context["pago"] ?? null), "id", array()));
                    // line 46
                    echo "            ";
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["borrarForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                    echo                     $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["borrarForm"] ?? null), 'form_end');
                    echo "
        ";
                }
                // line 48
                echo "    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 49
            echo "    ";
        }
        // line 50
        echo "
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <br>
            <div>(<i class=\"material-icons\">edit</i>) Editar &emsp;(<i class=\"material-icons\">done_all</i>) Aprobar&emsp; (<i class=\"material-icons\">get_app</i>) Descargar&emsp; (<i class=\"material-icons\">print</i>) Imprimir</div>

            <script>
                var items = [
                    ";
        // line 59
        if ((twig_length_filter($this->env, ($context["pagos"] ?? null)) > 0)) {
            // line 60
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["pagos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 61
                echo "                    ";
                $context["pago"] = $this->getAttribute(($context["pagos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 62
                echo "                    ";
                $context["frmNombre"] = ("frm" . $this->getAttribute(($context["pago"] ?? null), "id", array()));
                // line 63
                echo "                    ";
                $context["frmBorrarNombre"] = ("frmBorrar" . $this->getAttribute(($context["pago"] ?? null), "id", array()));
                // line 64
                echo "                    {
                        \"Id\": ";
                // line 65
                echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "id", array()), "html", null, true);
                echo ",
                        \"Usuario\": ";
                // line 66
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "usuario", array()), "id", array()), "html", null, true);
                echo ",
                        \"Tipo\": ";
                // line 67
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "tipo", array()), "id", array()), "html", null, true);
                echo ",
                        \"Monto\": \"";
                // line 68
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "monto", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Fecha\": \"";
                // line 69
                echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fecha", array()), "Y-m-d"), "html", null, true);
                echo "\",
                        \"FechaPago\": ";
                // line 70
                if ($this->getAttribute(($context["pago"] ?? null), "fechapago", array())) {
                    echo " \"";
                    echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fechapago", array()), "Y-m-d"), "html", null, true);
                    echo "\" ";
                } else {
                    echo " \"\" ";
                }
                echo ",
                        \"Validado\": ";
                // line 71
                if ($this->getAttribute(($context["pago"] ?? null), "validado", array())) {
                    echo "true";
                } else {
                    echo "false";
                }
                echo ",
                        \"Operaciones\": \"";
                // line 72
                if (($this->getAttribute(($context["pago"] ?? null), "validado", array()) == false)) {
                    echo "<a href=\\\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_edit", array("id" => $this->getAttribute(($context["pago"] ?? null), "id", array()))), "html", null, true);
                    echo "\\\"><i class=\\\"material-icons\\\">edit</i></a>";
                }
                echo "<span></span>";
                if ((($this->getAttribute(($context["pago"] ?? null), "validado", array()) == false) && $this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA"))) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de validar este pago?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombre"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">done_all</i></a><span></span>";
                }
                echo "<a target=\\\"_blank\\\" href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_showprint", array("id" => $this->getAttribute(($context["pago"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">print</i></a><span></span><a href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_showpdf", array("id" => $this->getAttribute(($context["pago"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">get_app</i></a>";
                if ((($this->getAttribute(($context["pago"] ?? null), "validado", array()) == false) && $this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA"))) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de borrar este pago?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmBorrarNombre"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">delete</i></a><span></span>";
                }
                echo "\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 75
            echo "                    ";
        }
        // line 76
        echo "                ];

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

                            fields: [
                                { name: \"Id\", title: \"Id\", type: \"text\", width: \"1.5em\", css: \"textofila\", filtering:false },

                                { name: \"Usuario\", title: \"Usuario\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 108
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["usuarios"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["usuario"]) {
            // line 109
            echo "                                        {
                                            \"Id\": ";
            // line 110
            echo twig_escape_filter($this->env, $this->getAttribute($context["usuario"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 111
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
        // line 114
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Tipo\", title: \"Concepto\", type: \"select\", width: \"8em\", css: \"textofila\",
                                    items: [
                                        { \"Id\": -1, Nombre: \"Todos\" },
                                        ";
        // line 122
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["tipos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["tipo"]) {
            // line 123
            echo "                                        {
                                            \"Id\": ";
            // line 124
            echo twig_escape_filter($this->env, $this->getAttribute($context["tipo"], "id", array()), "html", null, true);
            echo ",
                                            \"Nombre\": \"";
            // line 125
            echo twig_escape_filter($this->env, $this->getAttribute($context["tipo"], "nombre", array()), "html", null, true);
            echo "\"
                                        },
                                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['tipo'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 128
        echo "                                    ],
                                    valueField: \"Id\",
                                    textField: \"Nombre\"
                                },

                                { name: \"Monto\",title: \"Monto\", type: \"text\", width: \"4em\", css: \"textofila\", filtering:false},
                                { name: \"Fecha\", title: \"Fecha de Alta\", type: \"text\", width: \"5em\", css: \"textofila\" },
                                { name: \"FechaPago\", title: \"Fecha de Pago\", type: \"text\", width: \"5em\", css: \"textofila\" },
                                { name: \"Validado\",title: \"Validado\", type: \"checkbox\", width: \"3em\", css: \"textofila\"},
                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"4em\", css: \"textofila\" },
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

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

                                    if (filter.Fecha != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Fecha.toUpperCase().indexOf(filter.Fecha.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.FechaPago != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.FechaPago.toUpperCase().indexOf(filter.FechaPago.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Validado != null) {
                                        registros = \$.grep(registros, function (item) {
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

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--4-col\">
            <a href=\"";
        // line 208
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_index");
        echo "\">Ir a Ordenes</a>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <a href=\"";
        // line 211
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_indexfact");
        echo "\">Ir a Ordenes con Factura</a>
        </div>
        <div class=\"mdl-cell mdl-cell--4-col\">
            <a href=\"";
        // line 214
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_indexesp");
        echo "\">Ir a Ordenes Especiales</a>
        </div>
    </div>

";
    }

    // line 220
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 221
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 222
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 223
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

    // line 227
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 228
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 229
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
        // line 231
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 232
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
        // line 234
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return "pago/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  494 => 234,  480 => 232,  475 => 231,  461 => 229,  456 => 228,  453 => 227,  437 => 223,  433 => 222,  430 => 221,  427 => 220,  418 => 214,  412 => 211,  406 => 208,  324 => 128,  315 => 125,  311 => 124,  308 => 123,  304 => 122,  294 => 114,  283 => 111,  279 => 110,  276 => 109,  272 => 108,  238 => 76,  235 => 75,  206 => 72,  198 => 71,  188 => 70,  184 => 69,  178 => 68,  174 => 67,  170 => 66,  166 => 65,  163 => 64,  160 => 63,  157 => 62,  154 => 61,  149 => 60,  147 => 59,  136 => 50,  133 => 49,  127 => 48,  120 => 46,  117 => 45,  115 => 44,  108 => 42,  105 => 41,  103 => 40,  100 => 39,  97 => 38,  94 => 37,  89 => 36,  87 => 35,  75 => 26,  63 => 19,  55 => 16,  47 => 13,  38 => 7,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "pago/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/pago/index.html.twig");
    }
}
