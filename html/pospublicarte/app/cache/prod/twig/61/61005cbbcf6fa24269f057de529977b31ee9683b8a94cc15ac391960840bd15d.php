<?php

/* :usuario:login.html.twig */
class __TwigTemplate_fe09abca6352a6421a64455770bbc69e3e0b42bedd8c706385ec030f6ce02eaa extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", ":usuario:login.html.twig", 1);
        $this->blocks = array(
            'header' => array($this, 'block_header'),
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_header($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        $this->loadTemplate(":usuario:login.html.twig", ":usuario:login.html.twig", 4, "1652788042")->display($context);
    }

    // line 49
    public function block_body($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return ":usuario:login.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  37 => 49,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":usuario:login.html.twig", "/var/www/html/pospublicarte/app/Resources/views/usuario/login.html.twig");
    }
}


/* :usuario:login.html.twig */
class __TwigTemplate_fe09abca6352a6421a64455770bbc69e3e0b42bedd8c706385ec030f6ce02eaa_1652788042 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 4
        $this->parent = $this->loadTemplate("header.html.twig", ":usuario:login.html.twig", 4);
        $this->blocks = array(
            'contenido' => array($this, 'block_contenido'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "header.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 5
    public function block_contenido($context, array $blocks = array())
    {
        // line 6
        echo "
            <br><br>
            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--4-col\"></div>
                <div class=\"mdl-cell mdl-cell--4-col mdl-shadow--2dp\">
                    <form action=\"";
        // line 11
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("login");
        echo "\" method=\"post\" onsubmit=\"mostrarProgreso(true); return true;\" >
                        <br><br>
                        <span class=\"mdl-layout-title\">Acceso</span>
                        <div class=\"mdl-textfield mdl-js-textfield\">
                                <input class=\"mdl-textfield__input\" type=\"text\" id=\"username\" name=\"_username\" required=\"required\"/>
                                <label class=\"mdl-textfield__label\" for=\"username\">Usuario</label>
                        </div>
                        <div class=\"mdl-textfield mdl-js-textfield\">
                            <input class=\"mdl-textfield__input\" type=\"password\" id=\"password\" name=\"_password\" required=\"required\"/>
                            <label class=\"mdl-textfield__label\" for=\"password\">Contraseña</label>
                        </div>
                        <br><br>
                        <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Entrar</button>

                        <input type=\"hidden\" name=\"_target_path\" value=\"panelcotizacion_index\" />

                        ";
        // line 27
        if (($context["error"] ?? null)) {
            // line 28
            echo "                            <br><br>
                            <div>";
            // line 29
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\TranslationExtension')->trans($this->getAttribute(($context["error"] ?? null), "messageKey", array()), $this->getAttribute(($context["error"] ?? null), "messageData", array()), "security"), "html", null, true);
            echo "</div>
                        ";
        }
        // line 31
        echo "                    </form>

                </div>
                <div class=\"mdl-cell mdl-cell--4-col\"></div>
            </div>

            <style>
                form {
                padding-left: 3em;
                padding-right: 3em;
                padding-bottom: 3em;
                }
            </style>

        ";
    }

    public function getTemplateName()
    {
        return ":usuario:login.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  135 => 31,  130 => 29,  127 => 28,  125 => 27,  106 => 11,  99 => 6,  96 => 5,  79 => 4,  37 => 49,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":usuario:login.html.twig", "/var/www/html/pospublicarte/app/Resources/views/usuario/login.html.twig");
    }
}
