<?php

/* orden/edit.html.twig */
class __TwigTemplate_bd2ebff5bc44d11ee73b932d5e73bf6d1e80a9e3f28d38e7e3d25a9979f1bc8b extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "orden/edit.html.twig", 1);
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
    <div id=\"dialog-confirm\" title=\"Orden Terminada\">
        <p>Seleccione el tipo de Orden</p>
    </div>

    <div id=\"detailsDialog\" title=\"Servicio\">
        <form id=\"detailsForm\">
            <fieldset>
                <label>Servicio</label>
                <br>
                    <select id=\"selProducto\" style=\"width: 27em;\">
                        <option value=\"0\">Ninguno</option>
                        ";
        // line 16
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 17
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
        // line 19
        echo "                    </select>
                <br>
                <br>
                <label>Descripción</label>
                <textarea name=\"txtConcepto\" id=\"txtConcepto\" value=\"\" rows=\"4\" cols=\"100\" class=\"text ui-widget-content ui-corner-all\"></textarea>
                <br>
                <label for=\"txtCodigo\">Código</label>
                <input type=\"text\" name=\"txtCodigo\" id=\"txtCodigo\" value=\"\" class=\"text ui-widget-content ui-corner-all\">
                <br>
                <label for=\"txtTinta\">Tinta</label>
                <input type=\"text\" name=\"txtTinta\" id=\"txtTinta\" value=\"\" class=\"text ui-widget-content ui-corner-all\">
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
        <div class=\"mdl-cell mdl-cell--4-col\">
            <h4>Orden ";
        // line 45
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "id", array()), "html", null, true);
        echo "</h4>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 52
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "return datasubmit();", "id" => "appbundle_orden")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 57
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "estado", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 60
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "estado", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 62
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "estado", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 69
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 71
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), 'widget');
        echo "
                    ";
        // line 72
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 76
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 78
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), 'widget');
        echo "
                    ";
        // line 79
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 86
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 89
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 91
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 95
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "metodopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 98
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "metodopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 100
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "metodopago", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 104
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 107
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 109
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 113
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "usocfdi", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 116
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "usocfdi", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 118
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "usocfdi", array()), 'errors');
        echo "
                </div>
            </div>

            <div id=\"divMaquina\" class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 125
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "maquina", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 128
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "maquina", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 130
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "maquina", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div id=\"jsGrid\"></div>
                    <script>
                        var items = [
                            ";
        // line 139
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["orden"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 140
            echo "                            {
                                \"Estado\": \"\",
                                \"Id\":";
            // line 142
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "id", array()), "html", null, true);
            echo ",
                                \"IdProducto\":";
            // line 143
            if ($this->getAttribute($context["item"], "producto", array())) {
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["item"], "producto", array()), "id", array()), "html", null, true);
            } else {
                echo "0";
            }
            echo ",
                                \"Concepto\":\"";
            // line 144
            echo twig_escape_filter($this->env, twig_replace_filter($this->getAttribute($context["item"], "descripcion", array()), array("
" => " ")), "html", null, true);
            echo "\",
                                \"Codigo\":\"";
            // line 145
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "codigo", array()), "html", null, true);
            echo "\",
                                \"Tinta\":\"";
            // line 146
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "tinta", array()), "html", null, true);
            echo "\",
                                \"Cantidad\":";
            // line 147
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "cantidad", array()), "html", null, true);
            echo ",
                                \"Precio\":";
            // line 148
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "precio", array()), "html", null, true);
            echo ",
                                \"Subtotal\":";
            // line 149
            echo twig_escape_filter($this->env, ($this->getAttribute($context["item"], "cantidad", array()) * $this->getAttribute($context["item"], "precio", array())), "html", null, true);
            echo "
                            },
                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 152
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
                                \$(\"#txtCodigo\").val(concepto.Codigo);
                                \$(\"#txtTinta\").val(concepto.Tinta);

                                formSubmitHandler = function() {
                                    saveConcepto(concepto, operacion === \"Add\");
                                };

                                \$( \"#detailsDialog\" ).dialog(\"open\");
                            };

                            var saveConcepto = function(concepto, isNew) {

                                var cantidad = parseInt(\$(\"#txtCantidad\").val(), 10)
                                var precio = parseFloat(\$(\"#txtPrecio\").val());
                                var estado = \"N\";

                                if (!isNew) // Si fue edición de registro
                                {
                                    if (concepto.Estado != \"N\")
                                    {
                                        estado = \"A\";
                                    }
                                }

                                \$.extend(concepto, {
                                    Estado: estado,
                                    IdProducto: parseInt(\$(\"#selProducto\").val()),
                                    Concepto: \$(\"#txtConcepto\").val(),
                                    Codigo: \$(\"#txtCodigo\").val(),
                                    Tinta: \$(\"#txtTinta\").val(),
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
                                rowClick: function(args) {
                                    showDetailsDialog(\"Edit\", args.item);
                                },
                                controller: items,
                                data: items,

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
        // line 259
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 260
            echo "                                            {
                                                \"Id\": ";
            // line 261
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo ",
                                                \"Nombre\": \"";
            // line 262
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "\"
                                            },
                                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 265
        echo "                                        ],
                                        valueField: \"Id\",
                                        textField: \"Nombre\"
                                    },
                                    { name: \"Concepto\", title: \"Descripción\", type: \"text\", width: \"6em\", css: \"textofila\" },
                                    { name: \"Codigo\", title: \"Código\", type: \"text\", width: \"6em\", css: \"textofila\" },
                                    { name: \"Tinta\", title: \"Tinta\", type: \"text\", width: \"6em\", css: \"textofila\" },
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
                        <label for=\"appbundle_orden_fechaentrega\">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        // line 368
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "fechaentrega", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </label>
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        ";
        // line 371
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechaentrega", array()), 'widget');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <b><label>Subtotal</label></b><br>
                    <b><label>IVA</label></b><br>
                    <b><label>Total</label></b>
                </div>
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <label id=\"lblSubtotal\">\$ 0.00</label><br>
                    <label id=\"lblIVA\">\$ 0.00</label><br>
                    <label id=\"lblTotal\">\$ 0.00</label>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <h5>Acabado del Trabajo</h5>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 395
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "block", array()), 'widget');
        echo "
                        ";
        // line 396
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "block", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 401
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "medidaimpresion", array()), 'widget');
        echo "
                        ";
        // line 402
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "medidaimpresion", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 407
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "papel", array()), 'widget');
        echo "
                        ";
        // line 408
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "papel", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 413
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "folio", array()), 'widget');
        echo "
                        ";
        // line 414
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "folio", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <h5>Observaciones</h5>
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        ";
        // line 423
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "observaciones", array()), 'widget', array("attr" => array("rows" => "4")));
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <h5>
                        ";
        // line 431
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "impresionopciones", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </h5>
                    <div>
                        ";
        // line 434
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "impresionopciones", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 442
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorinicial", array()), 'widget');
        echo "
                        ";
        // line 443
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorinicial", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 448
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcfb", array()), 'widget');
        echo "
                        ";
        // line 449
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcfb", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 454
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcf", array()), 'widget');
        echo "
                        ";
        // line 455
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcf", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            ";
        // line 460
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "itemsaux", array()), 'widget');
        echo "
            ";
        // line 461
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "especial", array()), 'widget');
        echo "
            ";
        // line 462
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "foliofactura", array()), 'widget');
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Guardar</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"javascript:history.back()\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 472
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 475
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechaentrega", array()), 'errors');
        echo "
                ";
        // line 476
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock(($context["edit_form"] ?? null), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        \$('form input').addClass('mdl-textfield__input')
        \$('form textarea').addClass('mdl-textfield__input')

        \$('.mdl-textfield label').addClass('mdl-textfield__label')

        \$('#appbundle_orden_impresionopciones input').removeClass('mdl-textfield__input');
        \$('#appbundle_orden_impresionopciones label').removeClass('mdl-textfield__label');
        \$('#lblImpresionOpciones').removeClass('mdl-textfield__label');

        var selectCliente = \$(\"#appbundle_orden_cliente\");
        var selectContactos = \$(\"#appbundle_orden_contacto\");
        var selectMetodopago = \$(\"#appbundle_orden_metodopago\");
        var selectMediopagos = \$(\"#appbundle_orden_mediopago\");
        var selectTipo = \$(\"#appbundle_orden_tipo\");

        \$( \"#appbundle_orden_cliente\" ).change(function() {

            var indexCliente = selectCliente.val();

            selectContactos.empty(); // remove old options
            selectContactos.append(\$(\"<option></option>\").attr(\"value\", \"\").text(\"\"));

            if (indexCliente >= 0 && indexCliente != \"\") {
                mostrarProgreso(true);

                var url = 'http://' + window.location.hostname + '";
        // line 508
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

        \$( \"#appbundle_orden_metodopago\" ).change(function() {

            var indexMetodopago = selectMetodopago.val();

            selectMediopagos.empty(); // remove old options
            selectMediopagos.append(\$(\"<option></option>\").attr(\"value\", \"\").text(\"\"));

            if (indexMetodopago >= 0 && indexMetodopago != \"\") {
                mostrarProgreso(true);

                var url = 'http://' + window.location.hostname + '";
        // line 540
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("mediopago_index", array("idMetodoPago" => 1000));
        echo ".json';
                url = url.replace('1000', indexMetodopago);

                \$.ajax({
                    url: url, dataType: \"json\",
                    success: function (data) {

                        var index=0;
                        \$.each(data, function (key, value) {
                            selectMediopagos.append(\$(\"<option></option>\")
                                    .attr(\"value\", data[index].id).text(data[index].nombre));
                            index++;
                        });

                        mostrarProgreso(false);

                        selectMediopagos.val(-1);
                    }
                });
            }
        });

        \$(\"#selProducto\" ).change(function() {
            var precio = \$('#selProducto').find(\":selected\").attr('pu');
            \$(\"#txtPrecio\").val(precio);
        });

        \$( \"#appbundle_orden_tipo\" ).change(function() {
            maquina();
        });

        \$( function() {
            prepararCalendario(\$( \"#appbundle_orden_fechaentrega\" ));

            \$('#appbundle_orden_cliente').select2();
            \$('#appbundle_orden_contacto').select2();
            \$('#selProducto').select2();

            \$('#appbundle_orden_especial').hide();
            \$('#appbundle_orden_foliofactura').hide();

            \$( \"#dialog-confirm\" ).dialog({
                autoOpen: false,
                resizable: false,
                height: \"auto\",
                width: 400,
                modal: true,
                buttons: {
                    \"Facturada\": function() {

                        var folio = prompt(\"Ingrese el Folio de la Factura\", \"\");
                        if (folio == null)
                        {
                            return false;
                        }
                        if (folio == \"\")
                        {
                            alert(\"Folio inválido.\");
                            return false;
                        }

                        \$(\"#appbundle_orden_foliofactura\").val(folio);
                        \$(\"#appbundle_orden_especial\").prop('checked', false);
                        datasubmit2();
                    },
                    \"Especial\": function() {
                        \$(\"#appbundle_orden_especial\").prop('checked', true);
                        datasubmit2();
                    },
                    Cancel: function() {
                        \$( this ).dialog( \"close\" );
                    }
                }
            });

            \$(document).ready(function(){
                \$(\"<h6>Intercalado</h6>\").insertBefore(\"#appbundle_orden_impresionopciones_10\");
                \$(\"<h6>Acabados</h6>\").insertBefore(\"#appbundle_orden_impresionopciones_1\");
                \$(\"<br/>\").insertBefore(\"#appbundle_orden_impresionopciones_11\");
                \$(\"<br/>\").insertBefore(\"#appbundle_orden_impresionopciones_14\");
            });

            maquina();
        } );
    </script>

    <script>
        var cancelSubmit=false;

        function maquina()
        {
            var indexTipo = selectTipo.val();
            if (indexTipo == 2 || indexTipo == 4) // Rotulos o Offset
            {
                \$(\"#divMaquina\").show();
                \$(\"#appbundle_orden_maquina\").prop('disabled', false);
            }
            else
            {
                \$( \"#divMaquina\").hide();
                \$(\"#appbundle_orden_maquina\").prop('disabled', true);
            }
        }

        function datasubmit()
        {
            var idEstado = \$(\"#appbundle_orden_estado\").val();
            if (idEstado == 9) // Si es Salida...
            {
                \$(\"#dialog-confirm\").dialog(\"open\");
            }
            else
            {
                datasubmit2();
            }

            return false;
        }

        function datasubmit2()
        {
            if (\$('#appbundle_orden_fechaentrega').val() == '')
            {
                alert('El campo fecha es obligatorio.');
                return false;
            }

            var data = \$(\"#jsGrid\").jsGrid(\"option\", \"data\");
            if (data.length == 0) {
                alert('No ha sido agregado ningún elemento.');
                return ;
            }
            else
            {
                // 1. Actualizados
                var itemsauxactualizados = [];
                var itemsaux = [];

                for (i = 0; i < data.length; i++) {
                    var item = data[i];

                    if (item.Estado == \"A\")
                    {
                        itemsauxactualizados.push(item);
                    }
                    else if (item.Estado == \"N\") // Nuevo
                    {
                        itemsaux.push(item);
                    }
                }

                json = JSON.stringify(itemsauxactualizados);
                \$(\"#appbundle_orden_itemsauxactualizados\").val(json);

                json = JSON.stringify(itemsaux);
                \$(\"#appbundle_orden_itemsaux\").val(json);

                json = JSON.stringify(itemsauxborrados);
                \$(\"#appbundle_orden_itemsauxborrados\").val(json);
            }

            mostrarProgreso(true);

            document.getElementById('appbundle_orden').submit();
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

    // line 718
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 719
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 720
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 721
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
        // line 723
        echo "    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js\"></script>
";
    }

    // line 726
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 727
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 728
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
        // line 730
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 731
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
        // line 733
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css\" rel=\"stylesheet\" />
";
    }

    public function getTemplateName()
    {
        return "orden/edit.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1051 => 733,  1037 => 731,  1032 => 730,  1018 => 728,  1013 => 727,  1010 => 726,  1005 => 723,  991 => 721,  987 => 720,  984 => 719,  981 => 718,  800 => 540,  765 => 508,  730 => 476,  726 => 475,  720 => 472,  707 => 462,  703 => 461,  699 => 460,  691 => 455,  687 => 454,  679 => 449,  675 => 448,  667 => 443,  663 => 442,  652 => 434,  646 => 431,  635 => 423,  623 => 414,  619 => 413,  611 => 408,  607 => 407,  599 => 402,  595 => 401,  587 => 396,  583 => 395,  556 => 371,  550 => 368,  445 => 265,  436 => 262,  432 => 261,  429 => 260,  425 => 259,  316 => 152,  307 => 149,  303 => 148,  299 => 147,  295 => 146,  291 => 145,  286 => 144,  278 => 143,  274 => 142,  270 => 140,  266 => 139,  254 => 130,  249 => 128,  243 => 125,  233 => 118,  228 => 116,  222 => 113,  215 => 109,  210 => 107,  204 => 104,  197 => 100,  192 => 98,  186 => 95,  179 => 91,  174 => 89,  168 => 86,  158 => 79,  154 => 78,  149 => 76,  142 => 72,  138 => 71,  133 => 69,  123 => 62,  118 => 60,  112 => 57,  104 => 52,  94 => 45,  66 => 19,  51 => 17,  47 => 16,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "orden/edit.html.twig", "/var/www/html/pospublicarte/app/Resources/views/orden/edit.html.twig");
    }
}
