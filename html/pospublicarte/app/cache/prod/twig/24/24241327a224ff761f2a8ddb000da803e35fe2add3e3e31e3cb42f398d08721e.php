<?php

/* cotizacion/showprint.html.twig */
class __TwigTemplate_7379a13b586c071cf437e12b47f5fd801b7b6cae41ddc30ac3a05658b33a8ea9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            '__internal_2e8cf070020f67cf7c1ae64d9a667d5970a24befa534d92c47ca623978b11e2b' => array($this, 'block___internal_2e8cf070020f67cf7c1ae64d9a667d5970a24befa534d92c47ca623978b11e2b'),
            '__internal_70100accecd50bbee816101e45f3fc2274fcd5e7c3080f5c146a7fbd8333aafa' => array($this, 'block___internal_70100accecd50bbee816101e45f3fc2274fcd5e7c3080f5c146a7fbd8333aafa'),
            '__internal_1d4a5841bb7d77b5738b49993d26d5d6c83dfa0ae36b8e8bedeb3301114ce1c4' => array($this, 'block___internal_1d4a5841bb7d77b5738b49993d26d5d6c83dfa0ae36b8e8bedeb3301114ce1c4'),
            '__internal_1b1ec45db2871df21d28fbdc27e5d6e974d70d5c52a0da27d98d94808326006a' => array($this, 'block___internal_1b1ec45db2871df21d28fbdc27e5d6e974d70d5c52a0da27d98d94808326006a'),
            '__internal_5146662eba5e7d41503a2510c516592df34559651a01a75526d40b2b32f163ff' => array($this, 'block___internal_5146662eba5e7d41503a2510c516592df34559651a01a75526d40b2b32f163ff'),
            '__internal_4cb83abbd99a1206b90fffb6355510a49bb2dd47b8adb000548e50e703ea6ffe' => array($this, 'block___internal_4cb83abbd99a1206b90fffb6355510a49bb2dd47b8adb000548e50e703ea6ffe'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<body onload=\"window.print();\">
";
        // line 2
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "ecdc128_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_ecdc128_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/ecdc128_img_header_1.jpg");
            // line 3
            echo "<img src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" style=\"height:10em;width:100%\">
";
        } else {
            // asset "ecdc128"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_ecdc128") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/ecdc128.jpg");
            echo "<img src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" style=\"height:10em;width:100%\">
";
        }
        unset($context["asset_url"]);
        // line 5
        echo "
<div style=\"margin: 2em;\">
<table>
    <tr>
        <td style=\"width:20%;\">
        </td>
        <td style=\"width:58%;text-align: center\">
        </td>
        <td style=\"width:22%;\">
            <table>
                <tr>
                    ";
        // line 16
        $context["mes"] = twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "F");
        // line 17
        echo "                    ";
        if ((($context["mes"] ?? null) == "January")) {
            echo " ";
            $context["mes"] = "ENERO";
            echo " ";
        }
        // line 18
        echo "                    ";
        if ((($context["mes"] ?? null) == "February")) {
            echo " ";
            $context["mes"] = "FEBRERO";
            echo " ";
        }
        // line 19
        echo "                    ";
        if ((($context["mes"] ?? null) == "March")) {
            echo " ";
            $context["mes"] = "MARZO";
            echo " ";
        }
        // line 20
        echo "                    ";
        if ((($context["mes"] ?? null) == "April")) {
            echo " ";
            $context["mes"] = "ABRIL";
            echo " ";
        }
        // line 21
        echo "                    ";
        if ((($context["mes"] ?? null) == "May")) {
            echo " ";
            $context["mes"] = "MAYO";
            echo " ";
        }
        // line 22
        echo "                    ";
        if ((($context["mes"] ?? null) == "June")) {
            echo " ";
            $context["mes"] = "JUNIO";
            echo " ";
        }
        // line 23
        echo "                    ";
        if ((($context["mes"] ?? null) == "July")) {
            echo " ";
            $context["mes"] = "JULIO";
            echo " ";
        }
        // line 24
        echo "                    ";
        if ((($context["mes"] ?? null) == "August")) {
            echo " ";
            $context["mes"] = "AGOSTO";
            echo " ";
        }
        // line 25
        echo "                    ";
        if ((($context["mes"] ?? null) == "September")) {
            echo " ";
            $context["mes"] = "SEPTIEMBRE";
            echo " ";
        }
        // line 26
        echo "                    ";
        if ((($context["mes"] ?? null) == "October")) {
            echo " ";
            $context["mes"] = "OCTUBRE";
            echo " ";
        }
        // line 27
        echo "                    ";
        if ((($context["mes"] ?? null) == "November")) {
            echo " ";
            $context["mes"] = "NOVIEMBRE";
            echo " ";
        }
        // line 28
        echo "                    ";
        if ((($context["mes"] ?? null) == "December")) {
            echo " ";
            $context["mes"] = "DICIEMBRE";
            echo " ";
        }
        // line 29
        echo "                    <td>";
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "d"), "html", null, true);
        echo " DE ";
        echo twig_escape_filter($this->env, ($context["mes"] ?? null), "html", null, true);
        echo " DEL ";
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fecha", array()), "Y"), "html", null, true);
        echo "</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td colspan=\"2\"></td>
                </tr>
                <tr>
                    <td colspan=\"2\">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<p><b>
    ";
        // line 48
        if ($this->getAttribute(($context["cotizacion"] ?? null), "contacto", array())) {
            // line 49
            echo "        ";
            echo twig_escape_filter($this->env, twig_upper_filter($this->env,             $this->renderBlock("__internal_2e8cf070020f67cf7c1ae64d9a667d5970a24befa534d92c47ca623978b11e2b", $context, $blocks)), "html", null, true);
            // line 52
            echo "    ";
        }
        // line 53
        echo "    <br/>

    ";
        // line 55
        if ($this->getAttribute(($context["cotizacion"] ?? null), "cliente", array())) {
            // line 56
            echo "        ";
            echo twig_escape_filter($this->env, twig_upper_filter($this->env,             $this->renderBlock("__internal_70100accecd50bbee816101e45f3fc2274fcd5e7c3080f5c146a7fbd8333aafa", $context, $blocks)), "html", null, true);
            // line 59
            echo "    ";
        }
        // line 60
        echo "    <br/>
    PRESENTE
