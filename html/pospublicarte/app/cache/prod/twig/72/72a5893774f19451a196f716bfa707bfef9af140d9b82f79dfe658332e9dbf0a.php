<?php

/* :cliente:index.html.twig */
class __TwigTemplate_f6e48d9660acf6d703a74f04e49cabcf00da85ed5421716baaf09e45e49a97d9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", ":cliente:index.html.twig", 1);
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
        if ((twig_length_filter($this->env, ($context["clientes"] ?? null)) > 0)) {
            // line 6
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["clientes"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 7
                echo "            ";
                $context["cliente"] = $this->getAttribute(($context["clientes"] ?? null), ($context["index"] - 1), array(), "array");
                // line 8
                echo "
            ";
                // line 9
                $context["deleteForm"] = $this->getAttribute(($context["deleteForms"] ?? null), ($context["index"] - 1), array(), "array");
                // line 10
                echo "            ";
                $context["frmNombre"] = ("frmDelete" . $this->getAttribute(($context["cliente"] ?? null), "id", array()));
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
    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--1-col\">
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 19
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cliente_new");
        echo "'\">
                Nuevo
            </button>
        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">

            <div id=\"jsGrid\"></div>
            <br>
            <div>(<i class=\"material-icons\">edit</i>) Editar &emsp; (<i class=\"material-icons\">delete</i>) Borrar &emsp; (<i class=\"material-icons\">person</i>) Contactos</div>
            <script>
                var items = [
                    ";
        // line 33
        if ((twig_length_filter($this->env, ($context["clientes"] ?? null)) > 0)) {
            // line 34
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["clientes"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 35
                echo "                    ";
                $context["cliente"] = $this->getAttribute(($context["clientes"] ?? null), ($context["index"] - 1), array(), "array");
                // line 36
                echo "                    ";
                $context["frmNombreDelete"] = ("frmDelete" . $this->getAttribute(($context["cliente"] ?? null), "id", array()));
                // line 37
                echo "                    {
                        \"Id\": ";
                // line 38
                echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "id", array()), "html", null, true);
                echo ",
                        \"Empresa\": \"";
                // line 39
                echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "razonsocial", array()), "html", null, true);
                echo "\",
                        \"RFC\": \"";
                // line 40
                echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "rfc", array()), "html", null, true);
                echo "\",
                        \"Activo\": \"";
                // line 41
                echo twig_escape_filter($this->env, $this->getAttribute(($context["cliente"] ?? null), "activo", array()), "html", null, true);
                echo "\",
                        \"Operaciones\": \"<a href=\\\"";
                // line 42
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cliente_edit", array("id" => $this->getAttribute(($context["cliente"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">edit</i></a><span></span>";
                if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de borrar este cliente?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombreDelete"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">delete</i></a><span></span>";
                }
                echo "<a href=\\\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("contacto_index", array("idCliente" => $this->getAttribute(($context["cliente"] ?? null), "id", array()))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">person</i></a>\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 45
            echo "                    ";
        }
        // line 46
        echo "                ];

                \$(\"#jsGrid\").jsGrid({
                            width: \"100%\",
                            height: \"auto\",

                            inserting: false,
                            editing: false,
                            sorting: true,
                            paging: true,

                            pageIndex: 1,
                            pageSize: 20,

                            pagePrevText: \"<\",
                            pageNextText: \">\",
                            pageFirstText: \"Primera\",
                            pageLastText: \"Última\",
                            pagerFormat: \"Páginas: {first} {prev} {pages} {next} {last}    {pageIndex} de {pageCount}\",
                            noDataContent: \"No se encontraron registros\",

                            filtering: true,
                            clearFilterButton: true,

                            data: items,

                            fields: [
                                { name: \"Id\", title: \"Id\", type: \"text\", width: \"1.5em\", css: \"textofila\", filtering:false },
                                { name: \"Empresa\",title: \"Empresa\", type: \"text\", width: \"10em\", css: \"textofila\"},
                                { name: \"RFC\", title: \"RFC\", type: \"text\", width: \"5em\", css: \"textofila\" },
                                { name: \"Activo\",title: \"Activo\", type: \"checkbox\", width: \"3em\", css: \"textofila\"},
                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"4em\", css: \"textofila\" },
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Empresa != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Empresa.toUpperCase().indexOf(filter.Empresa.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.NombreContacto != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.NombreContacto.toUpperCase().indexOf(filter.NombreContacto.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.RFC != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.RFC.toUpperCase().indexOf(filter.RFC.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Correo != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Correo.toUpperCase().indexOf(filter.Correo.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Telefono != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Telefono.toUpperCase().indexOf(filter.Telefono.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Activo != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Activo == filter.Activo);
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
            </style>
        </div>
    </div>


";
    }

    // line 143
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 144
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 145
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 146
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

    // line 150
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 151
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 152
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
        // line 154
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 155
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
        // line 157
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return ":cliente:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  309 => 157,  295 => 155,  290 => 154,  276 => 152,  271 => 151,  268 => 150,  252 => 146,  248 => 145,  245 => 144,  242 => 143,  143 => 46,  140 => 45,  123 => 42,  119 => 41,  115 => 40,  111 => 39,  107 => 38,  104 => 37,  101 => 36,  98 => 35,  93 => 34,  91 => 33,  74 => 19,  68 => 15,  65 => 14,  54 => 11,  51 => 10,  49 => 9,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cliente:index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cliente/index.html.twig");
    }
}
