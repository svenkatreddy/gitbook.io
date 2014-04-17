<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <title>GitBook</title>
        <link rel="icon" href="favicon.ico">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="static/style.css">
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
        <meta name="description" content="Build beautiful programming books and exercises using GitHub/Git and Markdown.">
        <meta name="keywords" content="gitbook,git,book,programming" >
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <script type="text/javascript">
        (function(e,b){if(!b.__SV){var a,f,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.track_charge people.clear_charges people.delete_user".split(" ");
        for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=e.createElement("script");a.type="text/javascript";a.src=("https:"===e.location.protocol?"https:":"http:")+'//cdn.mxpnl.com/libs/mixpanel-2.2.min.js';f=e.getElementsByTagName("script")[0];f.parentNode.insertBefore(a,f)}})(document,window.mixpanel||[]);
        mixpanel.init("01eb2b950ae09a5fdb15a98dcc5ff20e");
        mixpanel.track("homepage");
        </script>
    </head>
    <body>
        <div class="wrapper">
            <div id="header">
                <div class="inner">
                    <img class="logo" src="/static/images/logo/128t.png" />
                    <h1>GitBook</h1>
                    <!-- Share -->
                    <div class="share">
                        <ul class="social-buttons">
                            <li>
                                <iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=GitbookIO&amp;repo=gitbook&amp;type=watch&amp;count=true&amp;size=large" width="165" height="30" title="Star on GitHub"></iframe>
                            </li>
                            <li>
                                <iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=GitbookIO&amp;repo=gitbook&amp;type=fork&amp;count=true&amp;size=large" width="162" height="30" title="Fork on GitHub"></iframe>
                            </li>
                            <li class="tweet-btn">
                                <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.gitbook.io" data-text="GitBook: Build beautiful programming books and exercises using GitHub/Git and Markdown" data-related="SamyPesse" data-size="large">Tweet</a>
                                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="intro">
                <div class="inner">
                    <p class="intro">Build beautiful interactive books using GitHub/Git and Markdown.</p>
                </div>
            </div>
            <div id="body">

                <div class="menu">
                    <div class="inner">
                        <div class="actions">
                            <a href="https://github.com/GitbookIO/gitbook.io/blob/master/featured.json">Suggest a book</a>
                        </div>
                        <ul>
                            <li class="active"><a href="#all">All</a></li>
                            <li><a href="#programming">Programming</a></li>
                            <li><a href="#math">Math</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Featured -->
                <section class="featured">
                    <div class="container">
                        <div class="row">
                            {% for book in featured %}
                            <div class="col-md-4">
                                <div class="book">
                                    <div class="content">
                                        <h3>{{ book.title }}</h3>
                                        <p>{{ book.description }}</p>
                                        <p class="authors"><span>written by</span>
                                        {% for author in book.authors %}
                                        <a href="{{ author.url }}" title="{{ author.name }}"><img src="{{ author.avatar }}" /></a>
                                        {% endfor %}
                                        </p>
                                    </div>
                                    <a class="read" href="{{ book.url }}">read it</a>
                                </div>
                            </div>
                            {% endfor %}
                        </div>
                    </div>
                </section>
            </div>
            <div id="footer">
                <div class="inner">
                    <a href="https://github.com/GitbookIO">It’s Open Source</a>
                    <a href="https://github.com/GitbookIO/gitbook#gitbook">About GitBook</a>
                    <a class="pull-right" href="https://github.com/GitbookIO/gitbook/blob/master/AUTHORS.md">Made with <i class="fa fa-heart"></i> by a dedicated Team</a>
                </div>
            </div>
        </div>
    </body>
</html>
