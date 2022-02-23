<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lib-service's Viewer</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
    <link rel="stylesheet" href="../resources/libs/normalize.min.css">
    <link rel="stylesheet" href="../resources/viewer/style.css">
    <link href="https://fonts.googleapis.com/css?family=Arbutus+Slab" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i" rel="stylesheet">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="description" content="ePubViewer is an powerful, modern, and easy-to-use web app for reading ebooks.">
</head>

        <link rel="stylesheet" href="../resources/viewer/normalize.css">
        <link rel="stylesheet" href="../resources/viewer/main.css">
        <link rel="stylesheet" href="../resources/viewer/popup.css">

        <script src="../resources/viewer/jquery.min.js"></script>

        <script src="../resources/viewer/zip.min.js"></script>

        <script>
            "use strict";

            document.onreadystatechange = function () {
              if (document.readyState == "complete") {
                window.reader = ePubReader("../resources/file/1.epub", {
                   restore: true
                 });
              }
            };

        </script>

        <!-- File Storage -->
        <!-- <script src="js/libs/localforage.min.js"></script> -->

        <!-- Full Screen -->
        <script src="../resources/viewer/screenfull.min.js"></script>

        <!-- Render -->
        <script src="../resources/viewer/epub1.js"></script>

        <!-- Reader -->
        <script src="../resources/viewer/reader.js"></script>

        <!-- Plugins -->
        <!-- <script src="js/plugins/search.js"></script> -->

        <!-- Highlights -->
        <!-- <script src="js/libs/jquery.highlight.js"></script> -->
        <!-- <script src="js/hooks/extensions/highlight.js"></script> -->

    </head>
    <body>
      <div id="sidebar">
        <div id="panels">
          <!-- <input id="searchBox" placeholder="search" type="search"> -->

          <!-- <a id="show-Search" class="show_view icon-search" data-view="Search">Search</a> -->
          <a id="show-Toc" class="show_view icon-list-1 active" data-view="Toc">TOC</a>
          <a id="show-Bookmarks" class="show_view icon-bookmark" data-view="Bookmarks">Bookmarks</a>
          <!-- <a id="show-Notes" class="show_view icon-edit" data-view="Notes">Notes</a> -->
		</div>
	</div>

