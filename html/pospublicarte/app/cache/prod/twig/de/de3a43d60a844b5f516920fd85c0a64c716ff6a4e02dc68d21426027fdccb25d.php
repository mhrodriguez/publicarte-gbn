<?php

/* cotizacion/edit.html.twig */
class __TwigTemplate_5854ad9e3bc73dd9cb94370339f58a63744a8379e518522ca05978b2089b9d86 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "cotizacion/edit.html.twig", 1);
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
            echo "                            <option id=\"optProducto";
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
        echo "                    </select>
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

                <!-- Allow form submission with keyboard without duplicating the dialog button -->
                <!--input type=\"submit\" tabindex=\"-1\" style=\"position:absolute; top:-1000px\"-->
            </fieldset>
        </form>
    </div>
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 35
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "return datasubmit();")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 40
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 42
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), 'widget');
        echo "
                    ";
        // line 43
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 47
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 49
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), 'widget');
        echo "
                    ";
        // line 50
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div id=\"jsGrid\"></div>
                    <script>
                        var items = [
                            ";
        // line 59
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["cotizacion"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 60
            echo "                            {
                                \"Estado\": \"\",
                                \"Id\":";
            // line 62
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "id", array()), "html", null, true);
            echo ",
                                \"IdProducto\":";
            // line 63
            if ($this->getAttribute($context["item"], "producto", array())) {
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["item"], "producto", array()), "id", array()), "html", null, true);
            } else {
                echo "0";
            }
            echo ",
                                \"Concepto\":\"";
            // line 64
            echo twig_escape_filter($this->env, twig_replace_filter($this->getAttribute($context["item"], "descripcion", array()), array("
" => " ")), "html", null, true);
            echo "\",
                                \"Cantidad\":";
            // line 65
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "cantidad", array()), "html", null, true);
            echo ",
                                \"Precio\":";
            // line 66
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "precio", array()), "html", null, true);
            echo ",
                                \"Subtotal\":";
            // line 67
            echo twig_escape_filter($this->env, ($this->getAttribute($context["item"], "cantidad", array()) * $this->getAttribute($context["item"], "precio", array())), "html", null, true);
            echo "
                            },
                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 70
        echo "                        ];

                        var itemsaux = [];
                        var itemsauxborrados = [];

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
                                    \$(\"#selProducto\").prop( \"disabled\", true );
                                    \$(\"#selProducto\" ).val(concepto.IdProducto);
                                    \$('#selProducto').trigger('change');
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

//                                alert(concepto.Concepto);

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
                                editing: true,
                                autoload: true,
                                paging: true,
                                noDataContent: \"\",
                                deleteConfirm: function(item) {
                                    return \"¿Está seguro de quitar este elemento?\"
                                },
                                onItemDeleted: function(args) {
                                    if (args.item.Estado != \"N\")
                                    {
                                        itemsauxborrados.push(args.item);
                                    }
                                    calcularTotales();
                                },
                                rowClick: function(args) {
                                    showDetailsDialog(\"Edit\", args.item);
                                },
                                controller: items,
                                data: items,
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
        // line 170
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 171
            echo "                                            {
                                                \"Id\": ";
            // line 172
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo ",
                                                \"Nombre\": \"";
            // line 173
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "\"
                                            },
                                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 176
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
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        <a style=\"color:darkgray;\">
                            &nbsp;";
        // line 278
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "fechavalida", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </a>
                        ";
        // line 280
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechavalida", array()), 'widget');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        <a style=\"color:darkgray;\">
                            &nbsp;";
        // line 287
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "fecha", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </a>
                        ";
        // line 289
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fecha", array()), 'widget');
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
        // line 309
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "esquemapago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 312
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "esquemapago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 314
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "esquemapago", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 321
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tiempoentrega", array()), 'widget');
        echo "
                        ";
        // line 322
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tiempoentrega", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            ";
        // line 327
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "itemsaux", array()), 'widget');
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Guardar</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 334
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cotizacion_index", array());
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 337
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 340
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechavalida", array()), 'errors');
        echo "
                ";
        // line 341
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock(($context["edit_form"] ?? null), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
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
        // line 366
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

            \$('#appbundle_cotizacion_cliente').select2();
            \$('#appbundle_cotizacion_contacto').select2();
            \$('#selProducto').select2();
        } );
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
                // 1. Nuevos
                var itemsauxnuevos = [];
                var itemsauxactualizados = [];

                for (i = 0; i < data.length; i++) {
                    var item = data[i];

                    if (item.Estado == \"N\")
                    {
                        itemsauxnuevos.push(item);
                    }
                    else if (item.Estado == \"A\")
                    {
                        itemsauxactualizados.push(item);
                    }
                }

                var json = JSON.stringify(itemsauxnuevos);
                \$(\"#appbundle_cotizacion_itemsaux\").val(json);

                json = JSON.stringify(itemsauxactualizados);
                \$(\"#appbundle_cotizacion_itemsauxactualizados\").val(json);

                json = JSON.stringify(itemsauxborrados);
                \$(\"#appbundle_cotizacion_itemsauxborrados\").val(json);
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

    // line 463
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 464
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 465
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 466
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
        // line 468
        echo "    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js\"></script>
";
    }

    // line 471
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 472
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 473
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
        // line 475
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 476
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
        // line 478
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css\" rel=\"stylesheet\" />
";
    }

    public function getTemplateName()
    {
        return "cotizacion/edit.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  697 => 478,  683 => 476,  678 => 475,  664 => 473,  659 => 472,  656 => 471,  651 => 468,  637 => 466,  633 => 465,  630 => 464,  627 => 463,  527 => 366,  499 => 341,  495 => 340,  489 => 337,  483 => 334,  473 => 327,  465 => 322,  461 => 321,  451 => 314,  446 => 312,  440 => 309,  417 => 289,  412 => 287,  402 => 280,  397 => 278,  293 => 176,  284 => 173,  280 => 172,  277 => 171,  273 => 170,  171 => 70,  162 => 67,  158 => 66,  154 => 65,  149 => 64,  141 => 63,  137 => 62,  133 => 60,  129 => 59,  117 => 50,  113 => 49,  108 => 47,  101 => 43,  97 => 42,  92 => 40,  84 => 35,  61 => 14,  46 => 12,  42 => 11,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "cotizacion/edit.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/edit.html.twig");
    }
}
