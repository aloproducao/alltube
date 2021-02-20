{include file='inc/head.tpl'}
<div class="wrapper">
    <main class="main">
        {include file="inc/logo.tpl"}
        <h2>{t}Este vídeo está protegido{/t}</h2>
        <p>{t}Você precisa de uma senha para baixar este vídeo.{/t}</p>
        <form action="" method="POST">
            <label class="sr-only" for="password">{t}Video password{/t}</label>
            <input class="URLinput" type="password" name="password" id="password"/>
            <br/><br/>
            <input class="downloadBtn" type="submit" value="{t}Download{/t}"/>
        </form>
    </main>
    {include file='inc/footer.tpl'}
