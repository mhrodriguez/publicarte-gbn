<?php

/* :combinacionitem:new.html.twig */
class __TwigTemplate_c9c7ba2bb3ec0ebbd610642cb424e19d9e71baa71fa8646a930457fb92e8f699 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":combinacionitem:new.html.twig", 1);
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
            <span class=\"mdl-layout-title\">Nuevo Elemento</span>

            ";
        // line 9
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_start', array("attr" => array("onsubmit" => "datasubmit(); mostrarProgreso(true); return true;")));
        echo "

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label id=\"lblCategoriaNombre\" class=\"mdl-label\">
                        ";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "categoria", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 17
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "categoria", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 19
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "categoria", array()), 'errors');
        echo "
                </div>
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <label id=\"lblSubcategoriaNombre\" class=\"mdl-label\">
                        ";
        // line 23
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["form"] ?? null), "subcategoria", array()), "vars", array()), "label", array()), "html", null, true);
        echo "
                    </label>
                    <div class=\"select-style\">
                        ";
        // line 26
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "subcategoria", array()), 'widget');
        echo "
                    </div>
                    ";
        // line 28
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "subcategoria", array()), 'errors');
        echo "
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell--12-col\">
                        ";
        // line 35
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cantidad", array()), 'widget', array("attr" => array("pattern" => "?[0-9]*")));
        echo "
                        ";
        // line 36
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cantidad", array()), 'label');
        echo "
                        <span class=\"mdl-textfield__error\">Precio debe ser numérico entero</span>
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--6-col\">
                    <div class=\"mdl-textfield mdl-js-textfield\">
                        Incluido en el precio ";
        // line 45
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "incluido", array()), 'widget');
        echo "
                    </div>
                </div>
            </div>

            <div class=\"mdl-grid\">
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\">Crear</button>
                </div>
                <div class=\"mdl-cell mdl-cell--1-col\">
                    <a href=\"";
        // line 55
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("combinacionitem_index", array("idCombinacion" => ($context["idCombinacion"] ?? null))), "html", null, true);
        echo "\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin-left:1em\">Cancelar</a>
                </div>
            </div>

            ";
        // line 59
        echo         $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["form"] ?? null), 'form_end');
        echo "

            <div>
                ";
        // line 62
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "categoria", array()), 'errors');
        echo "
                ";
        // line 63
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "subcategoria", array()), 'errors');
        echo "
                ";
        // line 64
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->searchAndRenderBlock($this->getAttribute(($context["form"] ?? null), "cantidad", array()), 'errors');
        echo "
            </div>

        </div>
    </div>

    <script>
        var selectSubcategoria = \$(\"#appbundle_combinacionitem_subcategoria\");

        \$('form input').addClass('mdl-textfield__input')
        \$('form textarea').addClass('mdl-textfield__input')

        \$('.mdl-textfield label').addClass('mdl-textfield__label')

        \$('#appbundle_combinacionitem_cantidad').val(\"1\");
        \$('#appbundle_combinacionitem_incluido').prop(\"checked\", \"1\");

        if( \$('#appbundle_combinacionitem_subcategoria').has('option').length > 0 ) {
            var option = \$(\"<option></option>\");
            option.attr(\"value\", -1).text(\"Ninguna\");
            option.insertBefore(\"#appbundle_combinacionitem_subcategoria option:first\");
        }
        else
        {
           selectSubcategoria.append(\$(\"<option></option>\").attr(\"value\", -1).text(\"Ninguna\"));
        }

        \$( \"#appbundle_combinacionitem_categoria\" ).change(function() {

            var indexCategoria = \$( \"#appbundle_combinacionitem_categoria\").val();

            selectSubcategoria.empty(); // remove old options
            selectSubcategoria.append(\$(\"<option></option>\").attr(\"value\", -1).text(\"Ninguna\"));

            if (indexCategoria >= 0) {
                mostrarProgreso(true);

                var url = 'http://' + window.location.hostname + '";
        // line 101
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("subcategoria_index", array());
        echo ".json?idCategoria=' + indexCategoria;

                \$.ajax({
                    url: url, dataType: \"json\",
                    success: function (data) {

                        var selectSubcategoria = \$(\"#appbundle_combinacionitem_subcategoria\");

                        var index=0;
                        \$.each(data, function (key, value) {
                            selectSubcategoria.append(\$(\"<option></option>\")
                                    .attr(\"value\", data[index].id).text(data[index].nombre));
                            index++;
                        });

                        mostrarProgreso(false);

                        \$(\"#appbundle_combinacionitem_subcategoria\").val(-1);
                    }
                });
            }
        });
    </script>

    <script>
        function datasubmit()
        {
            if ( \$( \"#appbundle_combinacionitem_subcategoria\").val() == -1 )
            {
                \$( \"#appbundle_combinacionitem_subcategoria\").val(null)
            }
        }
    </script>

";
    }

    public function getTemplateName()
    {
        return ":combinacionitem:new.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  175 => 101,  135 => 64,  131 => 63,  127 => 62,  121 => 59,  114 => 55,  101 => 45,  89 => 36,  85 => 35,  75 => 28,  70 => 26,  64 => 23,  57 => 19,  52 => 17,  46 => 14,  38 => 9,  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":combinacionitem:new.html.twig", "/var/www/html/pospublicarte/app/Resources/views/combinacionitem/new.html.twig");
    }
}
