<?php

/* :cotizacion:mail.html.twig */
class __TwigTemplate_95cdee474689c4cdf044c1e9f0c6fe6462700b29195345105b3002edfd734419 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <title>Title</title>
</head>
<body>

<p>Le hacemos llegar la cotización solicitada.<br><br>

<p>Saludos cordiales.</p>

</body>
</html>";
    }

    public function getTemplateName()
    {
        return ":cotizacion:mail.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", ":cotizacion:mail.html.twig", "/var/www/html/pospublicarte/app/Resources/views/cotizacion/mail.html.twig");
    }
}
