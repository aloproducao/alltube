<!doctype html>
<html lang="{$locale->getLocale()->getBcp47()}">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv=”Refresh” content=”0;URL=https://www.yourdomainname.com”/>
    <meta name=viewport content="width=device-width, initial-scale=1"/>
    {if isset($description)}
        <meta name="description" content="Baixe gratuitamente do youtube, facebook e muitos outros.."/>
        <meta name="twitter:description" content="{$description|escape}"/>
        <meta property="og:description" content="{$description|escape}"/>
    {/if}
    <link rel="stylesheet" href="{base_url}/assets/open-sans/open-sans.css"/>
    <link rel="stylesheet" href="{base_url}/css/style.css"/>
   <title>n.download</title>
    <link rel="canonical" href="{$canonical}"/>
    <link rel="icon" href="{base_url}/img/favicon.png"/>
    
    <meta name="theme-color" content="#fff"/>
    <link rel="manifest" href="{base_url}/resources/manifest.json"/>
    <meta name="generator" content="AllTube Download ({$config->getAppVersion()})"/>
    


<meta name="title" content="n.download">
<meta name="description" content="Baixe gratuitamente do youtube, facebook e muitos outros.. totalmente em português sem limites!!">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://download.navve.studio/">
<meta property="og:title" content="n.download">
<meta property="og:description" content="Baixe gratuitamente do youtube, facebook e muitos outros.. totalmente em português sem limites!!">
<meta property="og:image" content="https://download.navve.studio/img/capa.png">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://download.navve.studio/">
<meta property="twitter:title" content="n.download">
<meta property="twitter:description" content="Baixe gratuitamente do youtube, facebook e muitos outros.. totalmente em português sem limites!!">
<meta property="twitter:image" content="https://download.navve.studio/img/capa.png">
    
   

</head>

<body>
<div class="page {$class}">
