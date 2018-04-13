<?php

/* panel_producto/index.html.twig */
class __TwigTemplate_bd3c681e1cee623e2e16100df6e5a052c818348aa3974d1fd83a382400184ade extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", "panel_producto/index.html.twig", 1);
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
        $this->loadTemplate("panel_producto/index.html.twig", "panel_producto/index.html.twig", 4, "1077446249")->display($context);
    }

    // line 43
    public function block_body($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "panel_producto/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  37 => 43,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "panel_producto/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/panel_producto/index.html.twig");
    }
}


/* panel_producto/index.html.twig */
class __TwigTemplate_bd3c681e1cee623e2e16100df6e5a052c818348aa3974d1fd83a382400184ade_1077446249 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 4
        $this->parent = $this->loadTemplate("header.html.twig", "panel_producto/index.html.twig", 4);
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
                        <span class=\"mdl-layout-title\">
                            Servicios
                        </span>
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
        // line 30
        $this->loadTemplate("menu/menu.html.twig", "panel_producto/index.html.twig", 30)->display($context);
        // line 31
        echo "                </div>
                <main class=\"mdl-layout__content\">
                    <div class=\"page-content\">
                        <iframe id=\"frmPrincipal\" src=\"";
        // line 34
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_index");
        echo "\"></iframe>
                    </div>
                </main>
            </div>

        ";
    }

    public function getTemplateName()
    {
        return "panel_producto/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  132 => 34,  127 => 31,  125 => 30,  99 => 6,  96 => 5,  79 => 4,  37 => 43,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "panel_producto/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/panel_producto/index.html.twig");
    }
}
