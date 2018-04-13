<?php

/* :cotizacion:new.html.twig */
class __TwigTemplate_84fc22764feb549f847845ae2b376c926d986482ad09ed1b6d59131073d29440 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":cotizacion:new.html.twig", 1);
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
        echo "    <div id=\"detailsDialog\" title=\"Servicio\">
        <form id=\"detailsForm\">
            <fieldset>
                <label>Servicio</label>
                <br>
                <select id=\"selProducto\" style=\"width: 27em;\">
                    <option value=\"0\">Ninguno</option>
                    ";
        // line 11
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 12
            echo "                    <option id=\"optProducto";
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo "\" value=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo "\" pu=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "precio", array()), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "</option>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 14
        echo "                </select>
                <br>
                <br>
                <label>Descripción</label>
                <textarea name=\"txtConcepto\" id=\"txtConcepto\" value=\"\" rows=\"4\" cols=\"100\" class=\"text ui-widget-content ui-corner-all\"></textarea>
                <br>
                <br>
                <label for=\"txtPrecio\">Precio Unitario</label>
                <input type=\"text\" name=\"txtPrecio\" id=\"txtPrecio\" value=\"\" class=\"text ui-widget-content ui-corner-all\">
                <br>
                <label for=\"txtCantidad\">Cantidad</label>
                <input type=\"text\" name=\"txtCantidad\" id=\"txtCantidad\" value=\"\" class=\"text ui-widget-content ui-corner-all\">
            </fieldset>
        </form>
    </div>
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 32
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "return datasubmit();")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 37
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "cliente", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label><br>
                    ";
        // line 39
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cliente", array()), 'widget');
        echo "
                    ";
        // line 40
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cliente", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 44
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "contacto", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 46
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "contacto", array()), 'widget');
        echo "
                    ";
        // line 47
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "contacto", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div id=\"jsGrid\"></div>
                    <script>
                        var items = [];

                        \$(function() {
                            var formSubmitHandler = \$.noop;

                            var showDetailsDialog = function(operacion, concepto) {

                                if (operacion === \"Add\")
                                {
                                    \$(\"#txtPrecio\").val( \$('#selProducto').find(\":selected\").attr('pu') );

                                    \$(\"#selProducto\" ).prop( \"disabled\", false );
                                    \$(\"#selProducto\" ).val(0);
                                    \$('#selProducto').trigger('change');
                                }
                                else
                                {
                                    \$(\"#selProducto\" ).val(concepto.IdProducto);
                                    \$('#selProducto').trigger('change');
                                    \$(\"#selProducto\").prop( \"disabled\", true );
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

                                \$.extend(concepto, {
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
                                editing: true,
                                autoload: true,
                                paging: true,
                                noDataContent: \"\",
                                deleteConfirm: function(item) {
                                    return \"¿Está seguro de quitar este elemento?\"
                                },
                                onItemDeleted: function(args) {
                                    calcularTotales();
                                },
                                rowClick: function(args) {
                                    showDetailsDialog(\"Edit\", args.item);
                                },
                                controller: items,
                                fields: [
                                    {
                                        type: \"control\",
                                        modeSwitchButton: false,
                                        editButton: false,
                                        headerTemplate: function() {
                                            return \$(\"<button>\").attr(\"type\", \"button\").text(\"+\")
                                                    .on(\"click\", function () {
                                                        showDetailsDialog(\"Add\", {});
                                                        return false;
                                                    });
                                        }
                                    },

                                    { name: \"IdProducto\", title: \"Servicio\", type: \"select\", width: \"9em\", css: \"textofila\",
                                        items: [
                                            ";
        // line 139
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 140
            echo "                                            {
                                                \"Id\": ";
            // line 141
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo ",
                                                \"Nombre\": \"";
            // line 142
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "\"
                                            },
                                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 145
        echo "                                        ],
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
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        <a style=\"color:darkgray;\">
                            &nbsp;";
        // line 246
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "fechavalida", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </a>
                        ";
        // line 248
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "fechavalida", array()), 'widget');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        <a style=\"color:darkgray;\">
                            &nbsp;";
        // line 255
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "fecha", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </a>
                        ";
        // line 257
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "fecha", array()), 'widget');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
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

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 277
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "esquemapago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 280
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "esquemapago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 282
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "esquemapago", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 289
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "tiempoentrega", array()), 'widget');
        echo "
                        ";
        // line 290
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "tiempoentrega", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            ";
        // line 295
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "itemsaux", array()), 'widget');
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Crear</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 302
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_index", array());
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 305
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 308
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "fechavalida", array()), 'errors');
        echo "
                ";
        // line 309
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock(($context["form"] ?? null), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        \$('#appbundle_cotizacion_tiempoentrega').val(\"7 días hábiles\");

        \$('form input').addClass('mdl-textfield__input')
        \$('form textarea').addClass('mdl-textfield__input')

        \$('.mdl-textfield label').addClass('mdl-textfield__label')

        var selectCliente = \$(\"#appbundle_cotizacion_cliente\");
        var selectContactos = \$(\"#appbundle_cotizacion_contacto\");

        \$( \"#appbundle_cotizacion_cliente\" ).change(function() {

            var indexCliente = selectCliente.val();

            selectContactos.empty(); // remove old options
            selectContactos.append(\$(\"<option></option>\").attr(\"value\", \"\").text(\"\"));

            if (indexCliente >= 0 && indexCliente != \"\") {
                mostrarProgreso(true);

                var url = 'http://' + window.location.hostname + '";
        // line 336
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("contacto_index", array("idCliente" => 1000));
        echo ".json';
                url = url.replace('1000', indexCliente);

                \$.ajax({
                    url: url, dataType: \"json\",
                    success: function (data) {

                        var index=0;
                        \$.each(data, function (key, value) {
                            selectContactos.append(\$(\"<option></option>\")
                                    .attr(\"value\", data[index].id).text(data[index].nombre + \" \" + data[index].apellidos));
                            index++;
                        });

                        mostrarProgreso(false);

                        selectContactos.val(-1);
                    }
                });
            }
        });

        \$(\"#selProducto\" ).change(function() {
            var precio = \$('#selProducto').find(\":selected\").attr('pu');
            \$(\"#txtPrecio\").val(precio);
        });

        \$( function() {
            prepararCalendario(\$( \"#appbundle_cotizacion_fechavalida\" ));
            prepararCalendario(\$( \"#appbundle_cotizacion_fecha\" ));
        } );

        \$(document).ready(function() {
            \$('#appbundle_cotizacion_cliente').select2();
            \$('#appbundle_cotizacion_contacto').select2();
            \$('#selProducto').select2();
        });

        \$('#appbundle_cotizacion_fechavalida').val(\"";
        // line 374
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now +15 day", "d/m/Y"), "html", null, true);
        echo "\")
    </script>

    <script>
        function datasubmit()
        {
            if (\$('#appbundle_cotizacion_fechavalida').val() == '')
            {
                alert('El campo fecha es obligatorio.');
                return false;
            }

            var data = \$(\"#jsGrid\").jsGrid(\"option\", \"data\");
            if (data.length == 0) {
                alert('No ha sido agregado ningún elemento.');
                return false;
            }
            else
            {
                var json = JSON.stringify(data);
                \$(\"#appbundle_cotizacion_itemsaux\").val(json);
            }

            mostrarProgreso(true);

            return true;
        }

        function prepararCalendario(control)
        {
            control.datepicker({
                        defaultDate: new Date(),
                        dateFormat: \"dd/mm/yy\",
                        monthNames: [ \"Enero\", \"Febrero\", \"Marzo\", \"Abril\", \"Mayo\", \"Junio\", \"Julio\", \"Agosto\", \"Septiembre\", \"Octubre\", \"Noviembre\", \"Diciembre\" ]
                    }
            );
        }
    </script>
";
    }

    // line 414
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 415
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 416
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 417
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
        // line 419
        echo "    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js\"></script>
";
    }

    // line 422
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 423
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 424
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
        // line 426
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 427
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
        // line 429
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css\" rel=\"stylesheet\" />
";
    }

    public function getTemplateName()
    {
        return ":cotizacion:new.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  618 => 429,  604 => 427,  599 => 426,  585 => 424,  580 => 423,  577 => 422,  572 => 419,  558 => 417,  554 => 416,  551 => 415,  548 => 414,  505 => 374,  464 => 336,  434 => 309,  430 => 308,  424 => 305,  418 => 302,  408 => 295,  400 => 290,  396 => 289,  386 => 282,  381 => 280,  375 => 277,  352 => 257,  347 => 255,  337 => 248,  332 => 246,  229 => 145,  220 => 142,  216 => 141,  213 => 140,  209 => 139,  114 => 47,  110 => 46,  105 => 44,  98 => 40,  94 => 39,  89 => 37,  81 => 32,  61 => 14,  46 => 12,  42 => 11,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cotizacion:new.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/new.html.twig");
    }
}
