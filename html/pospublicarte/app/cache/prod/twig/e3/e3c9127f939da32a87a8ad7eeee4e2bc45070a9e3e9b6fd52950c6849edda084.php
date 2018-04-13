<?php

/* orden/new.html.twig */
class __TwigTemplate_5e2e37fd20b8f78c4a68f550b4bf73507bcb00586b77138a769bd6d1fb7b7192 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "orden/new.html.twig", 1);
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
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 41
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "return datasubmit();")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 46
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "cliente", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 48
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cliente", array()), 'widget');
        echo "
                    ";
        // line 49
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cliente", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 53
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "contacto", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    ";
        // line 55
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "contacto", array()), 'widget');
        echo "
                    ";
        // line 56
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "contacto", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 63
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "tipo", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 66
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "tipo", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 68
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "tipo", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 72
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "metodopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 75
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "metodopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 77
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "metodopago", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 81
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "mediopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 84
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "mediopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 86
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "mediopago", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 90
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "usocfdi", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 93
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "usocfdi", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 95
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "usocfdi", array()), 'errors');
        echo "
                </div>
            </div>

            <div id=\"divMaquina\" class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 102
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "maquina", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 105
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "maquina", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 107
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "maquina", array()), 'errors');
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

                                \$.extend(concepto, {
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
                                deleteConfirm: function(item) {
                                    return \"¿Está seguro de quitar este elemento?\"
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
        // line 199
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 200
            echo "                                            {
                                                \"Id\": ";
            // line 201
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo ",
                                                \"Nombre\": \"";
            // line 202
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "\"
                                            },
                                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 205
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
        // line 307
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "fechaentrega", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </label>
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        ";
        // line 310
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "fechaentrega", array()), 'widget');
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
        // line 334
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "block", array()), 'widget');
        echo "
                        ";
        // line 335
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "block", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 340
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "medidaimpresion", array()), 'widget');
        echo "
                        ";
        // line 341
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "medidaimpresion", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 346
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "papel", array()), 'widget');
        echo "
                        ";
        // line 347
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "papel", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 352
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "folio", array()), 'widget');
        echo "
                        ";
        // line 353
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "folio", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <h5>Observaciones</h5>
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                        ";
        // line 362
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "observaciones", array()), 'widget', array("attr" => array("rows" => "4")));
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <h5>
                        ";
        // line 370
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "impresionopciones", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </h5>
                    <div>
                        ";
        // line 373
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "impresionopciones", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 381
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "colorinicial", array()), 'widget');
        echo "
                        ";
        // line 382
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "colorinicial", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 387
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "colorcfb", array()), 'widget');
        echo "
                        ";
        // line 388
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "colorcfb", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 393
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "colorcf", array()), 'widget');
        echo "
                        ";
        // line 394
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "colorcf", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            ";
        // line 399
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "itemsaux", array()), 'widget');
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Crear</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 406
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_index", array());
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 409
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 412
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "fechaentrega", array()), 'errors');
        echo "
                ";
        // line 413
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock(($context["form"] ?? null), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        \$( \"#divMaquina\").hide();

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
        // line 447
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
        // line 479
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

        \$( \"#appbundle_orden_tipo\" ).change(function() {

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
        });

        \$(\"#selProducto\" ).change(function() {
            var precio = \$('#selProducto').find(\":selected\").attr('pu');
            \$(\"#txtPrecio\").val(precio);
        });

        \$( function() {
            prepararCalendario(\$( \"#appbundle_orden_fechaentrega\" ));

            \$('#appbundle_orden_cliente').select2();
            \$('#appbundle_orden_contacto').select2();
            \$('#selProducto').select2();
        } );

        \$(document).ready(function(){
            \$(\"<h6>Intercalado</h6>\").insertBefore(\"#appbundle_orden_impresionopciones_10\");
            \$(\"<h6>Acabados</h6>\").insertBefore(\"#appbundle_orden_impresionopciones_1\");
            \$(\"<br/>\").insertBefore(\"#appbundle_orden_impresionopciones_11\");
            \$(\"<br/>\").insertBefore(\"#appbundle_orden_impresionopciones_14\");
        });

        \$('#appbundle_orden_fechaentrega').val(\"";
        // line 537
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now +10 day", "d/m/Y"), "html", null, true);
        echo "\")
    </script>

    <script>
        function datasubmit()
        {
            if (\$('#appbundle_orden_fechaentrega').val() == '')
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
                \$(\"#appbundle_orden_itemsaux\").val(json);
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

    // line 578
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 579
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 580
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 581
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
        // line 583
        echo "    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js\"></script>
";
    }

    // line 586
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 587
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 588
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
        // line 590
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 591
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
        // line 593
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css\" rel=\"stylesheet\" />
";
    }

    public function getTemplateName()
    {
        return "orden/new.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  860 => 593,  846 => 591,  841 => 590,  827 => 588,  822 => 587,  819 => 586,  814 => 583,  800 => 581,  796 => 580,  793 => 579,  790 => 578,  746 => 537,  685 => 479,  650 => 447,  613 => 413,  609 => 412,  603 => 409,  597 => 406,  587 => 399,  579 => 394,  575 => 393,  567 => 388,  563 => 387,  555 => 382,  551 => 381,  540 => 373,  534 => 370,  523 => 362,  511 => 353,  507 => 352,  499 => 347,  495 => 346,  487 => 341,  483 => 340,  475 => 335,  471 => 334,  444 => 310,  438 => 307,  334 => 205,  325 => 202,  321 => 201,  318 => 200,  314 => 199,  219 => 107,  214 => 105,  208 => 102,  198 => 95,  193 => 93,  187 => 90,  180 => 86,  175 => 84,  169 => 81,  162 => 77,  157 => 75,  151 => 72,  144 => 68,  139 => 66,  133 => 63,  123 => 56,  119 => 55,  114 => 53,  107 => 49,  103 => 48,  98 => 46,  90 => 41,  61 => 14,  46 => 12,  42 => 11,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "orden/new.html.twig", "/var/www/html/pospublicarte/app/Resources/views/orden/new.html.twig");
    }
}
