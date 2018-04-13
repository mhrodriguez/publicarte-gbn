<?php

/* cotizacion/show.html.twig */
class __TwigTemplate_0491b4fde4276bd0954d0f0891a40ae522b02b954fd557c5cef6cdd6cb0d059c extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "cotizacion/show.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <script>
                var items = [
                    ";
        // line 10
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["cotizacion"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 11
            echo "                    {
                        \"Estado\": \"\",
                        \"Id\":";
            // line 13
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "id", array()), "html", null, true);
            echo ",
                        \"IdProducto\":";
            // line 14
            if ($this->getAttribute($context["item"], "producto", array())) {
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["item"], "producto", array()), "id", array()), "html", null, true);
            } else {
                echo "0";
            }
            echo ",
                        \"Concepto\":\"";
            // line 15
            echo twig_escape_filter($this->env, twig_replace_filter($this->getAttribute($context["item"], "descripcion", array()), array("
" => " ")), "html", null, true);
            echo "\",
                        \"Cantidad\":";
            // line 16
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "cantidad", array()), "html", null, true);
            echo ",
                        \"Precio\":";
            // line 17
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "precio", array()), "html", null, true);
            echo ",
                        \"Subtotal\":";
            // line 18
            echo twig_escape_filter($this->env, ($this->getAttribute($context["item"], "cantidad", array()) * $this->getAttribute($context["item"], "precio", array())), "html", null, true);
            echo "
                    },
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 21
        echo "                ];

                var itemsaux = [];

                \$(function() {

                    var formSubmitHandler = \$.noop;

                    var showDetailsDialog = function(operacion, concepto) {

                        if (operacion === \"Add\")
                        {
                            \$(\"#txtPrecio\").val( \$('#selProducto').find(\":selected\").attr('pu') );
                            \$(\"#selProducto\" ).prop( \"disabled\", false );
                            \$(\"#selProducto\" ).val(0);
                        }
                        else
                        {
                            \$(\"#selProducto\").prop( \"disabled\", true );
                            \$(\"#selProducto\" ).val(concepto.IdProducto);
                        }

                        \$(\"#txtConcepto\").val(concepto.Concepto);
                        \$(\"#txtPrecio\").val( concepto.Precio );
                        \$(\"#txtCantidad\").val(concepto.Cantidad);

                        formSubmitHandler = function() {
                            saveConcepto(concepto, operacion === \"Add\");
                        };

                        \$( \"#detailsDialog\" ).dialog(\"open\");
                    };

                    var saveConcepto = function(concepto, isNew) {

                        var cantidad = parseInt(\$(\"#txtCantidad\").val(), 10)
                        var precio = parseFloat(\$(\"#txtPrecio\").val());
                        var estado = \"N\";

                        if (!isNew)
                        {
                            estado = \"A\";
                        }

                        \$.extend(concepto, {
                            Estado: estado,
                            IdProducto: parseInt(\$(\"#selProducto\").val()),
                            Concepto: \$(\"#txtConcepto\").val(),
                            Cantidad: cantidad,
                            Precio: precio,
                            Subtotal: cantidad*precio
                        });

                        \$(\"#jsGrid\").jsGrid(isNew ? \"insertItem\" : \"updateItem\", concepto);

                        calcularTotales();
                    };

                    \$(\"#jsGrid\").jsGrid({
                        height: \"auto\",
                        width: \"100%\",
                        editing: false,
                        autoload: true,
                        paging: true,
                        noDataContent: \"\",
                        controller: items,
                        data: items,
                        rowClick: function(args) {
                            showDetailsDialog(\"Edit\", args.item);
                        },
                        fields: [

                            { name: \"IdProducto\", title: \"Servicio\", type: \"select\", width: \"9em\", css: \"textofila\",
                                items: [
                                    ";
        // line 95
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 96
            echo "                                    {
                                        \"Id\": ";
            // line 97
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo ",
                                        \"Nombre\": \"";
            // line 98
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "\"
                                    },
                                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 101
        echo "                                ],
                                valueField: \"Id\",
                                textField: \"Nombre\"
                            },
                            { name: \"Concepto\", title: \"Descripción\", type: \"text\", width: \"9em\", css: \"textofila\" },
                            { name: \"Precio\", type: \"number\", width: \"4em\", css: \"textofila\", itemTemplate: function(value) {
                                return \"\$ \" + value.toFixed(2); } },
                            { name: \"Cantidad\", type: \"number\", width: \"3em\", css: \"textofila\" },
                            { name: \"Subtotal\", type: \"number\", width: \"6em\", css: \"textofila\", itemTemplate: function(value) {
                                return \"\$ \" + value.toFixed(2); } },
                        ]
                    });
                    calcularTotales();

                    \$(\"#detailsDialog\").dialog({
                        autoOpen: false,
                        width: 400,
                        close: function() {
                        },
                        buttons: {
                            \"Guardar\": addConcepto,
                            \"Cancelar\": function() {
                                \$(\"#detailsDialog\").dialog( \"close\" );
                            }
                        }
                    });

                    function validarForm()
                    {
                        if (!checkRegexp(\$(\"#txtCantidad\"), /^[1-9][0-9]*\$/i ))
                        {
                            alert(\"Cantidad inválida\");
                            return false;
                        }

                        var precio = \$(\"#txtPrecio\").val();
                        if  (precio.charAt(0) == '.') { \$(\"#txtPrecio\").val(\"0\" + precio); }
                        if (!checkRegexp(\$(\"#txtPrecio\"), /^(\\d+)(\\.\\d{1,2})?\$/i ))
                        {
                            alert(\"Precio inválido\");
                            return false;
                        }

                        if (!checkRegexp(\$(\"#txtConcepto\"), /^\\w+/i) && \$(\"#selProducto\").val() == 0)
                        {
                            alert(\"Seleccione un servicio o escriba su descripción.\");
                            return false;
                        }

                        return true;
                    }

                    function addConcepto() {
                        var valid = validarForm();
                        if ( valid ) {
                            formSubmitHandler();
                            \$(\"#detailsDialog\").dialog( \"close\" );
                        }
                        return valid;
                    }

                    function checkRegexp(o, regexp, n) {
                        if ( !( regexp.test( o.val() ) ) ) {
                            return false;
                        } else {
                            return true;
                        }
                    }

                    function calcularTotales()
                    {
                        var subtotal=0, iva=0, total=0;
                        var data = \$(\"#jsGrid\").jsGrid(\"option\", \"data\");

                        for (var i = 0, len = data.length; i < len; i++) {
                            subtotal += data[i].Subtotal;
                        }
                        iva = subtotal*0.16;
                        total = subtotal + iva;

                        \$(\"#lblSubtotal\").html(\" \$ \" + subtotal.toFixed(2));

                        \$(\"#lblIVA\").html(\"  \$ \" + iva.toFixed(2));
                        \$(\"#lblTotal\").html(\"\$ \" + total.toFixed(2));
                    }
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

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--9-col\">
        </div>
        <div class=\"mdl-cell mdl-cell--1-col\">
            <b><label>Subtotal</label></b><br>
            <b><label>IVA</label></b><br>
            <b><label>Total</label></b>
        </div>
        <div class=\"mdl-cell mdl-cell--1-col\">
            <label id=\"lblSubtotal\">\$ 0.00</label><br>
            <label id=\"lblIVA\">\$ 0.00</label><br>
            <label id=\"lblTotal\">\$ 0.00</label>
        </div>
    </div>

    <script>

    </script>
";
    }

    // line 218
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 219
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 220
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 221
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

    // line 225
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 226
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 227
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
        // line 229
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 230
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
        // line 232
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
";
    }

    public function getTemplateName()
    {
        return "cotizacion/show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  365 => 232,  351 => 230,  346 => 229,  332 => 227,  327 => 226,  324 => 225,  308 => 221,  304 => 220,  301 => 219,  298 => 218,  179 => 101,  170 => 98,  166 => 97,  163 => 96,  159 => 95,  83 => 21,  74 => 18,  70 => 17,  66 => 16,  61 => 15,  53 => 14,  49 => 13,  45 => 11,  41 => 10,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "cotizacion/show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/show.html.twig");
    }
}
