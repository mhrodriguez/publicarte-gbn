<?php

/* orden/showprint.html.twig */
class __TwigTemplate_170e36a677953016485f3e92148c3873db659652f7e5c9f02325c3f86f7cb919 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<body onload=\"window.print();\">
<table>
    <tr>
        <td style=\"width:20%;\">
            ";
        // line 5
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "0e69364_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_0e69364_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/0e69364_img_logo_1.png");
            // line 6
            echo "            <img src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" style=\"height:80px;\"/>
            ";
        } else {
            // asset "0e69364"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_0e69364") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/0e69364.png");
            echo "            <img src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" style=\"height:80px;\"/>
            ";
        }
        unset($context["asset_url"]);
        // line 8
        echo "        </td>
        <td style=\"width:50%;text-align: center\">
            <h2>Orden de Trabajo
            ";
        // line 11
        if ($this->getAttribute(($context["orden"] ?? null), "tipo", array())) {
            // line 12
            echo "                <br>";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "tipo", array()), "nombre", array()), "html", null, true);
            echo "
            ";
        }
        // line 14
        echo "            </h2>
            <h3>Estado: ";
        // line 15
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "estado", array()), "nombre", array()), "html", null, true);
        echo "</h3>
        </td>
        <td style=\"width:30%;\">
            <table>
                <tr class=\"header\">
                    <td>Folio:</td>
                    <td>Folio de Cotización:</td>
                </tr>
                <tr>
                    <td colspan>";
        // line 24
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "id", array()), "html", null, true);
        echo "</td>
                    <td colspan>";
        // line 25
        if ($this->getAttribute(($context["orden"] ?? null), "cotizacion", array())) {
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cotizacion", array()), "id", array()), "html", null, true);
        }
        echo "</td>
                </tr>
                <tr class=\"header\">
                    <td>Agente de Ventas:</td>

                    <td>
                    ";
        // line 31
        if (($this->getAttribute(($context["orden"] ?? null), "tipo", array()) && (($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "tipo", array()), "id", array()) == 2) || ($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "tipo", array()), "id", array()) == 4)))) {
            // line 32
            echo "                    Máquina:
                    ";
        }
        // line 34
        echo "                    </td>
                </tr>
                <tr>
                    <td>";
        // line 37
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "usuario", array()), "nombre", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "usuario", array()), "apellidos", array()), "html", null, true);
        echo "</td>

                    <td>
                    ";
        // line 40
        if (($this->getAttribute(($context["orden"] ?? null), "tipo", array()) && (($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "tipo", array()), "id", array()) == 2) || ($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "tipo", array()), "id", array()) == 4)))) {
            // line 41
            echo "                        ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "maquina", array()), "nombre", array()), "html", null, true);
            echo "
                    ";
        }
        // line 43
        echo "                    </td>
                </tr>
                <tr class=\"header\">
                    <td colspan=\"2\">&nbsp;</td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td>Fecha de Entrega</td>
                </tr>
                <tr class=\"header\">
                    <td>";
        // line 53
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "fecha", array()), "d/m/Y"), "html", null, true);
        echo "</td>
                    <td>";
        // line 54
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "fechaentrega", array()), "d/m/Y"), "html", null, true);
        echo "</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
<table>
    <tr class=\"header\">
        ";
        // line 63
        if ($this->getAttribute(($context["orden"] ?? null), "cliente", array())) {
            // line 64
            echo "            <td style=\"width:50%;\">Cliente: ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "razonsocial", array()), "html", null, true);
            echo "</td>
        ";
        }
        // line 66
        echo "        ";
        if ($this->getAttribute(($context["orden"] ?? null), "contacto", array())) {
            // line 67
            echo "            <td style=\"width:50%;\">Contacto: ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "contacto", array()), "nombre", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "contacto", array()), "apellidos", array()), "html", null, true);
            echo "</td>
        ";
        }
        // line 69
        echo "    </tr>
    ";
        // line 70
        if ($this->getAttribute(($context["orden"] ?? null), "cliente", array())) {
            // line 71
            echo "    <tr>
        <td>RFC: ";
            // line 72
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "rfc", array()), "html", null, true);
            echo "</td>
        ";
            // line 73
            if ($this->getAttribute(($context["orden"] ?? null), "contacto", array())) {
                // line 74
                echo "        <td>E-mail: ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "contacto", array()), "correo", array()), "html", null, true);
                echo " / E-mail facturación: ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "contacto", array()), "correofacturacion", array()), "html", null, true);
                echo "</td>
        ";
            }
            // line 76
            echo "    </tr>
    <tr>
        <td>Dirección: ";
            // line 78
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "calle", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "numext", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "numint", array()), "html", null, true);
            echo " Col. ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "colonia", array()), "html", null, true);
            echo ", ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "municipio", array()), "html", null, true);
            echo ", ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "estado", array()), "nombre", array()), "html", null, true);
            echo ", C.P. ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["orden"] ?? null), "cliente", array()), "domicilios", array()), 0, array(), "array"), "cp", array()), "html", null, true);
            echo "</td>
        ";
            // line 79
            if ($this->getAttribute(($context["orden"] ?? null), "contacto", array())) {
                // line 80
                echo "        <td>Tel: ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "contacto", array()), "telefono", array()), "html", null, true);
                echo "</td>
        ";
            }
            // line 82
            echo "    </tr>
    <tr>

    </tr>
    ";
        }
        // line 87
        echo "</table>
