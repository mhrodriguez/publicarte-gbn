<?php

/* ::header.html.twig */
class __TwigTemplate_dabb8d1d69d03a5e69544ebfda509fc3e2101fe244753107cf7d78bbc148eef5 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'body' => array($this, 'block_body'),
            'contenido' => array($this, 'block_contenido'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!-- Always shows a header, even in smaller screens. -->
<div class=\"mdl-layout mdl-js-layout mdl-layout--fixed-header\">
    <header class=\"mdl-layout__header\">
        <div class=\"mdl-layout__header-row\">
            <!-- Title -->
            ";
        // line 6
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "0e69364_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_0e69364_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/0e69364_img_logo_1.png");
            // line 7
            echo "            <img src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" class=\"header-logo\" style=\"width:10em; height:3.5em;\"/>
            ";
        } else {
            // asset "0e69364"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_0e69364") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/0e69364.png");
            echo "            <img src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" class=\"header-logo\" style=\"width:10em; height:3.5em;\"/>
            ";
        }
        unset($context["asset_url"]);
        // line 9
        echo "
            <!-- Add spacer, to align navigation to the right -->
            <div class=\"mdl-layout-spacer\"></div>
            <!-- Navigation. We hide it in small screens. -->
            <nav class=\"mdl-navigation mdl-layout--large-screen-only\">
                ";
        // line 14
        if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("IS_AUTHENTICATED_FULLY")) {
            // line 15
            echo "
                    ";
            // line 16
            if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
                // line 17
                echo "                    <a href=\"";
                echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("panelpago_index");
                echo "\">
                        <span id=\"divCount\" class=\"mdl-badge\" data-badge=\"\"><i class=\"material-icons mdl-navigation__item-icon\">attach_money</i></span>
                    </a>
                    <script>
                        refreshCount();

                        function refreshCount()
                        {
                            var url = \"";
                // line 25
                echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("pago_notificacion", array());
                echo ".json\";

                            \$.get(url,
                                    function(data)
                                    {
                                        if (data.resultado == true)
                                        {
                                            \$('#divCount').attr(\"data-badge\", data.count);
                                        }
                                    }
                            ).fail(function()
                            {

                            });

                            setTimeout(refreshCount, 10000);
                        }
                    </script>
                    ";
            }
            // line 44
            echo "                    <div class=\"mdl-layout-spacer\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                    <span class=\"mdl-layout-title\">";
            // line 46
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "user", array()), "empresa", array()), "nombre", array()), "html", null, true);
            echo "</span>
                    <button id=\"btnUsuarioMenu\"
                            class=\"mdl-button mdl-js-button mdl-button--icon\">
                        <i class=\"material-icons\">more_vert</i>
                    </button>
                    <ul class=\"mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect\"
                        for=\"btnUsuarioMenu\">
                        <li disabled class=\"mdl-menu__item\">";
            // line 53
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["app"] ?? null), "user", array()), "nombre", array()), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["app"] ?? null), "user", array()), "apellidos", array()), "html", null, true);
            echo "</li>
                        <li class=\"mdl-menu__item mdl-menu__item--full-bleed-divider\" onclick=\"document.getElementById('frmPrincipal').src='";
            // line 54
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_miperfil");
            echo "'\">Perfil</li>
                        <li class=\"mdl-menu__item\" onclick=\"window.location.href='";
            // line 55
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("logout", array());
            echo "'\">Salir</li>
                    </ul>

                    ";
            // line 58
            if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
                // asset "96b3763_0"
                $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_96b3763_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/96b3763_img_usuario_1.jpg");
                // line 59
                echo "                    <img id=\"imgUsuario\" class=\"image-usuario\" src=\"";
                echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
                echo "\" alt=\"\" class=\"circle responsive-img\"/>
                    ";
            } else {
                // asset "96b3763"
                $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_96b3763") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("images/96b3763.jpg");
                echo "                    <img id=\"imgUsuario\" class=\"image-usuario\" src=\"";
                echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
                echo "\" alt=\"\" class=\"circle responsive-img\"/>
                    ";
            }
            unset($context["asset_url"]);
            // line 61
            echo "
                ";
        } else {
            // line 63
            echo "                <a class=\"mdl-navigation__link qbcustom\" href=\"";
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("login", array());
            echo "\">ACCEDER</a>
                ";
        }
        // line 65
        echo "            </nav>
        </div>
    </header>
    <div class=\"mdl-layout__drawer\">

        ";
        // line 70
        if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("IS_AUTHENTICATED_FULLY")) {
            // line 71
            echo "            <span class=\"mdl-layout-title\">";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["app"] ?? null), "user", array()), "empresa", array()), "nombre", array()), "html", null, true);
            echo "</span>
        ";
        } else {
            // line 73
            echo "            <span class=\"mdl-layout-title\">Publicarte</span>
        ";
        }
        // line 75
        echo "
        <nav class=\"mdl-navigation\">
            ";
        // line 77
        if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("IS_AUTHENTICATED_FULLY")) {
            // line 78
            echo "                <a class=\"mdl-navigation__link\" href=\"";
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_miperfil");
            echo "\">PERFIL</a>
                <a class=\"mdl-navigation__link\" href=\"";
            // line 79
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("logout", array());
            echo "\">SALIR</a>
            ";
        } else {
            // line 81
            echo "                <a class=\"mdl-navigation__link\" href=\"";
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("login", array());
            echo "\">ACCEDER</a>
            ";
        }
        // line 83
        echo "        </nav>
    </div>
    <main class=\"mdl-layout__content\">
        ";
        // line 86
        $this->displayBlock('body', $context, $blocks);
        // line 89
        echo "    </main>
    <style>
        .image-usuario {
            width: 40px;
            height: 40px;
            position: relative;
            overflow: hidden;
            border-radius: 50%;
        }
    </style>
</div>";
    }

    // line 86
    public function block_body($context, array $blocks = array())
    {
        // line 87
        echo "        <div class=\"page-content\">";
        $this->displayBlock('contenido', $context, $blocks);
        echo "</div>
        ";
    }

    public function block_contenido($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "::header.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  217 => 87,  214 => 86,  200 => 89,  198 => 86,  193 => 83,  187 => 81,  182 => 79,  177 => 78,  175 => 77,  171 => 75,  167 => 73,  161 => 71,  159 => 70,  152 => 65,  146 => 63,  142 => 61,  128 => 59,  124 => 58,  118 => 55,  114 => 54,  108 => 53,  98 => 46,  94 => 44,  72 => 25,  60 => 17,  58 => 16,  55 => 15,  53 => 14,  46 => 9,  32 => 7,  28 => 6,  21 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "::header.html.twig", "/var/www/html/pospublicarte/app/Resources/views/header.html.twig");
    }
}
