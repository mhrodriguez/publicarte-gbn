<?php

/* contacto/index.html.twig */
class __TwigTemplate_4298d388bff7967811b23c43c61a6a777d8a5b90a9833d3a70eed40cdf509894 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("baseabc.html.twig", "contacto/index.html.twig", 1);
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
        if ((twig_length_filter($this->env, ($context["contactos"] ?? null)) > 0)) {
            // line 6
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["contactos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 7
                echo "            ";
                $context["contacto"] = $this->getAttribute(($context["contactos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 8
                echo "
            ";
                // line 9
                $context["deleteForm"] = $this->getAttribute(($context["deleteForms"] ?? null), ($context["index"] - 1), array(), "array");
                // line 10
                echo "            ";
                $context["frmNombre"] = ("frmDelete" . $this->getAttribute(($context["contacto"] ?? null), "id", array()));
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
        <div class=\"mdl-cell mdl-cell--9-col\">
            <h3>Contactos</h3>
            <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"
                    onclick=\"window.location.href='";
        // line 20
        echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("contacto_new", array("idCliente" => ($context["idCliente"] ?? null))), "html", null, true);
        echo "'\">
                Nuevo Contacto
            </button>
        </div>
        <div class=\"mdl-cell mdl-cell--1-col\">

        </div>
    </div>

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--12-col\">
            <div id=\"jsGrid\"></div>
            <br>
            <div>(<i class=\"material-icons\">edit</i>) Editar &emsp; (<i class=\"material-icons\">delete</i>) Borrar</div>

            <script>
                var items = [
                    ";
        // line 37
        if ((twig_length_filter($this->env, ($context["contactos"] ?? null)) > 0)) {
            // line 38
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_length_filter($this->env, ($context["contactos"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["index"]) {
                // line 39
                echo "                    ";
                $context["contacto"] = $this->getAttribute(($context["contactos"] ?? null), ($context["index"] - 1), array(), "array");
                // line 40
                echo "                    ";
                $context["frmNombreDelete"] = ("frmDelete" . $this->getAttribute(($context["contacto"] ?? null), "id", array()));
                // line 41
                echo "                    {
                        \"Id\": ";
                // line 42
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "id", array()), "html", null, true);
                echo ",
                        \"Nombre\": \"";
                // line 43
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "nombre", array()), "html", null, true);
                echo "\",
                        \"Apellidos\": \"";
                // line 44
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "apellidos", array()), "html", null, true);
                echo "\",
                        \"Puesto\": \"";
                // line 45
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "puesto", array()), "html", null, true);
                echo "\",
                        \"Correo\": \"";
                // line 46
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "correo", array()), "html", null, true);
                echo "\",
                        \"CorreoFacturacion\": \"";
                // line 47
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "correofacturacion", array()), "html", null, true);
                echo "\",
                        \"Telefono\": \"";
                // line 48
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "telefono", array()), "html", null, true);
                echo "\",
                        \"Activo\": \"";
                // line 49
                echo twig_escape_filter($this->env, $this->getAttribute(($context["contacto"] ?? null), "activo", array()), "html", null, true);
                echo "\",
                        \"Operaciones\": \"<a href=\\\"";
                // line 50
                echo twig_escape_filter($this->env, $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("contacto_edit", array("id" => $this->getAttribute(($context["contacto"] ?? null), "id", array()), "idCliente" => ($context["idCliente"] ?? null))), "html", null, true);
                echo "\\\"><i class=\\\"material-icons\\\">edit</i></a><span></span>";
                if ($this->env->getExtension('Symfony\Bridge\Twig\Extension\SecurityExtension')->isGranted("ROLE_EMPRESA")) {
                    echo "<a href=\\\"#\\\" onclick=\\\"if (confirm('¿Está seguro de borrar este contacto?')) document.getElementById('";
                    echo twig_escape_filter($this->env, ($context["frmNombreDelete"] ?? null), "html", null, true);
                    echo "').submit();\\\"><i class=\\\"material-icons\\\">delete</i></a>";
                }
                echo "\"
                    },
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['index'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 53
            echo "                    ";
        }
        // line 54
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
                                { name: \"Nombre\",title: \"Nombre\", type: \"text\", width: \"4em\", css: \"textofila\"},
                                { name: \"Apellidos\",title: \"Apellidos\", type: \"text\", width: \"4em\", css: \"textofila\"},
                                { name: \"Puesto\", title: \"Puesto\", type: \"text\", width: \"5em\", css: \"textofila\" },
                                { name: \"Correo\",title: \"E-mail\", type: \"text\", width: \"7em\", css: \"textofila\"},
                                { name: \"CorreoFacturacion\",title: \"E-mail de facturación\", type: \"text\", width: \"7em\", css: \"textofila\"},
                                { name: \"Telefono\",title: \"Teléfono\", type: \"text\", width: \"4em\", css: \"textofila\"},
                                { name: \"Activo\",title: \"Activo\", type: \"checkbox\", width: \"3em\", css: \"textofila\"},
                                { name: \"Operaciones\", title: \"Operaciones\", type: \"html\", width: \"3em\", css: \"textofila\" },
                                { type: \"control\", width: \"2em\",  editButton: false, deleteButton: false },
                            ],

                            controller: {
                                data: items,
                                loadData: function (filter) {

                                    var registros = this.data;

                                    if (filter.Nombre != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Nombre.toUpperCase().indexOf(filter.Nombre.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Apellidos != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Apellidos.toUpperCase().indexOf(filter.Apellidos.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Puesto != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Puesto.toUpperCase().indexOf(filter.Puesto.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.Correo != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.Correo.toUpperCase().indexOf(filter.Correo.toUpperCase()) >= 0);
                                        });
                                    }

                                    if (filter.CorreoFacturacion != null) {
                                        registros = \$.grep(registros, function (item) {
                                            return (item.CorreoFacturacion.toUpperCase().indexOf(filter.CorreoFacturacion.toUpperCase()) >= 0);
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

    <div class=\"mdl-grid\">
        <div class=\"mdl-cell mdl-cell--2-col\">
            <a href=\"";
        // line 160
        echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("cliente_index");
        echo "\">Volver a Clientes</a>
        </div>
    </div>

";
    }

    // line 166
    public function block_scriptsheader($context, array $blocks = array())
    {
        // line 167
        echo "    <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
    ";
        // line 168
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "a98ed61_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_a98ed61_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("js/a98ed61_jsgrid.min_1.js");
            // line 169
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

    // line 173
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 174
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "b89e345_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_b89e345_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/b89e345_jsgrid.min_1.css");
            // line 175
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
        // line 177
        echo "    ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "83d0aca_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_assetic_83d0aca_0") : $this->env->getExtension('Symfony\Bridge\Twig\Extension\AssetExtension')->getAssetUrl("css/83d0aca_jsgrid-theme.min_1.css");
            // line 178
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
        // line 180
        echo "    <link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">
";
    }

    public function getTemplateName()
    {
        return "contacto/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  345 => 180,  331 => 178,  326 => 177,  312 => 175,  307 => 174,  304 => 173,  288 => 169,  284 => 168,  281 => 167,  278 => 166,  269 => 160,  161 => 54,  158 => 53,  143 => 50,  139 => 49,  135 => 48,  131 => 47,  127 => 46,  123 => 45,  119 => 44,  115 => 43,  111 => 42,  108 => 41,  105 => 40,  102 => 39,  97 => 38,  95 => 37,  75 => 20,  68 => 15,  65 => 14,  54 => 11,  51 => 10,  49 => 9,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "contacto/index.html.twig", "/var/www/html/pospublicarte/app/Resources/views/contacto/index.html.twig");
    }
}