</b></p>
<p>
    PRESENTO A USTED LA SIGUIENTE COTIZACIÓN:
</p>
<br>
<table>
    <tr class=\"header\">
        <td class=\"separador\" style=\"width:10%\">NO.</td>
        <td class=\"separador\" style=\"width:30%\">SERVICIO</td>
        <td class=\"separador\" style=\"width:30%\">DESCRIPCIÓN</td>
        <td class=\"separador\" style=\"width:10%\">CANTIDAD</td>
        <td class=\"separador numero\" style=\"width:10%\">PRECIO UNITARIO</td>
        <td class=\"separador numero\" style=\"width:10%\">IMPORTE</td>
    </tr>
    ";
        // line 76
        $context["no"] = 1;
        // line 77
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["cotizacion"] ?? null), "items", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 78
            echo "    <tr>
        <td>";
            // line 79
            echo twig_escape_filter($this->env, ($context["no"] ?? null), "html", null, true);
            echo "</td>
        <td>";
            // line 80
            if ($this->getAttribute($context["item"], "producto", array())) {
                echo " ";
                echo twig_escape_filter($this->env, twig_upper_filter($this->env,                 $this->renderBlock("__internal_1d4a5841bb7d77b5738b49993d26d5d6c83dfa0ae36b8e8bedeb3301114ce1c4", $context, $blocks)), "html", null, true);
                echo " ";
            }
            echo "</td>
        <td style=\"text-transform: uppercase\"> ";
            // line 81
            echo nl2br(twig_escape_filter($this->env, $this->getAttribute($context["item"], "descripcion", array()), "html", null, true));
            echo "</td>
        <td>";
            // line 82
            echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "cantidad", array()), "html", null, true);
            echo "</td>
        <td class=\"numero\">\$ ";
            // line 83
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($context["item"], "precio", array()), 2, ".", ","), "html", null, true);
            echo "</td>
        <td class=\"numero\">\$ ";
            // line 84
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, ($this->getAttribute($context["item"], "cantidad", array()) * $this->getAttribute($context["item"], "precio", array())), 2, ".", ","), "html", null, true);
            echo "</td>
    </tr>
    ";
            // line 86
            $context["no"] = (($context["no"] ?? null) + 1);
            // line 87
            echo "    ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 88
        echo "</table>

<table>
    <tr class=\"header\">
        <td style=\"width: 80%\"></td>
        <td style=\"width: 10%\" class=\"numero\">SUBTOTAL</td>
        <td style=\"width: 10%\" class=\"numero\">\$ ";
        // line 94
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "subtotal", array()), 2, ".", ","), "html", null, true);
        echo "</td>
    </tr>
    <tr class=\"header\">
        <td class=\"separador\"></td>
        <td class=\"separador numero\" style=\"width: 10%\">IVA</td>
        <td class=\"separador numero\" style=\"width: 10%\">\$ ";
        // line 99
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "iva", array()), 2, ".", ","), "html", null, true);
        echo "</td>
    </tr>
    <tr class=\"header\">
        <td class=\"separador\"></td>
        <td class=\"separador numero\" style=\"width: 10%\">TOTAL</td>
        <td class=\"separador numero\" style=\"width: 10%\">\$ ";
        // line 104
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "total", array()), 2, ".", ","), "html", null, true);
        echo "</td>
    </tr>
</table>
<br>
<p>
    ESPERAMOS VERNOS FAVORECIDOS EN ESPERA DE SU PRONTA RESPUESTA A LA PRESENTE, APROVECHO LA OPORTUNIDAD PARA REITERARLE SU CONSIDERACIÓN Y RESPETO.
