<?php

/* panel_orden/indexfact.html.twig */
class __TwigTemplate_87ac9fe6f4b6bb6fc41d2b0b6dde255db5860cdd59fafb3c6da352b88a884c42 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("base.html.twig", "panel_orden/indexfact.html.twig", 1);
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
        $this->loadTemplate("panel_orden/indexfact.html.twig", "panel_orden/indexfact.html.twig", 4, "797953309")->display($context);
    }

    // line 40
    public function block_body($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "panel_orden/indexfact.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  37 => 40,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "panel_orden/indexfact.html.twig", "/var/www/html/pospublicarte/app/Resources/views/panel_orden/indexfact.html.twig");
    }
}


/* panel_orden/indexfact.html.twig */
class __TwigTemplate_87ac9fe6f4b6bb6fc41d2b0b6dde255db5860cdd59fafb3c6da352b88a884c42_797953309 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 4
        $this->parent = $this->loadTemplate("header.html.twig", "panel_orden/indexfact.html.twig", 4);
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
                        <span class=\"mdl-layout-title\">Ordenes de Trabajo con Factura</span>
                        <div class=\"mdl-layout-spacer\"></div>
                        <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--expandable
                  mdl-textfield--floating-label mdl-textfield--align-right\">
                            <div class=\"mdl-textfield__expandable-holder\">
                                <input class=\"mdl-textfield__input\" type=\"text\" name=\"sample\"
                                       id=\"fixed-header-drawer-exp\">
                            </div>
                        </div>
                    </div>
                </header>
                <div class=\"mdl-layout__drawer\">

                    ";
        // line 26
        $this->loadTemplate("menu/menu.html.twig", "panel_orden/indexfact.html.twig", 26)->display($context);
        // line 27
        echo "
                </div>
                <main class=\"mdl-layout__content\">
                    <div class=\"page-content\">
                        <iframe id=\"frmPrincipal\" src=\"";
        // line 31
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("orden_indexfact");
        echo "\"></iframe>
                    </div>
                </main>
            </div>

        ";
    }

    public function getTemplateName()
    {
        return "panel_orden/indexfact.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  129 => 31,  123 => 27,  121 => 26,  99 => 6,  96 => 5,  79 => 4,  37 => 40,  32 => 4,  29 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "panel_orden/indexfact.html.twig", "/var/www/html/pospublicarte/app/Resources/views/panel_orden/indexfact.html.twig");
    }
}
