<?php

/* base.html.twig */
class __TwigTemplate_447fc41449ec6f89034b8e9a8451695c2e0f0ff84f10898dc67f9ac622a73c71 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'stylesheets' => array($this, 'block_stylesheets'),
            'header' => array($this, 'block_header'),
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
        </script>

    </head>
    <body onload=\"mostrarProgreso(false);\">
        <div id=\"pgrPrincipal\" class=\"mdl-progress mdl-js-progress mdl-progress--indeterminate\"></div>
        ";
        // line 46
        $this->displayBlock('header', $context, $blocks);
        // line 47
        echo "        ";
        $this->displayBlock('body', $context, $blocks);
        // line 48
        echo "        ";
        $this->displayBlock('javascripts', $context, $blocks);
        // line 49
        echo "    </body>
    <style>
        #frmPrincipal
        {
            height: 82vh;
        }

        .mdl-progress
        {
            width: 100%;
        }

        .mdl-navigation__link.qbcustom
        {
            color: white !important;
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

    // line 46
    public function block_header($context, array $blocks = array())
    {
    }

    // line 47
    public function block_body($context, array $blocks = array())
    {
    }

    // line 48
    public function block_javascripts($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "base.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  217 => 48,  212 => 47,  207 => 46,  202 => 6,  196 => 5,  169 => 49,  166 => 48,  163 => 47,  161 => 46,  138 => 25,  124 => 23,  119 => 22,  105 => 20,  100 => 19,  86 => 17,  82 => 16,  79 => 15,  65 => 13,  60 => 12,  46 => 10,  42 => 9,  36 => 7,  34 => 6,  30 => 5,  24 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "base.html.twig", "/var/www/html/pospublicarte/app/Resources/views/base.html.twig");
    }
}