</p>
<p>
    TIEMPO DE ENTREGA: ";
        // line 112
        echo twig_escape_filter($this->env, twig_upper_filter($this->env,         $this->renderBlock("__internal_1b1ec45db2871df21d28fbdc27e5d6e974d70d5c52a0da27d98d94808326006a", $context, $blocks)), "html", null, true);
        echo "<br>
    FORMA DE PAGO: ";
        // line 113
        echo twig_escape_filter($this->env, twig_upper_filter($this->env,         $this->renderBlock("__internal_5146662eba5e7d41503a2510c516592df34559651a01a75526d40b2b32f163ff", $context, $blocks)), "html", null, true);
        echo "<br><br>
    COTIZACIÓN VIGENTE HASTA: ";
        // line 114
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "fechavalida", array()), "d/m/Y"), "html", null, true);
        echo "
</p>
<br>
<p class=\"firma\">
ATENTAMENTE<br>
";
        // line 119
        if ($this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "usuario", array()), "firma", array())) {
            // line 120
            echo "    <img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("imagen_show", array("id" => $this->getAttribute($this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "usuario", array()), "firma", array()), "id", array()))), "html", null, true);
            echo "\" style=\"width: auto; height: 5em;\"/>
";
        } else {
            // line 122
            echo "    <br><br><br>
";
        }
        // line 124
        echo "<br>
___________________________________________<br>
";
        // line 126
        echo twig_escape_filter($this->env, twig_upper_filter($this->env,         $this->renderBlock("__internal_4cb83abbd99a1206b90fffb6355510a49bb2dd47b8adb000548e50e703ea6ffe", $context, $blocks)), "html", null, true);
        // line 129
        echo "<br>
GERENTE ADMINISTRATIVO
</p>
</div>


<style>
    body
    {
        margin: 0px;
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
        font-size: 13px;
    }
    p.firma
    {
        text-align: center;
        font-weight: bold;
    }
    td
    {
        font-size: 11px;
    }
    .numero
    {
        text-align: right;
    }
</style>
</body>";
    }

    // line 49
    public function block___internal_2e8cf070020f67cf7c1ae64d9a667d5970a24befa534d92c47ca623978b11e2b($context, array $blocks = array())
    {
        // line 50
        echo "            ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "contacto", array()), "nombre", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "contacto", array()), "apellidos", array()), "html", null, true);
        echo "
        ";
    }

    // line 56
    public function block___internal_70100accecd50bbee816101e45f3fc2274fcd5e7c3080f5c146a7fbd8333aafa($context, array $blocks = array())
    {
        // line 57
        echo "            ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "cliente", array()), "razonsocial", array()), "html", null, true);
        echo "
        ";
    }

    // line 80
    public function block___internal_1d4a5841bb7d77b5738b49993d26d5d6c83dfa0ae36b8e8bedeb3301114ce1c4($context, array $blocks = array())
    {
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["item"] ?? null), "producto", array()), "nombre", array()), "html", null, true);
        echo " ";
    }

    // line 112
    public function block___internal_1b1ec45db2871df21d28fbdc27e5d6e974d70d5c52a0da27d98d94808326006a($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, $this->getAttribute(($context["cotizacion"] ?? null), "tiempoentrega", array()), "html", null, true);
    }

    // line 113
    public function block___internal_5146662eba5e7d41503a2510c516592df34559651a01a75526d40b2b32f163ff($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "esquemapago", array()), "nombre", array()), "html", null, true);
    }

    // line 126
    public function block___internal_4cb83abbd99a1206b90fffb6355510a49bb2dd47b8adb000548e50e703ea6ffe($context, array $blocks = array())
    {
        // line 127
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["cotizacion"] ?? null), "usuario", array()), "nombrecompleto", array()), "html", null, true);
        echo "
";
    }

    public function getTemplateName()
    {
        return "cotizacion/showprint.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  443 => 127,  440 => 126,  434 => 113,  428 => 112,  420 => 80,  413 => 57,  410 => 56,  401 => 50,  398 => 49,  347 => 129,  345 => 126,  341 => 124,  337 => 122,  331 => 120,  329 => 119,  321 => 114,  317 => 113,  313 => 112,  302 => 104,  294 => 99,  286 => 94,  278 => 88,  264 => 87,  262 => 86,  257 => 84,  253 => 83,  249 => 82,  245 => 81,  237 => 80,  233 => 79,  230 => 78,  212 => 77,  210 => 76,  192 => 60,  189 => 59,  186 => 56,  184 => 55,  180 => 53,  177 => 52,  174 => 49,  172 => 48,  145 => 29,  138 => 28,  131 => 27,  124 => 26,  117 => 25,  110 => 24,  103 => 23,  96 => 22,  89 => 21,  82 => 20,  75 => 19,  68 => 18,  61 => 17,  59 => 16,  46 => 5,  32 => 3,  28 => 2,  25 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "cotizacion/showprint.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/showprint.html.twig");
    }
}
