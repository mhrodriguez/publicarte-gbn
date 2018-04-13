<?php

/* baseabc.html.twig */
class __TwigTemplate_8cffb9f25336f8e56d2202ffa36f2d1c5ec21d7e10334327e86a9d705dc5bc0a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'stylesheets' => array($this, 'block_stylesheets'),
            'scriptsheader' => array($this, 'block_scriptsheader'),
            'body' => array($this, 'block_body'),
            'javascripts' => array($this, 'block_javascripts'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"UTF-8\" />
        <title>";
        // line 5
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
        ";
        // line 6
        $this->displayBlock('stylesheets', $context, $blocks);
        // line 7
        echo "        <link rel=\"icon\" type=\"image/x-icon\" href=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("favicon.ico"), "html", null, true);
        echo "\" />

        ";
        // line 9
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b79f1d2_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b79f1d2_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b79f1d2_material.min_1.css");
            // line 10
            echo "        <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
        ";
        } else {
            // asset "b79f1d2"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b79f1d2") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b79f1d2.css");
            echo "        <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
        ";
        }
        unset($context["asset_url"]);
        // line 12
        echo "        ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "48b2839_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_48b2839_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/48b2839_dialog-polyfill_1.css");
            // line 13
            echo "        <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
        ";
        } else {
            // asset "48b2839"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_48b2839") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/48b2839.css");
            echo "        <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
        ";
        }
        unset($context["asset_url"]);
        // line 15
        echo "
        ";
        // line 16
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "3c9515f_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_3c9515f_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/3c9515f_material.min_1.js");
            // line 17
            echo "        <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
        ";
        } else {
            // asset "3c9515f"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_3c9515f") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/3c9515f.js");
            echo "        <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
        ";
        }
        unset($context["asset_url"]);
        // line 19
        echo "        ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "86a90ab_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_86a90ab_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/86a90ab_dialog-polyfill_1.js");
            // line 20
            echo "        <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
        ";
        } else {
            // asset "86a90ab"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_86a90ab") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/86a90ab.js");
            echo "        <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
        ";
        }
        unset($context["asset_url"]);
        // line 22
        echo "        ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "ae26386_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_ae26386_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/ae26386_jquery-3.2.1_1.js");
            // line 23
            echo "        <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
        ";
        } else {
            // asset "ae26386"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_ae26386") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/ae26386.js");
            echo "        <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
        ";
        }
        unset($context["asset_url"]);
        // line 25
        echo "
        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">

        <link rel=\"stylesheet\" href=\"http://fonts.googleapis.com/css?family=Roboto:300,400,500,700\" type=\"text/css\">

        ";
        // line 30
        $this->displayBlock('scriptsheader', $context, $blocks);
        // line 31
        echo "
    </head>
    <body onload=\"mostrarProgreso(false); notificar();\">
        <div id=\"pgrPrincipal\" class=\"mdl-progress mdl-js-progress mdl-progress__indeterminate\"></div>
        <div id=\"toaster\" class=\"mdl-js-snackbar mdl-snackbar\">
            <div class=\"mdl-snackbar__text\"></div>
            <button class=\"mdl-snackbar__action\" type=\"button\"></button>
        </div>
        ";
        // line 39
        $this->displayBlock('body', $context, $blocks);
        // line 40
        echo "        ";
        $this->displayBlock('javascripts', $context, $blocks);
        // line 41
        echo "    </body>
    <style>
        .mdl-progress
        {
            width: 100%;
        }
    </style>
    <script>
        function mostrarProgreso(mostrar) {
            if (!mostrar)
            {
                document.getElementById('pgrPrincipal').style.display='none';
            }
            else
            {
                document.getElementById('pgrPrincipal').style.display='';
            }
        }

        function notificar() {
            var notification = document.querySelector('.mdl-js-snackbar');
            if (notification != null) {
                if (notification.MaterialSnackbar != null) {
                    ";
        // line 64
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "session", array()), "flashbag", array()), "get", array(0 => "aviso"), "method"));
        foreach ($context['_seq'] as $context["_key"] => $context["flash"]) {
            // line 65
            echo "                    notification.MaterialSnackbar.showSnackbar(
                            {
                                message: '";
            // line 67
            echo twig_escape_filter($this->env, $context["flash"], "html", null, true);
            echo "'
                            }
                    );
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['flash'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 71
        echo "                }
                else {
                    alert('error2');
                }
            }
            else {
                alert('error');
            }

            ";
        // line 80
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "session", array()), "flashbag", array()), "get", array(0 => "error"), "method"));
        foreach ($context['_seq'] as $context["_key"] => $context["flash"]) {
            // line 81
            echo "            alert('";
            echo twig_escape_filter($this->env, $context["flash"], "html", null, true);
            echo "');
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['flash'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 83
        echo "
            ";
        // line 84
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "session", array()), "flashbag", array()), "get", array(0 => "alerta"), "method"));
        foreach ($context['_seq'] as $context["_key"] => $context["flash"]) {
            // line 85
            echo "            alert('";
            echo twig_escape_filter($this->env, $context["flash"], "html", null, true);
            echo "');
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['flash'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 87
        echo "
            ";
        // line 88
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "session", array()), "flashbag", array()), "get", array(0 => "accion"), "method"));
        foreach ($context['_seq'] as $context["_key"] => $context["flash"]) {
            // line 89
            echo "            ";
            echo $context["flash"];
            echo "
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['flash'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 91
        echo "        }

    </script>
    <style>
        select {
            width: 100%;
        }

        .select-style {
            margin-top: 0.8em;
            border: 1px solid #ccc;
            width: 100%;
            border-radius: 3px;
            overflow: hidden;
            background: #fafafa url(\"";
        // line 105
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "95b0de9_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_95b0de9_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/95b0de9_img_flechaselect_1.png");
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
        } else {
            // asset "95b0de9"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_95b0de9") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/95b0de9.png");
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
        }
        unset($context["asset_url"]);
        echo "\") no-repeat right top;
        }
        .select-style select {
            padding: 5px 8px;
            width: 100%;
            border: none;
            box-shadow: none;
            background: transparent;
            background-image: none;
            -webkit-appearance: none;
        }
        .select-style select:focus {
            outline: none;
        }

        .mdl-label
        {
            color: #aaaaaa;
            font-size: 1.15em;
        }

        .lbl-titulo
        {
            font-weight: bold;
        }

        h3, h4, h5
        {
            color: dimgray;
            line-height: 0.1em;
        }
        button.mdl-button
        {
            color: white !important;
        }
    </style>
</html>
";
    }

    // line 5
    public function block_title($context, array $blocks = array())
    {
        echo "Publicarte";
    }

    // line 6
    public function block_stylesheets($context, array $blocks = array())
    {
    }

    // line 30
    public function block_scriptsheader($context, array $blocks = array())
    {
    }

    // line 39
    public function block_body($context, array $blocks = array())
    {
    }

    // line 40
    public function block_javascripts($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "baseabc.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  349 => 40,  344 => 39,  339 => 30,  334 => 6,  328 => 5,  277 => 105,  261 => 91,  252 => 89,  248 => 88,  245 => 87,  236 => 85,  232 => 84,  229 => 83,  220 => 81,  216 => 80,  205 => 71,  195 => 67,  191 => 65,  187 => 64,  162 => 41,  159 => 40,  157 => 39,  147 => 31,  145 => 30,  138 => 25,  124 => 23,  119 => 22,  105 => 20,  100 => 19,  86 => 17,  82 => 16,  79 => 15,  65 => 13,  60 => 12,  46 => 10,  42 => 9,  36 => 7,  34 => 6,  30 => 5,  24 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "baseabc.html.twig", "/var/www/html/pospublicarte/app/Resources/views/baseabc.html.twig");
    }
}
