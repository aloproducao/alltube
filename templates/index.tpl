{include file='inc/head.tpl'}
{include file='inc/header.tpl'}
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-F6G7ZHRSBF"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-F6G7ZHRSBF');
</script>

<main class="main">
    <div><img class="logo" src="{base_url}/img/logo.png"
              alt="{$config->appName}" width="328" height="284"></div>
    <form action="{path_for name="info"}">
        <label class="labelurl" for="url">
            {t}Cole aqui o link do vídeo (YouTube, Facebook, etc.){/t}
        </label>
        <div class="champs">
        <span class="URLinput_wrapper">
            <!-- We used to have an autofocus attribute on this field but it triggerd a very specific CSS bug: https://github.com/Rudloff/alltube/issues/117 -->
            <input class="URLinput large-font" type="url" name="url" id="url"
                   required placeholder="https://exemplo.navve.studio/video"/>
        </span>
            {if $config->uglyUrls}
                <input type="hidden" name="page" value="info"/>
            {/if}
            <input class="downloadBtn large-font" type="submit" value="{t}Baixar{/t}"/><br/>
            {if $config->convert}
                <div class="mp3 small-font">
                    <div class="mp3-inner">
                        <input type="checkbox" id="audio" class="audio" name="audio" {($config->defaultAudio) ? 'checked' : ''}>
                        <label for="audio"><span class="ui"></span>
                            {t}Somente áudio (MP3){/t}
                        </label>
                       {if $config->convertSeek}
                        <div class="seekOptions">
                            <label for="from">{t}From{/t}</label> <input type="text" pattern="(\d+:)?(\d+:)?\d+(\.\d+)?"
                                                                         placeholder="HH:MM:SS" value="" name="from"
                                                                         id="from"/>
                            <label for="to">{t}to{/t}</label> <input type="text" pattern="(\d+:)?(\d+:)?\d+(\.\d+)?"
                                                                     placeholder="HH:MM:SS" value="" name="to" id="to"/>
                        </div>
                        {/if}
                    </div>
                </div>
            {/if}
        </div>
    </form>
    <a class="combatiblelink small-font" href="{path_for name="extractors"}">{t}Veja todos os sites suportados{/t}</a>
    <div id="bookmarklet" class="bookmarklet_wrapper">
        <p> {t}arraste para a barra de favoritos:{/t} </p>
        <a class="bookmarklet small-font"
           href="javascript:window.location='{$domain}{path_for name='info' queryParams=['url' => '%url%']}'.replace('%url%', encodeURIComponent(location.href));">{t}Bookmarklet{/t}</a>
    </div>

</main>
{include file='inc/footer.tpl'}
