<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
  [[MetaX?tpl=`metax-html5`]]
  
  <link rel="shortcut icon" href="assets/themekalisto-design/img/favicon/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="assets/themekalisto-design/img/favicon/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="assets/themekalisto-design/img/favicon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="assets/themekalisto-design/img/favicon/apple-touch-icon-114x114.png">

  <link rel="stylesheet" href="assets/themekalisto-design/css/main.min.css">
  
</head>
<body>
<div class="gotop"><a href="#"><i class="fa fa-arrow-up"></i></a></div>
<div id="page">

  <!-- HEADER -->
  <header>
    <div class="menu_block">
      <div class="container clearfix">
        <div class="logo pull-left">
          <a href="/"><img src="assets/themekalisto-design/img/logo1.png" alt="[[++site_name]]"></a>
        </div>
        <div class="pull-right">
          <nav class="navmenu center">
           [[pdoMenu? 
              &parents=`0`
              &level=`2`
              &parentClass=`scroll_btn sub-menu`
              &hereClass=`active`
              &tplInner=`@INLINE<ul class="sub">[[+wrapper]]</ul>`
            ]]
          </nav>
        </div>
      </div>
    </div>
  </header>
 
  [[$tpl.[[*template]]]] 

  <!-- FOOTER -->
  <footer class="margtop50">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-6 padbot30">
          <a href="/"><img alt="[[++site_name]]" src="assets/themekalisto-design/img/logo1.png" style="height: 40px; margin-bottom: 20px;"></a>
          <p><i class="fa fa-building"></i> [[++site_name]]</p>
          <p><i class="fa fa-map-marker"></i> [[#1.adres]]</p>
          <p><i class="fa fa-envelope"></i><strong> Email:</strong> <a href="mailto:[[#1.emailSait]]">[[#1.emailSait]]</a></p>
          <p><i class="fa fa-phone"></i><strong> Тел:</strong> <a href="tel:[[++phone1]]">[[++phone1]]</a>, <a href="tel:[[++phone2]]">[[++phone2]]</a></p>
          <p><i class="fa fa-skype"></i> <a href="skype:irina-shishimorova1?call">irina-shishimorova1</a></p>
          <!-- timeweb -->
          <div class="padtop20">
             <a target="_new" href="https://timeweb.com/ru/?i=4406&a=79"><img style="border:0px;" src="https://timeweb.com/ru/img/b/240x100/240x100-1.gif"></a>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 padbot30 foot_about_block">
          <h5>Подписаться на рассылку:</h5>
          <form action="//alhimia54.us15.list-manage.com/subscribe/post?u=0191a3df2d8635b537016c5f9&amp;id=77a797ad5c" method="post" class="validate form-inline margbot40" target="_blank" novalidate>
            <div class="form-group">
              <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                <input type="email" value="" name="EMAIL" class="form-control" id="mce-EMAIL" placeholder="Введите ваш емейл">
                <div class="input-group-addon"><input type="submit" value="Подписаться" name="subscribe" id="mc-embedded-subscribe" class="btn_subscribe"></div>
              </div>
            </div>
          </form>       
          <h5>Читайте нас в соцсетях:</h5>
          <ul class="social">
            [[#1.twitterGroup:!empty=`<li><a class="icon-item" href="[[#1.twitterGroup]]" class="fa fa-twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>`]]
            [[#1.facebookGroup:!empty=`<li><a class="icon-item" href="[[#1.facebookGroup]]" class="fa fa-facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>`]]
            [[#1.instagramGroup:!empty=`<li><a class="icon-item" href="[[#1.instagramGroup]]" class="fa fa-instagram" target="_blank"><i class="fa fa-instagram"></i></a></li>`]]
            [[#1.googleGroup:!empty=`<li><a class="icon-item" href="[[#1.googleGroup]]" class="fa fa-google-plus" target="_blank"><i class="fa fa-google-plus"></i></a></li>`]]
            [[#1.vkGroup:!empty=`<li><a class="icon-item" href="[[#1.vkGroup]]" class="fa fa-vk" target="_blank"><i class="fa fa-vk"></i></a></li>`]]
          </ul>
        </div>
        <div class="respond_clear"></div>
        <div class="col-lg-4 col-md-4 padbot30">
          <h5>Теги:</h5>
          <div class="single_blog_post_tags">
            [[$cloud]]
          </div>
          <div class="margtop20"></div>
            <a href="https://egamaun.ru" target="_blank"><img src="assets/themekalisto-design/img/eg1.png" alt="Элена Гамаюн"></a>
          </div>
        </div>
      </div>
    </div>
  </footer>

</div>

<script src="assets/themekalisto-design/js/scripts.min.js"></script>

<!-- Google Analytics counter -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-92516734-1', 'auto');
  ga('send', 'pageview');
</script>
<!-- end Google Analytics counter -->
<div hidden="true">
<!-- Yandex.Metrika counter --> <script type="text/javascript"> (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter43024229 = new Ya.Metrika({ id:43024229, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true, trackHash:true }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/43024229" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
</div>

</body>
</html>