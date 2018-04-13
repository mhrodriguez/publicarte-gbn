<?php

/* producto/index.html.twig */
class __TwigTemplate_0e149c56d4892f607ebc229b41b6d9d795c924d459d69149f163b37cd83428bb extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "producto/index.html.twig", 1);
        $this->blocks = array(
            'body' => array($this, 'block_body'),
            'scriptsheader' => array($this, 'block_scriptsheader'),
            'stylesheets' => array($this, 'block_stylesheets'),
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
    ";
        // line 5
        if ((twig_length_filter($this->env, ($context["productos"] ?? null)) > 0)) {
            // line 6
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["productos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 7
                echo "            ";
                $context["producto"] = $this->getAttribute(($context["productos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 8
                echo "
            ";
                // line 9
                $context["deleteForm"] = $this->getAttribute(($context["deleteForms"] ?? null), ($context["index"] - 1), array(), "array");
                // line 10
                echo "            ";
                $context["frmNombre"] = ("frmDelete" . $this->getAttribute(($context["producto"] ?? null), "id", array()));
                // line 11
                echo "            ";
                echo                 $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["deleteForm"] ?? null), 'form_start', array("attr" => array("id" => ($context["frmNombre"] ?? null))));
                echo                 $this->env->getExtension('Symfony\Bridge\Twig\Extension\FormExtension')->renderer->renderBlock(($context["deleteForm"] ?? null), 'form_end');
                echo "

        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 14
            echo "    ";
        }
        // line 15
        echo "
    <div style=\"margin: 1em;\">

        <div class=\"mdl-grid\">
            <div class=\"mdl-cell mdl-cell--10-col\">

            </div>
            <div class=\"mdl-cell mdl-cell--2-col\">
                <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                        onclick=\"window.location.href='";
        // line 24
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_new");
        echo "'\">
                    Nuevo Servicio
                </button>
            </div>
        </div>

        <div class=\"mdl-grid\">
            <div class=\"mdl-cell mdl-cell--12-col\">

                <div id=\"jsGrid\"></div>
                <br>
                <div>(<i class=\"material-icons\">edit</i>) Editar &emsp; (<i class=\"material-icons\">delete</i>) Borrar</div>

                <script>
                    var productos = [

                        ";
        // line 40
        if ((twig_length_filter($this->env, ($context["productos"] ?? null)) > 0)) {
            // line 41
            echo "                        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["productos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 42
                echo "                        ";
                $context["producto"] = $this->getAttribute(($context["productos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 43
                echo "                        ";
                $context["frmNombreDelete"] = ("frmDelete" . $this->getAttribute(($context["producto"] ?? null), "id", array()));
                // line 44
                echo "                        { \"Id\": ";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["producto"] ?? null), "id", array()), "html", null, true);
                echo ",
                            \"Nombre\": \"";
                // line 45
                echo twig_escape_filter($this->env, $this->getAttribute(($context["producto"] ?? null), "nombre", array()), "html", null, true);
                echo "\",
                            \"Precio\": \"";
                // line 46
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["producto"] ?? null), "moneda", array()), "simbolo", array()), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, twig_number_format_filter($this->env, $this->getAttribute(($context["producto"] ?? null), "precio", array()), 2, ".", ","), "html", null, true);
                echo "\",
                            \"Operaciones\" :
                                    \"<a href=\\\"";
                // line 48
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("producto_edit", array("id" => $this->getAttribute(($context["producto"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">edit</i></a><span></span>";
                if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de borrar este servicio?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombreDelete"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">delete</i></a>";
                }
                echo "\",
                        },
                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 51
            echo "                        ";
        }
        // line 52
        echo "                    ];


                    \$(\"#jsGrid\").jsGrid({
                                width: \"100%\",
                                height: \"auto\",

                                inserting: false,
                                editing: false,
                                sorting: true,
                                paging: true,

                                pageIndex: 1,
                                pageSize: 20,

                                filtering: true,
                                clearFilterButton: true,

                                data: productos,

                                pagePrevText: \"<\",
                                pageNextText: \">\",
                                pageFirstText: \"Primera\",
                                pageLastText: \"Última\",
                                pagerFormat: \"Páginas: {first} {prev} {pages} {next} {last}    {pageIndex} de {pageCount}\",
                                noDataContent: \"No se encontraron registros\",

                                fields: [
                                    { name: \"Id\", type: \"number\", width: \"2em\", css: \"textofila\", filtering:false },
                                    { name: \"Nombre\", type: \"text\", width: \"8em\", css: \"textofila\"},
                                    { name: \"Precio\", title: \"Precio\", type: \"text\", width: \"4em\", css: \"textofila\", filtering:false},
                                    { name: \"Operaciones\", type: \"html\", width: \"4em\", width: \"4em\", css: \"textofila\"},
                                ],

                                controller: {
                                    data: productos,
                                    loadData: function (filter) {

                                        var registros = this.data;

                                        if (filter.Nombre != null) {
                                            registros = \$.grep(registros, function (item) {
                                                return (item.Nombre.toUpperCase().indexOf(filter.Nombre.toUpperCase()) >= 0);
                                            });
                                        }

                                        return registros;
                                    }
                                }
                            }
                    );
                </script>


                <style>
                    .textofila
                    {
                        font-size:0.8em;
                    }
                    img
                    {
                        width: 10em;
                        height: auto;
                    }
                </style>
            </div>
        </div>
    </div>
";
    }

    // line 122
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 123
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 124
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 125
            echo "    <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
    ";
        } else {
            // asset "a98ed61"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61.js");
            echo "    <script src=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\"></script>
    ";
        }
        unset($context["asset_url"]);
    }

    // line 129
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 130
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 131
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        } else {
            // asset "b89e345"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345.css");
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        }
        unset($context["asset_url"]);
        // line 133
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 134
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        } else {
            // asset "83d0aca"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca.css");
            echo "    <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, ($context["asset_url"] ?? null), "html", null, true);
            echo "\" />
    ";
        }
        unset($context["asset_url"]);
        // line 136
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
    <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">
";
    }

    public function getTemplateName()
    {
        return "producto/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  284 => 136,  270 => 134,  265 => 133,  251 => 131,  246 => 130,  243 => 129,  227 => 125,  223 => 124,  220 => 123,  217 => 122,  145 => 52,  142 => 51,  127 => 48,  120 => 46,  116 => 45,  111 => 44,  108 => 43,  105 => 42,  100 => 41,  98 => 40,  79 => 24,  68 => 15,  65 => 14,  54 => 11,  51 => 10,  49 => 9,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "producto/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/producto/index.html.twig");
    }
}