<br>
<table>
    <tr class=\"header\">
            <td>Método de Pago</td>
            <td>Forma de Pago</td>
            <td>Uso del CFDI</td>
    </tr>
    <tr>
        <td colspan>";
        // line 96
        if ($this->getAttribute(($context["orden"] ?? null), "metodopago", array())) {
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "metodopago", array()), "nombre", array()), "html", null, true);
            echo " ";
        }
        echo "</td>
        <td colspan>";
        // line 97
        if ($this->getAttribute(($context["orden"] ?? null), "mediopago", array())) {
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "mediopago", array()), "nombre", array()), "html", null, true);
            echo " ";
        }
        echo "</td>
        <td colspan>";
        // line 98
        if ($this->getAttribute(($context["orden"] ?? null), "usocfdi", array())) {
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["orden"] ?? null), "usocfdi", array()), "nombre", array()), "html", null, true);
            echo " ";
        }
        echo "</td>
    </tr>
</table>
<br>
<table>
    <tr class=\"header\">
        <td class=\"separador\" style=\"width:10%\">No.</td>
        <td class=\"separador\" style=\"width:15%\">Servicio</td>
        <td class=\"separador\" style=\"width:20%\">Descripción</td>
        <td class=\"separador\" style=\"width:15%\">Código</td>
        <td class=\"separador\" style=\"width:15%\">Tinta</td>
        <td class=\"separador\" style=\"width:5%\">Cantidad</td>

        ";
        // line 111
        if (($context["conprecios"] ?? null)) {
            // line 112
            echo "        <td class=\"separador numero\" style=\"width:10%\">Precio Unitario</td>
        <td class=\"separador numero\" style=\"width:10%\">Importe</td>
        ";
        }
        // line 115
        echo "    </tr>
    ";
        // line 116
        $context["no"] = 1;
        // line 117
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["orden"] ?? null), "items", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 118
            echo "        <tr>
            <td>";
            // line 119
            echo twig_escape_filter($this->env, ($context["no"] ?? null), "html", null, true);
            echo "</td>
            <td>";
            // line 120
            if ($this->getAttribute($context["item"], "producto", array())) {
                echo " ";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["item"], "producto", array()), "nombre", array()), "html", null, true);
                echo " ";
            }
            echo "</td>
            <td> ";
            // line 121
            echo nl2br(twig_escape_filter($this->env, $this->getAttribute($context["item"], "descripcion", array()), "html", null, true));
            echo "</td>
            <td> ";
            // line 122
            echo nl2br(twig_escape_filter($this->env, $this->getAttribute($context["item"], "codigo", array()), "html", null, true));
            echo "</td>
            <td> ";
            // line 123
            echo nl2br(twig_escape_filter($this->env, $this->getAttribute($context["item"], "tinta", array()), "html", null, true));
            echo "</td>
            <td>";
            // line 124
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "cantidad", array()), "html", null, true);
            echo "</td>

            ";
            // line 126
            if (($context["conprecios"] ?? null)) {
                // line 127
                echo "            <td class=\"numero\">\$ ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["item"], "precio", array()), 2, ".", ","), "html", null, true);
                echo "</td>
            <td class=\"numero\">\$ ";
                // line 128
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["item"], "cantidad", array()) * $this->getAttribute($context["item"], "precio", array())), 2, ".", ","), "html", null, true);
                echo "</td>
            ";
            }
            // line 130
            echo "        </tr>
        ";
            // line 131
            $context["no"] = (($context["no"] ?? null) + 1);
            // line 132
            echo "    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 133
        echo "</table>

