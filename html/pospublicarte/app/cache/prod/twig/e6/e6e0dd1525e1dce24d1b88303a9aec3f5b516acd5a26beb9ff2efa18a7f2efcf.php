<?php

/* :pago:showprint.html.twig */
class __TwigTemplate_e6ff9b88e872f424530c9f96cbf9468aafac2068f87e6802206aca780c01fb3a extends Twig_Template
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
            <h2>Comprobante de Pago</h2>
        </td>
        <td style=\"width:30%;\">
            <table>
                <tr class=\"header\">
                    <td>Folio de Orden:</td>
                    <td>Folio de Cotización:</td>
                </tr>
                <tr>
                    <td colspan>";
        // line 19
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "id", array()), "html", null, true);
        echo "</td>
                    <td colspan>";
        // line 20
        if ($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "cotizacion", array())) {
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "cotizacion", array()), "id", array()), "html", null, true);
        }
        echo "</td>
                </tr>
                <tr class=\"header\">
                    <td colspan=\"2\">Agente:</td>
                </tr>
                <tr>
                    <td colspan=\"2\">";
        // line 26
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "usuario", array()), "nombre", array()), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "usuario", array()), "apellidos", array()), "html", null, true);
        echo "</td>
                </tr>
                <tr class=\"header\">
                    <td colspan=\"2\">&nbsp;</td>
                </tr>
                <tr>
                    <td>Fecha de pago:</td>
                    <td></td>
                </tr>
                <tr class=\"header\">
                    <td>";
        // line 36
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "fechapago", array()), "d/m/Y"), "html", null, true);
        echo "</td>
                    <td></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
<table>
    <tr class=\"header\">
        ";
        // line 46
        if ($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "cliente", array())) {
            // line 47
            echo "            <td style=\"width:50%;\"><b>Cliente:</b> ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "cliente", array()), "razonsocial", array()), "html", null, true);
            echo "</td>
        ";
        }
        // line 49
        echo "    </tr>
    <tr>
        ";
        // line 51
        if ($this->getAttribute(($context["pago"] ?? null), "mediopago", array())) {
            // line 52
            echo "            <td><b>Forma de pago:</b> ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "mediopago", array()), "nombre", array()), "html", null, true);
            echo "</td>
        ";
        }
        // line 54
        echo "    </tr>
</table>
<br>
<table>
    <tr class=\"header\">
        <td class=\"separador\" style=\"width:10%\">Id de Pago</td>
        <td class=\"separador\" style=\"width:60%\">Concepto</td>
        <td class=\"separador numero\" style=\"width:30%\">Monto</td>
    </tr>
    <tr>
        <td>";
        // line 64
        echo twig_escape_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "id", array()), "html", null, true);
        echo "</td>
        <td>";
        // line 65
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "tipo", array()), "nombre", array()), "html", null, true);
        echo "</td>
        <td class=\"numero\">MXN ";
        // line 66
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["pago"] ?? null), "monto", array()), 2, ".", ","), "html", null, true);
        echo "</td>
    </tr>
</table>
<br>
<table>
    <tr class=\"header\">
        <td style=\"width: 80%\"></td>
        <td style=\"width: 10%\" class=\"numero\">Saldo pendiente</td>
        <td style=\"width: 10%\" class=\"numero\">\$ ";
        // line 74
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute($this->getAttribute(($context["pago"] ?? null), "orden", array()), "saldoPendiente", array()), 2, ".", ","), "html", null, true);
        echo "</td>
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
        return ":pago:showprint.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  150 => 74,  139 => 66,  135 => 65,  131 => 64,  119 => 54,  113 => 52,  111 => 51,  107 => 49,  101 => 47,  99 => 46,  86 => 36,  71 => 26,  60 => 20,  56 => 19,  43 => 8,  29 => 6,  25 => 5,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":pago:showprint.html.twig", "/var/www/html/pospublicarte/app/Resources/views/pago/showprint.html.twig");
    }
}
