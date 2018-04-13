<?php

/* orden/editterm.html.twig */
class __TwigTemplate_ae6eb94340a2f60f46f1589aac7786d5689220f2e82037bfbecd2e4c4839e5f1 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "orden/editterm.html.twig", 1);
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
    <div id=\"detailsDialog\" title=\"Servicio\">
        <form id=\"detailsForm\">
            <fieldset>
                <label>Servicio</label>
                <br>
                <select id=\"selProducto\" style=\"width: 27em;\">
                    <option value=\"0\">Ninguno</option>
                    ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 13
            echo "                        <option id=\"optProducto";
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
        // line 15
        echo "                </select>
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
        // line 41
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "id", array()), "html", null, true);
        echo "</h4>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            ";
        // line 48
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "return datasubmit();")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 53
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "estado", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 56
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "estado", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 58
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "estado", array()), 'errors');
        echo "
                </div>
                <div id=\"divFolioFactura\" class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 62
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "foliofactura", array()), 'widget');
        echo "
                        ";
        // line 63
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "foliofactura", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 71
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 74
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 76
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "tipo", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 80
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "metodopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 83
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "metodopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 85
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "metodopago", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 89
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 92
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 94
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "mediopago", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 98
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "usocfdi", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 101
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "usocfdi", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 103
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "usocfdi", array()), 'errors');
        echo "
                </div>
            </div>

            <div id=\"divMaquina\" class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 110
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "maquina", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 113
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "maquina", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 115
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "maquina", array()), 'errors');
        echo "
                </div>
            </div>

            <div id=\"divControles\">

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 124
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 127
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 129
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "cliente", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label class=\"mdl-label\">
                        ";
        // line 133
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 136
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "contacto", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 138
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
        // line 147
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["orden"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 148
            echo "                            {
                                \"Estado\": \"\",
                                \"Id\":";
            // line 150
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "id", array()), "html", null, true);
            echo ",
                                \"IdProducto\":";
            // line 151
            if ($this->getAttribute($context["item"], "producto", array())) {
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["item"], "producto", array()), "id", array()), "html", null, true);
            } else {
                echo "0";
            }
            echo ",
                                \"Concepto\":\"";
            // line 152
            echo twig_escape_filter($this->env, twig_replace_filter($this->getAttribute($context["item"], "descripcion", array()), array("
" => " ")), "html", null, true);
            echo "\",
                                \"Codigo\":\"";
            // line 153
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "codigo", array()), "html", null, true);
            echo "\",
                                \"Tinta\":\"";
            // line 154
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "tinta", array()), "html", null, true);
            echo "\",
                                \"Cantidad\":";
            // line 155
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "cantidad", array()), "html", null, true);
            echo ",
                                \"Precio\":";
            // line 156
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "precio", array()), "html", null, true);
            echo ",
                                \"Subtotal\":";
            // line 157
            echo twig_escape_filter($this->env, ($this->getAttribute($context["item"], "cantidad", array()) * $this->getAttribute($context["item"], "precio", array())), "html", null, true);
            echo "
                            },
                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 160
        echo "                        ];

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

                                if (!isNew)
                                {
                                    estado = \"A\";
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
        // line 238
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["productos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["producto"]) {
            // line 239
            echo "                                            {
                                                \"Id\": ";
            // line 240
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "id", array()), "html", null, true);
            echo ",
                                                \"Nombre\": \"";
            // line 241
            echo twig_escape_filter($this->env, $this->getAttribute($context["producto"], "nombre", array()), "html", null, true);
            echo "\"
                                            },
                                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['producto'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 244
        echo "                                        ],
                                        valueField: \"Id\",
                                        textField: \"Nombre\"
                                    },
                                    { name: \"Concepto\", title: \"Descripción\", type: \"text\", width: \"9em\", css: \"textofila\" },
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
        // line 347
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "fechaentrega", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                        </label>
                        <i class=\"material-icons\" style=\"vertical-align: middle;\">insert_invitation</i>
                        ";
        // line 350
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechaentrega", array()), 'widget');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--7-col\">
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
                <h5>Acabado del Trabajo</h5>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 374
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "medidaimpresion", array()), 'widget');
        echo "
                        ";
        // line 375
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "medidaimpresion", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 380
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "papel", array()), 'widget');
        echo "
                        ";
        // line 381
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "papel", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 386
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "folio", array()), 'widget');
        echo "
                        ";
        // line 387
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "folio", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--3-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 392
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "block", array()), 'widget');
        echo "
                        ";
        // line 393
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "block", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                    <h5>Observaciones</h5>
                    <div class=\"mdl-cell mdl-cell--12-col\">
                        <div class=\"mdl-textfield mdl-js-textfield mdl-cell--12-col\">
                            ";
        // line 402
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "observaciones", array()), 'widget', array("attr" => array("rows" => "4")));
        echo "
                        </div>
                    </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <h5>
                        ";
        // line 410
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "impresionopciones", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </h5>
                    <div>
                        ";
        // line 413
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "impresionopciones", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 421
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorinicial", array()), 'widget');
        echo "
                        ";
        // line 422
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorinicial", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 427
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcfb", array()), 'widget');
        echo "
                        ";
        // line 428
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcfb", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--4-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 433
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcf", array()), 'widget');
        echo "
                        ";
        // line 434
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "colorcf", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            </div>

            ";
        // line 441
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "itemsaux", array()), 'widget');
        echo "
            ";
        // line 442
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "especial", array()), 'widget');
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Guardar</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 449
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath(($context["pathback"] ?? null));
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>
            ";
        // line 452
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 455
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "fechaentrega", array()), 'errors');
        echo "
                ";
        // line 456
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

        \$( \"#appbundle_orden_metodopago\" ).change(function() {

            var indexMetodopago = selectMetodopago.val();

            selectMediopagos.empty(); // remove old options
            selectMediopagos.append(\$(\"<option></option>\").attr(\"value\", \"\").text(\"\"));

            if (indexMetodopago >= 0 && indexMetodopago != \"\") {
                mostrarProgreso(true);

                var url = 'http://' + window.location.hostname + '";
        // line 488
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
            maquina();
        });

        \$('#divControles').find(':input').prop('disabled', true);

        \$('#appbundle_orden_especial').hide();

        ";
        // line 518
        if ($this->getAttribute(($context["orden"] ?? null), "especial", array())) {
            // line 519
            echo "        \$('#divFolioFactura').hide();
        ";
        }
        // line 521
        echo "
        \$( function() {
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
        function datasubmit()
        {
            if (\$('#appbundle_orden_fechaentrega').val() == '')
            {
                alert('El campo fecha es obligatorio.');
                return false;
            }

            var data = \$(\"#jsGrid\").jsGrid(\"option\", \"data\");
            if (data.length == 0) {
                // Las facturas historicas no tienen items
            }
            else
            {
                // 1. Actualizados
                var itemsauxactualizados = [];

                for (i = 0; i < data.length; i++) {
                    var item = data[i];

                    if (item.Estado == \"A\")
                    {
                        itemsauxactualizados.push(item);
                    }
                }

                json = JSON.stringify(itemsauxactualizados);
                \$(\"#appbundle_orden_itemsauxactualizados\").val(json);
            }


            mostrarProgreso(true);

            \$('#divControles').find(':input').prop('disabled', false);

            return true;
        }

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
    </script>
";
    }

    // line 590
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 591
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 592
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 593
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

    // line 597
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 598
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 599
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
        // line 601
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 602
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
        // line 604
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
";
    }

    public function getTemplateName()
    {
        return "orden/editterm.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  928 => 604,  914 => 602,  909 => 601,  895 => 599,  890 => 598,  887 => 597,  871 => 593,  867 => 592,  864 => 591,  861 => 590,  790 => 521,  786 => 519,  784 => 518,  751 => 488,  716 => 456,  712 => 455,  706 => 452,  700 => 449,  690 => 442,  686 => 441,  676 => 434,  672 => 433,  664 => 428,  660 => 427,  652 => 422,  648 => 421,  637 => 413,  631 => 410,  620 => 402,  608 => 393,  604 => 392,  596 => 387,  592 => 386,  584 => 381,  580 => 380,  572 => 375,  568 => 374,  541 => 350,  535 => 347,  430 => 244,  421 => 241,  417 => 240,  414 => 239,  410 => 238,  330 => 160,  321 => 157,  317 => 156,  313 => 155,  309 => 154,  305 => 153,  300 => 152,  292 => 151,  288 => 150,  284 => 148,  280 => 147,  268 => 138,  263 => 136,  257 => 133,  250 => 129,  245 => 127,  239 => 124,  227 => 115,  222 => 113,  216 => 110,  206 => 103,  201 => 101,  195 => 98,  188 => 94,  183 => 92,  177 => 89,  170 => 85,  165 => 83,  159 => 80,  152 => 76,  147 => 74,  141 => 71,  130 => 63,  126 => 62,  119 => 58,  114 => 56,  108 => 53,  100 => 48,  90 => 41,  62 => 15,  47 => 13,  43 => 12,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "orden/editterm.html.twig", "/var/www/html/pospublicarte/app/Resources/views/orden/editterm.html.twig");
    }
}