";
        // line 135
        if (($context["conprecios"] ?? null)) {
            // line 136
            echo "<table>
    <tr class=\"header\">
        <td style=\"width: 80%\"></td>
        <td style=\"width: 10%\" class=\"numero\">Subtotal</td>
        <td style=\"width: 10%\" class=\"numero\">\$ ";
            // line 140
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "subtotal", array()), 2, ".", ","), "html", null, true);
            echo "</td>
    </tr>
    <tr class=\"header\">
        <td class=\"separador\"></td>
        <td class=\"separador numero\" style=\"width: 10%\">IVA</td>
        <td class=\"separador numero\" style=\"width: 10%\">\$ ";
            // line 145
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "iva", array()), 2, ".", ","), "html", null, true);
            echo "</td>
    </tr>
    <tr class=\"header\">
        <td class=\"separador\"></td>
        <td class=\"separador numero\" style=\"width: 10%\">Total</td>
        <td class=\"separador numero\" style=\"width: 10%\">\$ ";
            // line 150
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
            echo "</td>
    </tr>
</table>
";
        }
        // line 154
        echo "
<h4>Acabado del trabajo</h4>

<table>
    <tr class=\"header\">
        <td style=\"width: 25%\">
            <label>Block:</label>
            <p>";
        // line 161
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "block", array()), "html", null, true);
        echo "</p><br>
        </td>
        <td style=\"width: 25%\">
            <label>Papel:</label>
            <p>";
        // line 165
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "papel", array()), "html", null, true);
        echo "</p><br>
        </td>
        <td style=\"width: 25%\">
            <label>Medida de impresión:</label>
            <p>";
        // line 169
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "medidaimpresion", array()), "html", null, true);
        echo "</p><br>
        </td>
        <td style=\"width: 25%\">
            <label>Folio:</label>
            <p>";
        // line 173
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "folio", array()), "html", null, true);
        echo "</p><br>
        </td>
    </tr>

    <tr class=\"header\">
        <td colspan=\"4\">
            <label>Observaciones:</label>
            <p>";
        // line 180
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "observaciones", array()), "html", null, true);
        echo "</p><br>
        </td>
    </tr>
    <tr class=\"header\">
        <td>
            <label>Opciones de Impresión:</label>
            <p>
            ";
        // line 187
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["orden"] ?? null), "impresionopciones", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["opcion"]) {
            // line 188
            echo "                - ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["opcion"], "nombre", array()), "html", null, true);
            echo "
                <br>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['opcion'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 191
        echo "            </p>
        </td>
        <td colspan=\"3\">
            <label>Color Inicial:</label>
            <p>
                ";
        // line 196
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "colorinicial", array()), "html", null, true);
        echo "
            </p>
            <label>Color Intermedio:</label>
            <p>
                ";
        // line 200
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "colorcfb", array()), "html", null, true);
        echo "
            </p>
            <label>Color Final:</label>
            <p>
                ";
        // line 204
        echo twig_escape_filter($this->env, $this->getAttribute(($context["orden"] ?? null), "colorcf", array()), "html", null, true);
        echo "
            </p>
        </td>
    </tr>

</table>


<style>
    body
    {
        margin: 20px;
    }

    table
    {
        width:100%;
        border-spacing: 0px;
    }
    tr
    {
        width:100%;
    }
    .header {
        background-color: #EEEEEE;
    }
    .separador
    {
        border-bottom:1px solid black;
    }
    p
    {
        text-align: match-parent;
    }
    td
    {
        font-size: 11px;
    }
    .numero
    {
        text-align: right;
    }
    label
    {
        font-weight: bold;
    }
</style>
</body>";
    }

    public function getTemplateName()
    {
        return "orden/showprint.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  456 => 204,  449 => 200,  442 => 196,  435 => 191,  425 => 188,  421 => 187,  411 => 180,  401 => 173,  394 => 169,  387 => 165,  380 => 161,  371 => 154,  364 => 150,  356 => 145,  348 => 140,  342 => 136,  340 => 135,  336 => 133,  330 => 132,  328 => 131,  325 => 130,  320 => 128,  315 => 127,  313 => 126,  308 => 124,  304 => 123,  300 => 122,  296 => 121,  288 => 120,  284 => 119,  281 => 118,  276 => 117,  274 => 116,  271 => 115,  266 => 112,  264 => 111,  244 => 98,  236 => 97,  228 => 96,  217 => 87,  210 => 82,  204 => 80,  202 => 79,  186 => 78,  182 => 76,  174 => 74,  172 => 73,  168 => 72,  165 => 71,  163 => 70,  160 => 69,  152 => 67,  149 => 66,  143 => 64,  141 => 63,  129 => 54,  125 => 53,  113 => 43,  107 => 41,  105 => 40,  97 => 37,  92 => 34,  88 => 32,  86 => 31,  75 => 25,  71 => 24,  59 => 15,  56 => 14,  50 => 12,  48 => 11,  43 => 8,  29 => 6,  25 => 5,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "orden/showprint.html.twig", "/var/www/html/pospublicarte/app/Resources/views/orden/showprint.html.twig");
    }
}
