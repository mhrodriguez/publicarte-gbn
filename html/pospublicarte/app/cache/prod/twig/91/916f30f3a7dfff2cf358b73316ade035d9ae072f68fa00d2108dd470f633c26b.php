<?php

/* :usuario:edit.html.twig */
class __TwigTemplate_89be95493ec87c343ce8ad51a357e25460e5fa5af4e6435d82d596d77f1de81f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":usuario:edit.html.twig", 1);
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

            <span class=\"mdl-layout-title\">Editar - ";
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
                <div id=\"divSucursales\" class=\"mdl-cell mdl-cell--6-col\">
                    <label id=\"lblSucursales\" class=\"mdl-label\">
                        ";
        // line 38
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "sucursales", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div>
                        ";
        // line 41
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "sucursales", array()), 'widget');
        echo "
                    </div>
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label id=\"lblRoles\" class=\"mdl-label\">
                        ";
        // line 46
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "roles2", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div>
                        ";
        // line 49
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "roles2", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div id=\"divActivo\" class=\"mdl-cell mdl-cell--6-col\">
                    Activo ";
        // line 56
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "isActive", array()), 'widget');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                ";
        // line 64
        if ($this->getAttribute(($context["usuario"] ?? null), "firma", array())) {
            // line 65
            echo "                <img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("imagen_show", array("id" => $this->getAttribute($this->getAttribute(($context["usuario"] ?? null), "firma", array()), "id", array()))), "html", null, true);
            echo "\" style=\"width: 100%; height: auto;\"/>
                ";
        }
        // line 67
        echo "                </div>
                <div class=\"mdl-cell mdl-cell--10-col\">
                    <label id=\"lblFirma\" class=\"mdl-label\">
                        ";
        // line 70
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["edit_form"] ?? null), "firmaimagen", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div>
                        ";
        // line 73
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "firmaimagen", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--2-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Guardar</button>
                </div>

                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 84
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_index", array());
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>

            </div>
            ";
        // line 88
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["edit_form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 91
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "nombre", array()), 'errors');
        echo "
                ";
        // line 92
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "apellidos", array()), 'errors');
        echo "
                ";
        // line 93
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "email", array()), 'errors');
        echo "
                ";
        // line 94
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "sucursales", array()), 'errors');
        echo "
                ";
        // line 95
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["edit_form"] ?? null), "roles2", array()), 'errors');
        echo "
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--12-col\">
                    <a href=\"";
        // line 100
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("usuario_changepassword", array("idUsuario" => $this->getAttribute(($context["usuario"] ?? null), "id", array()))), "html", null, true);
        echo "\">Cambiar Password</a>
                </div>
            </div>

        </div>
    </div>

    <script>
        \$('form input').addClass('mdl-textfield__input')
        \$('form label').addClass('mdl-textfield__label')

        document.getElementById('usuario_email').required=false;
        document.getElementById('usuario_isActive').required=false;

        \$('#usuario_sucursales input').removeClass('mdl-textfield__input');
        \$('#usuario_sucursales label').removeClass('mdl-textfield__label');

        \$('#usuario_roles2 input').removeClass('mdl-textfield__input');
        \$('#usuario_roles2 label').removeClass('mdl-textfield__label');

        \$('#lblSucursales').removeClass('mdl-textfield__label');
        \$('#lblRoles').removeClass('mdl-textfield__label');
        \$('#lblFirma').removeClass('mdl-textfield__label');
    </script>

    <style>

    </style>

";
    }

    public function getTemplateName()
    {
        return ":usuario:edit.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  202 => 100,  194 => 95,  190 => 94,  186 => 93,  182 => 92,  178 => 91,  172 => 88,  165 => 84,  151 => 73,  145 => 70,  140 => 67,  134 => 65,  132 => 64,  121 => 56,  111 => 49,  105 => 46,  97 => 41,  91 => 38,  80 => 30,  76 => 29,  65 => 21,  61 => 20,  53 => 15,  49 => 14,  42 => 10,  37 => 8,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":usuario:edit.html.twig", "/var/www/html/pospublicarte/app/Resources/views/usuario/edit.html.twig");
    }
}