<body>
    <div class="app">
        <div class="dictionary-wrapper hidden">
            <div class="dictionary"></div>
        </div>
        <div class="sidebar-wrapper out">
            <div class="sidebar">
                <div class="tab-list">
                    <a data-tab="toc" class="item">
                        <i class="icon material-icons-outlined">list</i>
                    </a>
                    <a data-tab="search" class="item">
                        <i class="icon material-icons-outlined">search</i>
                    </a>
                    <a data-tab="info" class="item">
                        <i class="icon material-icons-outlined">info</i>
                    </a>
                    <a data-tab="settings" class="item">
                        <i class="icon material-icons-outlined">settings</i>
                    </a>
                </div>
                <div class="tab-container">
                    <div class="tab" data-tab="toc">
                        <div class="toc-list"></div>
                    </div>
                    <div class="tab search" data-tab="search">
                        <div class="search-bar">
                            <input type="text" autocomplete="off" placeholder="Search book..." class="search-box">
                            <button class="search-button">
                                <i class="icon material-icons-outlined">search</i>
                            </button>
                        </div>
                        <div class="search-results"></div>
                    </div>
                    <div class="tab info" data-tab="info">
                        <div class="cover-wrapper">
                            <img src="" alt="" class="cover">
                        </div>
                        <div class="title"></div>
                        <div class="series-info">
                            <span class="series-name"></span>
                            <span class="divider"> - </span>
                            <span class="series-index"></span>
                        </div>
                        <div class="author"></div>
                        <div class="description"></div>
                    </div>
                    <div class="tab settings" data-tab="settings">
                        <div class="setting">
                            <div class="setting-label">Themes</div>
                            <div class="setting-content theme chips" data-chips="theme">
                                <div class="theme chip" style="background: #fff; color: #000;" data-default="true" data-value="#fff;#000">A</div>
                                <div class="theme chip" style="background: #000; color: #fff;" data-value="#000;#fff">A</div>
                                <div class="theme chip" style="background: #333; color: #eee;" data-value="#333;#eee">A</div>
                                <div class="theme chip" style="background: #f5deb3; color: #000;" data-value="#f5deb3;#000">A</div>
                                <div class="theme chip" style="background: #111; color: #f5deb3;" data-value="#111;#f5deb3">A</div>
                                <div class="theme chip" style="background: #111b21; color: #e8e8e8;" data-value="#111b21;#e8e8e8">A</div>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Font</div>
                            <div class="setting-content font chips" data-chips="font">
                                <div class="font chip" style="font-family: 'Arial', Arimo, Liberation Sans, sans-serif;" data-value="'Arial', Arimo, Liberation Sans, sans-serif">Arial</div>
                                <div class="font chip" style="font-family: 'Lato', sans-serif;" data-value="'Lato', sans-serif">Lato</div>
                                <div class="font chip" style="font-family: 'Georgia', Liberation Serif, serif;" data-value="'Georgia', Liberation Serif, serif">Georgia</div>
                                <div class="font chip" style="font-family: 'Times New Roman', Tinos, Liberation Serif, Times, serif;" data-value="'Times New Roman', Tinos, Liberation Serif, Times, serif"
                                    data-default="true">Times New Roman</div>
                                <div class="font chip" style="font-family: 'Arbutus Slab', serif;" data-value="'Arbutus Slab', serif">Arbutus Slab</div>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Font Size</div>
                            <div class="setting-content font-size chips" data-chips="font-size">
                                <div class="size chip" style="font-size: 8pt" data-value="8pt">8</div>
                                <div class="size chip" style="font-size: 9pt" data-value="9pt">9</div>
                                <div class="size chip" style="font-size: 10pt" data-value="10pt">10</div>
                                <div class="size chip" style="font-size: 11pt" data-default="true" data-value="11pt">11</div>
                                <div class="size chip" style="font-size: 12pt" data-value="12pt">12</div>
                                <div class="size chip" style="font-size: 14pt" data-value="14pt">14</div>
                                <div class="size chip" style="font-size: 16pt" data-value="16pt">16</div>
                                <div class="size chip" style="font-size: 18pt" data-value="18pt">18</div>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Line Spacing</div>
                            <div class="setting-content line-spacing chips" data-chips="line-spacing">
                                <div class="size chip" data-value="1">1</div>
                                <div class="size chip" data-value="1.2">1.2</div>
                                <div class="size chip" data-value="1.4">1.4</div>
                                <div class="size chip" data-default="true" data-value="1.6">1.6</div>
                                <div class="size chip" data-value="1.8">1.8</div>
                                <div class="size chip" data-value="2">2</div>
                                <div class="size chip" data-value="2.3">2.3</div>
                                <div class="size chip" data-value="2.6">2.6</div>
                                <div class="size chip" data-value="3">3</div>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Margin</div>
                            <div class="setting-content margin chips" data-chips="margin">
                                <div class="size chip" data-value="0">0</div>
                                <div class="size chip" data-value="1px">1px</div>
                                <div class="size chip" data-value="2px">2px</div>
                                <div class="size chip" data-value="3px">3px</div>
                                <div class="size chip" data-value="4px">4px</div>
                                <div class="size chip" data-default="true" data-value="5px">5px</div>
                                <div class="size chip" data-value="7px">7px</div>
                                <div class="size chip" data-value="9px">9px</div>
                                <div class="size chip" data-value="12px">12px</div>
                                <div class="size chip" data-value="15px">15px</div>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Progress Display</div>
                            <div class="setting-content progress chips" data-chips="progress">
                                <div class="chip" data-value="location" data-default="true">Location</div>
                                <div class="chip" data-value="percentage" data-default="true">Percentage</div>
                                <div class="chip" data-value="chapter" data-default="true">Chapter</div>
                                <div class="chip" data-value="bar" data-default="true">Bar</div>
                                <div class="chip" data-value="none" data-default="true">None</div>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Fullscreen</div>
                            <div class="setting-content">
                                <a href="javascript:ePubViewer.doFullscreen();">Fullscreen</a>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">Reset</div>
                            <div class="setting-content">
                                <a href="javascript:void(0);" onclick="if(confirm('Are you sure?')){localStorage.clear();window.location.reload();}">Reset All</a>
                            </div>
                        </div>
                        <div class="setting">
                            <div class="setting-label">About</div>
                            <div class="setting-content">
                                ePubViewer v3.1.0
                                <br /> Copyright 2019
                                <a href="https://pgaskin.net">Patrick Gaskin</a>
                                <br />
                                <a href="https://github.com/pgaskin/ePubViewer">Code</a> |
                                <a href="https://github.com/pgaskin/ePubViewer/issues">Report an issue</a>
                                <br />
                                <br /> This app requires Microsoft Edge 15+, Mozilla Firefox 50+, Chrome 50+, or Safari 10+.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="error hidden">
            <div class="error-title"></div>
            <div class="error-description"></div>
            <div class="error-info"></div>
            <div class="error-dump"></div>
        </div>
        <div class="bar">
            <div class="left">
                <button class="open">
                    <i class="icon material-icons-outlined">open_in_browser</i>
                </button>
            </div>
            <div class="title">
                <span class="book-title"></span>
                <span class="divider"> - </span>
                <span class="book-author"></span>
            </div>
            <div class="right">
                <button class="sidebar-button hidden" onclick="ePubViewer.doSidebar()">
                    <i class="icon material-icons-outlined">menu</i>
                </button>
            </div>
        </div>
        <div class="book">
            <div class="empty-wrapper">
                <div class="empty">
                    <div class="app-name">lib-service's Viewer</div>
                    <div class="message">
                       	 알 수 없는 에러가 발생했습니다. 다른 브라우저를 사용해주세요!
                        <a href="https://github.com/pgaskin/ePubViewer">여기 클릭!</a>.
                    </div>
                </div>
            </div>
        </div>
        <div class="bar">
            <div class="left">
                <button class="prev hidden">
                    <i class="icon material-icons-outlined">chevron_left</i>
                </button>
            </div>
            <div class="loc"></div>
            <div class="right">
                <button class="next hidden">
                    <i class="icon material-icons-outlined">chevron_right</i>
                </button>
            </div>
        </div>
    </div>

    <script src="https://geek1011.net/epubviewer-inject.js"></script>

    <script>
        function isIE(userAgent) {
            userAgent = userAgent || navigator.userAgent;
            return userAgent.indexOf("MSIE ") > -1 || userAgent.indexOf("Trident/") > -1;
        }
        if (isIE()) alert("ePubViewer does not support Internet Explorer. Please use Chrome or Firefox.");
    </script>


    <script src="../resources/polyfills/babel-polyfill.min.js"></script>
    <script src="../resources/polyfills/fetch.js"></script>
    <script src="../resources/polyfills/pep.min.js"></script>
    <script src="../resources/libs/sanitize-html.min.js"></script>
    <script src="../resources/libs/jszip.min.js"></script>
    <script src="../resources/libs/epub.js"></script>

    <script src="https://cdn.ravenjs.com/3.26.2/raven.min.js" crossorigin="anonymous"></script>
    <script>
        Raven.config('https://2ca31038f72145f787447a29b085007b@sentry.io/1239248', {
            autoBreadcrumbs: {
                console: true,
                dom: true
            }
        }).install();
    </script>

    <script src="../resources/viewer/script.js"></script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-66226417-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'UA-66226417-1');
    </script>
</body>

</html>