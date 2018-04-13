<?php

/* panel_usuario/index.html.twig */
class __TwigTemplate_e420681c3f2e9bfe51513c47d660be5991604f7977ec612261fa4c9e1b9f60bf extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", "panel_usuario/index.html.twig", 1);
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
        $this->loadTemplate("panel_usuario/index.html.twig", "panel_usuario/index.html.twig", 4, "1428818843")->display($context);
    }

    // line 42
    public function block_body($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "panel_usuario/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  37 => 42,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "panel_usuario/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/panel_usuario/index.html.twig");
    }
}


/* panel_usuario/index.html.twig */
class __TwigTemplate_e420681c3f2e9bfe51513c47d660be5991604f7977ec612261fa4c9e1b9f60bf_1428818843 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 4
        $this->parent = $this->loadTemplate("header.html.twig", "panel_usuario/index.html.twig", 4);
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
            <!-- The drawer is always open in large screens. The header is always shown,
even in small screens. -->
            <div class=\"mdl-layout mdl-js-layout mdl-layout--fixed-drawer
            mdl-layout--fixed-header\">
                <header class=\"mdl-layout__header\">
                    <div class=\"mdl-layout__header-row\">
                        <span class=\"mdl-layout-title\">Usuarios</span>
                        <div class=\"mdl-layout-spacer\"></div>

                        <button id=\"demo-menu-lower-right\"
                                class=\"mdl-button mdl-js-button mdl-button--icon\">
                            <i class=\"material-icons\">more_vert</i>
                        </button>

                        <ul class=\"mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect\"
                            for=\"demo-menu-lower-right\">

                        </ul>

                    </div>
                </header>
                <div class=\"mdl-layout__drawer\">
                    ";
        // line 29
        $this->loadTemplate("menu/menu.html.twig", "panel_usuario/index.html.twig", 29)->display($context);
        // line 30
        echo "                </div>
                <main class=\"mdl-layout__content\">
                    <div class=\"page-content\">
                        <iframe id=\"frmPrincipal\" src=\"";
        // line 33
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_index");
        echo "\"></iframe>
                    </div>
                </main>
            </div>

        ";
    }

    public function getTemplateName()
    {
        return "panel_usuario/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  131 => 33,  126 => 30,  124 => 29,  99 => 6,  96 => 5,  79 => 4,  37 => 42,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "panel_usuario/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/panel_usuario/index.html.twig");
    }
}
