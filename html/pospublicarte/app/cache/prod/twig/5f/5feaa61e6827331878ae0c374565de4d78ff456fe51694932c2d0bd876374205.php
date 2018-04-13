<?php

/* :usuario:miperfil.html.twig */
class __TwigTemplate_205972eb01b0864fbe7bc3f329a31ca4622a332a2cd3dfc655693ac1167c74e2 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":usuario:miperfil.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "baseabc.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_body($context, array $blocks = array())
    {
        // line 4
        echo "
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            <span class=\"mdl-layout-title\">Mi Perfil - ";
        // line 8
        echo twig_escape_filter($this->env, $this->getAttribute(($context["usuario"] ?? null), "username", array()), "html", null, true);
        echo "</span>

            ";
        // line 10
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "mostrarProgreso(true); return true;")));
        echo "
            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 14
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "nombre", array()), 'widget');
        echo "
                        ";
        // line 15
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "nombre", array()), 'label');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 20
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "apellidos", array()), 'widget');
        echo "
                        ";
        // line 21
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "apellidos", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">
                        ";
        // line 29
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "email", array()), 'widget');
        echo "
                        ";
        // line 30
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "email", array()), 'label');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    ";
        // line 37
        if ($this->getAttribute(($context["usuario"] ?? null), "firma", array())) {
            // line 38
            echo "                    <img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("imagen_show", array("id" => $this->getAttribute($this->getAttribute(($context["usuario"] ?? null), "firma", array()), "id", array()))), "html", null, true);
            echo "\" style=\"width: 100%; height: auto;\"/>
                    ";
        }
        // line 40
        echo "                </div>
                <div class=\"mdl-cell mdl-cell--10-col\">
                    <label id=\"lblFirma\" class=\"mdl-label\">
                        ";
        // line 43
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "firmaimagen", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div>
                        ";
        // line 46
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "firmaimagen", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Guardar</button>
                </div>
            </div>
            ";
        // line 56
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_end');
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <a href=\"";
        // line 60
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_changemypassword");
        echo "\">Cambiar mi Password</a>
                </div>
            </div>

            <div>
                ";
        // line 65
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "nombre", array()), 'errors');
        echo "
                ";
        // line 66
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "apellidos", array()), 'errors');
        echo "
                ";
        // line 67
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "email", array()), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        \$('form input').addClass('mdl-textfield__input')
        \$('form label').addClass('mdl-textfield__label')

        document.getElementById('usuario_email').required=false;

        \$('#lblFirma').removeClass('mdl-textfield__label');
    </script>

    <style>

    </style>

";
    }

    public function getTemplateName()
    {
        return ":usuario:miperfil.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  145 => 67,  141 => 66,  137 => 65,  129 => 60,  122 => 56,  109 => 46,  103 => 43,  98 => 40,  92 => 38,  90 => 37,  80 => 30,  76 => 29,  65 => 21,  61 => 20,  53 => 15,  49 => 14,  42 => 10,  37 => 8,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":usuario:miperfil.html.twig", "/var/www/html/pospublicarte/app/Resources/views/usuario/miperfil.html.twig");
    }
}
