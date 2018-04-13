<?php

/* :cortecaja:show.html.twig */
class __TwigTemplate_9896994f1e098afe845452e1eecd144c89aeb6312c4938f48f8ff299ab093e23 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":cortecaja:show.html.twig", 1);
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
        $context["iva"] = 0;
        // line 6
        echo "
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--9-col\">
            <h4>Resumen</h4>
        </div>
        <div class=\"mdl-cell mdl-cell--3-col\">
            <a target=\"_blank\" href=\"";
        // line 12
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cortecaja_show", array("id" => $this->getAttribute(($context["cortecaja"] ?? null), "id", array()), "_format" => "xls")), "html", null, true);
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Exportar a Excel</a>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <table class=\"mdl-data-table mdl-js-data-table mdl-shadow--2dp mdl-cell--12-col\">
                <thead>
                </thead>
                <tbody>
                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Fecha</label>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        ";
        // line 27
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "fecha", array()), "d-m-Y H:i:s"), "html", null, true);
        echo "
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Ventas en Efectivo</label>
                    </td>
                    <td>
                        ";
        // line 33
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "totalefectivo", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>
                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Sucursal</label>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        ";
        // line 41
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "sucursal", array()), "nombre", array()), "html", null, true);
        echo "
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Ventas con Tarjeta</label>
                    </td>
                    <td>
                        ";
        // line 47
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "totaltarjetacredito", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>
                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Usuario</label>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        ";
        // line 55
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "usuario", array()), "nombre", array()), "html", null, true);
        if ( !(null === $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "usuario", array()), "apellidos", array()))) {
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "usuario", array()), "apellidos", array()), "html", null, true);
        }
        // line 56
        echo "                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Propinas en Efectivo</label>
                    </td>
                    <td>
                        ";
        // line 61
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "propinasefectivo", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>
                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Periodo</label>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        ";
        // line 69
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "fechainicio", array()), "d-m-Y H:i"), "html", null, true);
        echo " a ";
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "fechafin", array()), "d-m-Y H:i"), "html", null, true);
        echo "
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Propinas con Tarjeta de Crédito</label>
                    </td>
                    <td>
                        ";
        // line 75
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "propinastarjetacredito", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>

                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">

                    </td>
                    <td>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Total de Ventas</label>
                    </td>
                    <td>
                        ";
        // line 89
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ((($this->getAttribute(($context["cortecaja"] ?? null), "totaltarjetacredito", array()) + $this->getAttribute(($context["cortecaja"] ?? null), "totalefectivo", array())) + $this->getAttribute(($context["cortecaja"] ?? null), "propinasefectivo", array())) + $this->getAttribute(($context["cortecaja"] ?? null), "propinastarjetacredito", array())), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>

                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">

                    </td>
                    <td>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Ventas en Efectivo Reportadas</label>
                    </td>
                    <td>
                        ";
        // line 103
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "totalefectivoreportado", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>

                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">

                    </td>
                    <td>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Ventas con Tarjeta Reportadas</label>
                    </td>
                    <td>
                        ";
        // line 117
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "totaltarjetacreditoreportado", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>

                <tr>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                    </td>
                    <td>
                    </td>
                    <td class=\"mdl-data-table__cell--non-numeric\">
                        <label class=\"lbl-titulo\">Remanente</label>
                    </td>
                    <td>
                        ";
        // line 130
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cortecaja"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cortecaja"] ?? null), "remanente", array()), 2, ".", ","), "html", null, true);
        echo "
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <h4>Ventas</h4>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <script>
                var items = [
                    ";
        // line 144
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["ventas"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["venta"]) {
            // line 145
            echo "
                    {
                        \"Fecha\": \"<b>";
            // line 147
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute($context["venta"], "fecha", array()), "Y-m-d H:i:s"), "html", null, true);
            echo "</b>\",
                        \"Producto\": \"<b>Venta ";
            // line 148
            echo twig_escape_filter($this->env, $this->getAttribute($context["venta"], "id", array()), "html", null, true);
            echo "</b>\",
                        \"FormaPago\": \"<b>";
            // line 149
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["venta"], "mediopago", array()), "nombre", array()), "html", null, true);
            echo "</b>\"
                    },

                    ";
            // line 152
            $context["iva"] = ($this->getAttribute($context["venta"], "iva", array()) / $this->getAttribute($context["venta"], "subtotal", array()));
            // line 153
            echo "
                    ";
            // line 154
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["venta"], "items", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["ventaitem"]) {
                // line 155
                echo "                    {
                        \"Producto\": \"";
                // line 156
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitem"], "descripcion", array()), "html", null, true);
                echo "\",
                        \"Cantidad\": \"";
                // line 157
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitem"], "cantidad", array()), "html", null, true);
                echo "\",
                        \"PrecioUnitario\": \"";
                // line 158
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitem"], "precio", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Subtotal\": \"";
                // line 159
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitem"], "precio", array()) * $this->getAttribute($context["ventaitem"], "cantidad", array())), 2, ".", ","), "html", null, true);
                echo "\",
                        \"IVA\": \"";
                // line 160
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, (($this->getAttribute($context["ventaitem"], "precio", array()) * $this->getAttribute($context["ventaitem"], "cantidad", array())) * ($context["iva"] ?? null)), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Total\": \"";
                // line 161
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitem"], "total", array()) + (($this->getAttribute($context["ventaitem"], "precio", array()) * $this->getAttribute($context["ventaitem"], "cantidad", array())) * ($context["iva"] ?? null))), 2, ".", ","), "html", null, true);
                echo "\"
                    },

                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ventaitem'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 165
            echo "
                    ";
            // line 166
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["venta"], "itempaquetes", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["ventaitempaquete"]) {
                // line 167
                echo "                    {
                        \"Producto\": \"";
                // line 168
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "descripcion", array()), "html", null, true);
                echo "\",
                        \"Cantidad\": \"";
                // line 169
                echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "cantidad", array()), "html", null, true);
                echo "\",
                        \"PrecioUnitario\": \"";
                // line 170
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "precio", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Subtotal\": \"";
                // line 171
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "total", array()), 2, ".", ","), "html", null, true);
                echo "\",
                        \"IVA\": \"";
                // line 172
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitempaquete"], "total", array()) * ($context["iva"] ?? null)), 2, ".", ","), "html", null, true);
                echo "\",
                        \"Total\": \"";
                // line 173
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitempaquete"], "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitempaquete"], "total", array()) + ($this->getAttribute($context["ventaitempaquete"], "total", array()) * ($context["iva"] ?? null))), 2, ".", ","), "html", null, true);
                echo "\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ventaitempaquete'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 176
            echo "
                    {
                        \"Subtotal\": \"<b>";
            // line 178
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["venta"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["venta"], "subtotal", array()), 2, ".", ","), "html", null, true);
            echo "</b>\",
                        \"IVA\": \"<b>";
            // line 179
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["ventaitem"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["venta"], "iva", array()), 2, ".", ","), "html", null, true);
            echo "</b>\",
                        \"Total\": \"<b>";
            // line 180
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["ventaitem"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["venta"], "total", array()), 2, ".", ","), "html", null, true);
            echo "</b>\"
                    },

                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['venta'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 184
        echo "                ];

                \$(\"#jsGrid\").jsGrid({
                            width: \"100%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: false,

                            pageIndex: 1,

                            filtering: false,
                            clearFilterButton: true,

                            data: items,

                            noDataContent: \"No se encontraron registros\",

                            fields: [
                                { name: \"Fecha\", title: \"Fecha\", type: \"text\", width: \"6em\", css: \"textofila\", filtering:false },
                                { name: \"Producto\",title: \"Producto\", type: \"text\", width: \"18em\", css: \"textofila\", filtering:false},
                                { name: \"FormaPago\",title: \"Forma de pago\", type: \"text\", width: \"6em\", css: \"textofila\", filtering:false},
                                { name: \"Cantidad\", title: \"Cantidad\", type: \"number\", width: \"3em\", css: \"textofila\", filtering:false },
                                { name: \"PrecioUnitario\", title: \"Precio Unitario\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Subtotal\", title: \"Subtotal\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"IVA\", title: \"IVA\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Total\", title: \"Total\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                            ],
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
        <h4>Productos vendidos</h4>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid2\"></div>
            <script>
                var items2 = [
                    ";
        // line 234
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["ventagrupo"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["ventaitem"]) {
            // line 235
            echo "                    {
                        \"Cantidad\": \"";
            // line 236
            echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitem"], "cantidad", array()), "html", null, true);
            echo "\",
                        \"Producto\": \"";
            // line 237
            echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitem"], "descripcion", array()), "html", null, true);
            echo "\",
                        \"PrecioUnitario\": \"";
            // line 238
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitem"], "precio", array()), 2, ".", ","), "html", null, true);
            echo "\",
                        \"Subtotal\": \"";
            // line 239
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitem"], "total", array()), 2, ".", ","), "html", null, true);
            echo "\",
                        \"IVA\": \"";
            // line 240
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitem"], "total", array()) * ($context["iva"] ?? null)), 2, ".", ","), "html", null, true);
            echo "\",
                        \"Total\": \"";
            // line 241
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["ventaitem"], "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitem"], "total", array()) + ($this->getAttribute($context["ventaitem"], "total", array()) * ($context["iva"] ?? null))), 2, ".", ","), "html", null, true);
            echo "\"
                    },
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ventaitem'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 244
        echo "                ];

                \$(\"#jsGrid2\").jsGrid({
                            width: \"100%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: false,

                            pageIndex: 1,

                            filtering: false,
                            clearFilterButton: true,

                            data: items2,

                            noDataContent: \"No se encontraron registros\",

                            fields: [
                                { name: \"Producto\",title: \"Producto\", type: \"text\", width: \"18em\", css: \"textofila\", filtering:false},
                                { name: \"Cantidad\", title: \"Cantidad\", type: \"number\", width: \"3em\", css: \"textofila\", filtering:false },
                                { name: \"PrecioUnitario\", title: \"Precio Unitario\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Subtotal\", title: \"Subtotal\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"IVA\", title: \"IVA\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Total\", title: \"Total\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                            ],
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
        <h4>Paquetes vendidos</h4>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid3\"></div>
            <script>
                var items3 = [
                    ";
        // line 292
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["ventagrupo"] ?? null), "itempaquetes", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["ventaitempaquete"]) {
            // line 293
            echo "                    {
                        \"Cantidad\": \"";
            // line 294
            echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "cantidad", array()), "html", null, true);
            echo "\",
                        \"Producto\": \"";
            // line 295
            echo twig_escape_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "descripcion", array()), "html", null, true);
            echo "\",
                        \"Subtotal\": \"";
            // line 296
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["ventaitem"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["ventaitempaquete"], "total", array()), 2, ".", ","), "html", null, true);
            echo "\",
                        \"IVA\": \"";
            // line 297
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["ventaitem"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitempaquete"], "total", array()) * ($context["iva"] ?? null)), 2, ".", ","), "html", null, true);
            echo "\",
                        \"Total\": \"";
            // line 298
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["ventaitem"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["ventaitempaquete"], "total", array()) + ($this->getAttribute($context["ventaitempaquete"], "total", array()) * ($context["iva"] ?? null))), 2, ".", ","), "html", null, true);
            echo "\"
                    },
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['ventaitempaquete'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 301
        echo "                ];

                \$(\"#jsGrid3\").jsGrid({
                            width: \"100%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: false,

                            pageIndex: 1,

                            filtering: false,
                            clearFilterButton: true,

                            data: items3,

                            noDataContent: \"No se encontraron registros\",

                            fields: [
                                { name: \"Producto\",title: \"Producto\", type: \"text\", width: \"18em\", css: \"textofila\", filtering:false},
                                { name: \"Cantidad\", title: \"Cantidad\", type: \"number\", width: \"3em\", css: \"textofila\", filtering:false },
                                { name: \"Subtotal\", title: \"Subtotal\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"IVA\", title: \"IVA\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                                { name: \"Total\", title: \"Total\", type: \"number\", width: \"4em\", css: \"textofila\", filtering:false },
                            ],
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
        <div class=\"mdl-cell mdl-cell--12-col\">
            <a href=\"";
        // line 344
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cortecaja_index");
        echo "\">Volver a Corte de caja</a>
        </div>
    </div>

";
    }

    // line 350
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 351
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 352
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 353
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

    // line 357
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 358
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 359
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
        // line 361
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 362
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
        // line 364
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":cortecaja:show.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  691 => 364,  677 => 362,  672 => 361,  658 => 359,  653 => 358,  650 => 357,  634 => 353,  630 => 352,  627 => 351,  624 => 350,  615 => 344,  570 => 301,  559 => 298,  553 => 297,  547 => 296,  543 => 295,  539 => 294,  536 => 293,  532 => 292,  482 => 244,  471 => 241,  465 => 240,  459 => 239,  453 => 238,  449 => 237,  445 => 236,  442 => 235,  438 => 234,  386 => 184,  374 => 180,  368 => 179,  362 => 178,  358 => 176,  347 => 173,  341 => 172,  335 => 171,  329 => 170,  325 => 169,  321 => 168,  318 => 167,  314 => 166,  311 => 165,  299 => 161,  293 => 160,  287 => 159,  281 => 158,  277 => 157,  273 => 156,  270 => 155,  266 => 154,  263 => 153,  261 => 152,  255 => 149,  251 => 148,  247 => 147,  243 => 145,  239 => 144,  220 => 130,  202 => 117,  183 => 103,  164 => 89,  145 => 75,  134 => 69,  121 => 61,  114 => 56,  108 => 55,  95 => 47,  86 => 41,  73 => 33,  64 => 27,  46 => 12,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cortecaja:show.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cortecaja/show.html.twig");
    }
}
