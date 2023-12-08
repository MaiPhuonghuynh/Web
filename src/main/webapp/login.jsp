<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<head>
<meta charset="UTF-8" />
<meta name="theme-color" content="#f02b2b" />
<!-- <link rel="canonical" href="https://dola-restaurant.mysapo.net/" /> -->
<!--  <meta name='revisit-after' content='2 days' /> -->
<!-- ấn f12 thu nhỏ đúng lúc -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- <meta name="robots" content="noodp,index,follow" /> -->
<!-- <meta name="description" content="">
        <title>Dola Restaurant </title> -->
<!-- <meta name="keywords" content="Cập nhật sau" /> -->

<!-- 
        <meta property="og:type" content="website">
        <meta property="og:title" content="Dola Restaurant">
        <meta property="og:image"
            content="https://bizweb.dktcdn.net/100/469/097/themes/882205/assets/logo.png?1686650273952">
        <meta property="og:image:secure_url"
            content="https://bizweb.dktcdn.net/100/469/097/themes/882205/assets/logo.png?1686650273952">
    
        <meta property="og:description" content="">
        <meta property="og:url" content="https://dola-restaurant.mysapo.net/">
        <link rel="icon" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/favicon.png?1686650273952"
            type="image/x-icon" /> -->
<!-- <meta property="og:site_name" content="Dola Restaurant"> -->

<!-- icon -->
<title>Dola Restaurant</title>
<link rel="icon" href="images/icon.png" type="image/x-icon" />
<link rel="preload" as="script"
	href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952" />
<script
	src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952"
	type="text/javascript"></script>

<link rel="preload" as="script"
	href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952" />
<script
	src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952"
	type="text/javascript"></script>

<link rel="preload" as="script"
	href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952" />
<script
	src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952"
	type="text/javascript"></script>
<script
	src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/waypoints.js?1686650273952"
	type="text/javascript"></script>
<script
	src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/counterup.js?1686650273952"
	type="text/javascript"></script>
<!-- <script>
            //notify js
            !function (t) { "function" == typeof define && define.amd ? define(["jquery"], t) : t("object" == typeof exports ? require("jquery") : jQuery) }(function (t) { function s(s) { var e = !1; return t('[data-notify="container"]').each(function (i, n) { var a = t(n), o = a.find('[data-notify="title"]').text().trim(), r = a.find('[data-notify="message"]').html().trim(), l = o === t("<div>" + s.settings.content.title + "</div>").html().trim(), d = r === t("<div>" + s.settings.content.message + "</div>").html().trim(), g = a.hasClass("alert-" + s.settings.type); return l && d && g && (e = !0), !e }), e } function e(e, n, a) { var o = { content: { message: "object" == typeof n ? n.message : n, title: n.title ? n.title : "", icon: n.icon ? n.icon : "", url: n.url ? n.url : "#", target: n.target ? n.target : "-" } }; a = t.extend(!0, {}, o, a), this.settings = t.extend(!0, {}, i, a), this._defaults = i, "-" === this.settings.content.target && (this.settings.content.target = this.settings.url_target), this.animations = { start: "webkitAnimationStart oanimationstart MSAnimationStart animationstart", end: "webkitAnimationEnd oanimationend MSAnimationEnd animationend" }, "number" == typeof this.settings.offset && (this.settings.offset = { x: this.settings.offset, y: this.settings.offset }), (this.settings.allow_duplicates || !this.settings.allow_duplicates && !s(this)) && this.init() } var i = { element: "body", position: null, type: "info", allow_dismiss: !0, allow_duplicates: !0, newest_on_top: !1, showProgressbar: !1, placement: { from: "top", align: "right" }, offset: 20, spacing: 10, z_index: 1031, delay: 5e3, timer: 1e3, url_target: "_blank", mouse_over: null, animate: { enter: "animated fadeInDown", exit: "animated fadeOutUp" }, onShow: null, onShown: null, onClose: null, onClosed: null, icon_type: "class", template: '<div data-notify="container" class="col-xs-11 col-sm-4 alert alert-{0}" role="alert"><button type="button" aria-hidden="true" class="close" data-notify="dismiss">&times;</button><span data-notify="icon"></span> <span data-notify="title">{1}</span> <span data-notify="message">{2}</span><div class="progress" data-notify="progressbar"><div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div></div><a href="{3}" target="{4}" data-notify="url"></a></div>' }; String.format = function () { for (var t = arguments[0], s = 1; s < arguments.length; s++)t = t.replace(RegExp("\\{" + (s - 1) + "\\}", "gm"), arguments[s]); return t }, t.extend(e.prototype, { init: function () { var t = this; this.buildNotify(), this.settings.content.icon && this.setIcon(), "#" != this.settings.content.url && this.styleURL(), this.styleDismiss(), this.placement(), this.bind(), this.notify = { $ele: this.$ele, update: function (s, e) { var i = {}; "string" == typeof s ? i[s] = e : i = s; for (var n in i) switch (n) { case "type": this.$ele.removeClass("alert-" + t.settings.type), this.$ele.find('[data-notify="progressbar"] > .progress-bar').removeClass("progress-bar-" + t.settings.type), t.settings.type = i[n], this.$ele.addClass("alert-" + i[n]).find('[data-notify="progressbar"] > .progress-bar').addClass("progress-bar-" + i[n]); break; case "icon": var a = this.$ele.find('[data-notify="icon"]'); "class" === t.settings.icon_type.toLowerCase() ? a.removeClass(t.settings.content.icon).addClass(i[n]) : (a.is("img") || a.find("img"), a.attr("src", i[n])); break; case "progress": var o = t.settings.delay - t.settings.delay * (i[n] / 100); this.$ele.data("notify-delay", o), this.$ele.find('[data-notify="progressbar"] > div').attr("aria-valuenow", i[n]).css("width", i[n] + "%"); break; case "url": this.$ele.find('[data-notify="url"]').attr("href", i[n]); break; case "target": this.$ele.find('[data-notify="url"]').attr("target", i[n]); break; default: this.$ele.find('[data-notify="' + n + '"]').html(i[n]) }var r = this.$ele.outerHeight() + parseInt(t.settings.spacing) + parseInt(t.settings.offset.y); t.reposition(r) }, close: function () { t.close() } } }, buildNotify: function () { var s = this.settings.content; this.$ele = t(String.format(this.settings.template, this.settings.type, s.title, s.message, s.url, s.target)), this.$ele.attr("data-notify-position", this.settings.placement.from + "-" + this.settings.placement.align), this.settings.allow_dismiss || this.$ele.find('[data-notify="dismiss"]').css("display", "none"), (this.settings.delay > 0 || this.settings.showProgressbar) && this.settings.showProgressbar || this.$ele.find('[data-notify="progressbar"]').remove() }, setIcon: function () { "class" === this.settings.icon_type.toLowerCase() ? this.$ele.find('[data-notify="icon"]').addClass(this.settings.content.icon) : this.$ele.find('[data-notify="icon"]').is("img") ? this.$ele.find('[data-notify="icon"]').attr("src", this.settings.content.icon) : this.$ele.find('[data-notify="icon"]').append('<img src="' + this.settings.content.icon + '" alt="Notify Icon" />') }, styleDismiss: function () { this.$ele.find('[data-notify="dismiss"]').css({ position: "absolute", right: "10px", top: "5px", zIndex: this.settings.z_index + 2 }) }, styleURL: function () { this.$ele.find('[data-notify="url"]').css({ backgroundImage: "url(data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7)", height: "100%", left: 0, position: "absolute", top: 0, width: "100%", zIndex: this.settings.z_index + 1 }) }, placement: function () { var s = this, e = this.settings.offset.y, i = { display: "inline-block", margin: "0px auto", position: this.settings.position ? this.settings.position : "body" === this.settings.element ? "fixed" : "absolute", transition: "all .5s ease-in-out", zIndex: this.settings.z_index }, n = !1, a = this.settings; switch (t('[data-notify-position="' + this.settings.placement.from + "-" + this.settings.placement.align + '"]:not([data-closing="true"])').each(function () { e = Math.max(e, parseInt(t(this).css(a.placement.from)) + parseInt(t(this).outerHeight()) + parseInt(a.spacing)) }), this.settings.newest_on_top === !0 && (e = this.settings.offset.y), i[this.settings.placement.from] = e + "px", this.settings.placement.align) { case "left": case "right": i[this.settings.placement.align] = this.settings.offset.x + "px"; break; case "center": i.left = 0, i.right = 0 }this.$ele.css(i).addClass(this.settings.animate.enter), t.each(["webkit-", "moz-", "o-", "ms-", ""], function (t, e) { s.$ele[0].style[e + "AnimationIterationCount"] = 1 }), t(this.settings.element).append(this.$ele), this.settings.newest_on_top === !0 && (e = parseInt(e) + parseInt(this.settings.spacing) + this.$ele.outerHeight(), this.reposition(e)), t.isFunction(s.settings.onShow) && s.settings.onShow.call(this.$ele), this.$ele.one(this.animations.start, function () { n = !0 }).one(this.animations.end, function () { t.isFunction(s.settings.onShown) && s.settings.onShown.call(this) }), setTimeout(function () { n || t.isFunction(s.settings.onShown) && s.settings.onShown.call(this) }, 600) }, bind: function () { var s = this; if (this.$ele.find('[data-notify="dismiss"]').on("click", function () { s.close() }), this.$ele.mouseover(function () { t(this).data("data-hover", "true") }).mouseout(function () { t(this).data("data-hover", "false") }), this.$ele.data("data-hover", "false"), this.settings.delay > 0) { s.$ele.data("notify-delay", s.settings.delay); var e = setInterval(function () { var t = parseInt(s.$ele.data("notify-delay")) - s.settings.timer; if ("false" === s.$ele.data("data-hover") && "pause" === s.settings.mouse_over || "pause" != s.settings.mouse_over) { var i = (s.settings.delay - t) / s.settings.delay * 100; s.$ele.data("notify-delay", t), s.$ele.find('[data-notify="progressbar"] > div').attr("aria-valuenow", i).css("width", i + "%") } t > -s.settings.timer || (clearInterval(e), s.close()) }, s.settings.timer) } }, close: function () { var s = this, e = parseInt(this.$ele.css(this.settings.placement.from)), i = !1; this.$ele.data("closing", "true").addClass(this.settings.animate.exit), s.reposition(e), t.isFunction(s.settings.onClose) && s.settings.onClose.call(this.$ele), this.$ele.one(this.animations.start, function () { i = !0 }).one(this.animations.end, function () { t(this).remove(), t.isFunction(s.settings.onClosed) && s.settings.onClosed.call(this) }), setTimeout(function () { i || (s.$ele.remove(), s.settings.onClosed && s.settings.onClosed(s.$ele)) }, 600) }, reposition: function (s) { var e = this, i = '[data-notify-position="' + this.settings.placement.from + "-" + this.settings.placement.align + '"]:not([data-closing="true"])', n = this.$ele.nextAll(i); this.settings.newest_on_top === !0 && (n = this.$ele.prevAll(i)), n.each(function () { t(this).css(e.settings.placement.from, s), s = parseInt(s) + parseInt(e.settings.spacing) + t(this).outerHeight() }) } }), t.notify = function (t, s) { var i = new e(this, t, s); return i.notify }, t.notifyDefaults = function (s) { return i = t.extend(!0, {}, i, s) }, t.notifyClose = function (s) { void 0 === s || "all" === s ? t("[data-notify]").find('[data-notify="dismiss"]').trigger("click") : t('[data-notify-position="' + s + '"]').find('[data-notify="dismiss"]').trigger("click") } });
            //cookie
            !function (e) { var n; if ("function" == typeof define && define.amd && (define(e), n = !0), "object" == typeof exports && (module.exports = e(), n = !0), !n) { var t = window.Cookies, o = window.Cookies = e(); o.noConflict = function () { return window.Cookies = t, o } } }(function () { function e() { for (var e = 0, n = {}; e < arguments.length; e++) { var t = arguments[e]; for (var o in t) n[o] = t[o] } return n } function n(e) { return e.replace(/(%[0-9A-Z]{2})+/g, decodeURIComponent) } return function t(o) { function r() { } function i(n, t, i) { if ("undefined" != typeof document) { "number" == typeof (i = e({ path: "/" }, r.defaults, i)).expires && (i.expires = new Date(1 * new Date + 864e5 * i.expires)), i.expires = i.expires ? i.expires.toUTCString() : ""; try { var c = JSON.stringify(t); /^[\{\[]/.test(c) && (t = c) } catch (e) { } t = o.write ? o.write(t, n) : encodeURIComponent(String(t)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent), n = encodeURIComponent(String(n)).replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent).replace(/[\(\)]/g, escape); var f = ""; for (var u in i) i[u] && (f += "; " + u, !0 !== i[u] && (f += "=" + i[u].split(";")[0])); return document.cookie = n + "=" + t + f } } function c(e, t) { if ("undefined" != typeof document) { for (var r = {}, i = document.cookie ? document.cookie.split("; ") : [], c = 0; c < i.length; c++) { var f = i[c].split("="), u = f.slice(1).join("="); t || '"' !== u.charAt(0) || (u = u.slice(1, -1)); try { var a = n(f[0]); if (u = (o.read || o)(u, a) || n(u), t) try { u = JSON.parse(u) } catch (e) { } if (r[a] = u, e === a) break } catch (e) { } } return e ? r[e] : r } } return r.set = i, r.get = function (e) { return c(e, !1) }, r.getJSON = function (e) { return c(e, !0) }, r.remove = function (n, t) { i(n, "", e(t, { expires: -1 })) }, r.defaults = {}, r.withConverter = t, r }(function () { }) });
    
        </script> -->
<!-- <link rel="preload" as='style' type="text/css"
            href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.scss.css?1686650273952"> -->
<!-- <link rel="preload" as='style' type="text/css"
            href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/bootstrap-4-3-min.css?1686650273952"> -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- <link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.scss.css?1686650273952" rel="stylesheet"
            type="text/css" media="all" /> -->

<!-- <link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.scss.css?1686650273952" rel="stylesheet"
            type="text/css" media="all" /> -->

<!-- <link rel="preload" as='style' type="text/css"
            href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/index.scss.css?1686650273952"> -->
<link href="css/trangchu.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/q.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/s.css" rel="stylesheet" type="text/css" media="all" />

<!-- <link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/quickviews_popup_cart.scss.css?1686650273952"
            rel="stylesheet" type="text/css" media="all" /> -->

<!-- <script>
            var Bizweb = Bizweb || {};
            Bizweb.store = 'dola-restaurant.mysapo.net';
            Bizweb.id = 469097;
            Bizweb.theme = { "id": 882205, "name": "Dola Restaurant", "role": "main" };
            Bizweb.template = 'index';
            if (!Bizweb.fbEventId) Bizweb.fbEventId = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
                var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });		
        </script>
        <script>
            (function () {
                function asyncLoad() {
                    var urls = [];
                    for (var i = 0; i < urls.length; i++) {
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = urls[i];
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                };
                window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad, false);
            })();
        </script> -->


<!-- <script>
            window.BizwebAnalytics = window.BizwebAnalytics || {};
            window.BizwebAnalytics.meta = window.BizwebAnalytics.meta || {};
            window.BizwebAnalytics.meta.currency = 'VND';
            window.BizwebAnalytics.tracking_url = '/s';
    
            var meta = {};
    
    
            for (var attr in meta) {
                window.BizwebAnalytics.meta[attr] = meta[attr];
            }
        </script> -->


<script src="/dist/js/stats.min.js?v=8177d93"></script>















<!-- <script>
            $(document).ready(function ($) {
                awe_lazyloadImage();
            });
            function awe_lazyloadImage() {
                var ll = new LazyLoad({
                    elements_selector: ".lazyload",
                    load_delay: 100,
                    threshold: 0
                });
            } window.awe_lazyloadImage = awe_lazyloadImage;
        </script> -->
</head>

<body>
	<div class="opacity_menu"></div>
	<header class="header header-index">
		<div class="container">
			<div class="bottom-header">
				<div class="row">
					<div class="col-xl-2 col-lg-2">
						<div class="logo">
							<a href="/" title="Logo"> <img width="172" height="50"
								src="images/logo.png" alt="Dola Restaurant">
							</a>
						</div>
					</div>
					<div class="col-xl-7 col-lg-7 header-menu">
						<nav class="header-nav">
							<ul class="item_big">
								<li class="nav-item  "><a class="a-img"
									href="\html\trangchu\trangchu.html" title="Trang chủ">
										Trang chủ </a></li>


								<li class="nav-item "><a class="a-img"
									href="\html\gioithieu\gioithieu.html" title="Giới thiệu">
										Giới thiệu </a></li>
								<li data-title="Menu" data-link="#"
									data-img="images/biamenu.jpg" class="nav-item    has-mega ">
									<a class="a-img caret-down" href="\html\menu\menu.html"
									title="Menu"> Menu </a> <!-- DẤU CỘNG MENU KHI --> <i
									class="fa fa1 fa-caret-down"></i>


									<div class="mega-content d-lg-block d-none">
										<div class="row">
											<div class="col-lg-9">
												<ul class="level0">


													<li class="level1 parent item fix-navs"
														data-title="Khai vị" data-link="khaivi.html"
														data-img="images/khaivi.jpg"><a class="hmega"
														href="\html\menu\khaivi.html" title="Khai vị">Khai vị</a>
														<ul class="level1">

															<li class="level2"><a title="Salad">Salad</a></li>

															<li class="level2"><a title="Gỏi">Gỏi</a></li>

														</ul></li>



													<li class="level1 parent item fix-navs"
														data-title="Món chính" data-link="monchinh.html"
														data-img="images/baroinuongriengme.jpg"><a
														class="hmega" href="monchinh.html" title="Món chính">Món
															chính</a>
														<ul class="level1">

															<li class="level2"><a title="Món bò">Món bò</a></li>

															<li class="level2"><a title="Món gà">Món gà</a></li>

															<li class="level2"><a title="Món heo">Món heo</a></li>

															<li class="level2"><a title="Món cá">Món cá</a></li>

														</ul></li>



													<li class="level1 parent item fix-navs"
														data-title="Canh - Tiềm - Sup"
														data-link="canhtiemsup.html"
														data-img="images/canhmuophuongnhoi.webp"><a
														class="hmega" href="canhtiemsup.html"
														title="Canh - Tiềm - Sup">Canh - Tiềm - Sup</a>
														<ul class="level1">

															<li class="level2"><a title="Canh">Canh</a></li>

															<li class="level2"><a title="Tiềm">Tiềm</a></li>

															<li class="level2"><a title="Súp">Súp</a></li>

														</ul></li>



													<li class="level1 parent item fix-navs"
														data-title="Cơm - Mì - Cháo" data-link="commichao.html"
														data-img="images/comsuon.webp"><a class="hmega"
														href="commichao.html" title="Cơm - Mì - Cháo">Cơm - Mì
															- Cháo</a>
														<ul class="level1">

															<li class="level2"><a title="Cơm">Cơm</a></li>

															<li class="level2"><a title="Mì">Mì</a></li>

															<li class="level2"><a title="Cháo">Cháo</a></li>

														</ul></li>



													<li class="level1 parent item fix-navs"
														data-title="Bánh và tráng miệng"
														data-link="banhvatrangmieng.html"
														data-img="images/banhchuoihap.webp"><a class="hmega"
														href="banhvatrangmieng.html" title="Bánh và tráng miệng">Bánh
															và tráng miệng</a>
														<ul class="level1">

															<li class="level2"><a title="Bánh">Bánh</a></li>

															<li class="level2"><a title="Tráng miệng">Tráng
																	miệng</a></li>

														</ul></li>



													<li class="level1 parent item fix-navs"
														data-title="Đồ uống" data-link="douong.html"
														data-img="images/trasuaolong.webp"><a class="hmega"
														href="douong.html" title="Đồ uống">Đồ uống</a>
														<ul class="level1">

															<li class="level2"><a title="Cà phê">Cà phê</a></li>

															<li class="level2"><a title="Trà sữa">Trà sữa</a></li>

														</ul></li>


												</ul>
											</div>
											<div class="col-lg-3">
												<a class="url-mega" href="#" title="Menu"> <img
													width="400" height="500" class="lazyload image-mega"
													alt="Menu" />
												</a>
											</div>
										</div>
									</div> <!-- trong dấu cộng -->
									<ul class="item_small d-lg-none d-block">
										<li><a class="caret-down" href="\html\menu\khaivi.html"
											title="Khai vị"> Khai vị </a> <!-- dấu cộng khai vị --> <i
											class="fa fa-caret-down"></i>
											<ul>
												<li><a title="Salad" class="a3">Salad</a></li>
												<li><a title="Gỏi" class="a3">Gỏi</a></li>
											</ul></li>
										<li><a class="caret-down" href="\html\menu\monchinh.html"
											title="Món chính"> Món chính </a> <i class="fa fa-caret-down"></i>
											<ul>
												<li><a title="Món bò" class="a3">Món bò</a></li>
												<li><a title="Món gà" class="a3">Món gà</a></li>
												<li><a title="Món heo" class="a3">Món heo</a></li>
												<li><a title="Món cá" class="a3">Món cá</a></li>
											</ul></li>
										<li><a class="caret-down"
											href="\html\menu\canhtiemsup.html" title="Canh - Tiềm - Sup">
												Canh - Tiềm - Sup </a> <i class="fa fa-caret-down"></i>
											<ul>
												<li><a title="Canh" class="a3">Canh</a></li>
												<li><a title="Tiềm" class="a3">Tiềm</a></li>
												<li><a title="Súp" class="a3">Súp</a></li>
											</ul></li>
										<li><a class="caret-down"
											href="\html\menu\commichao.html" title="Cơm - Mì - Cháo">
												Cơm - Mì - Cháo </a> <i class="fa fa-caret-down"></i>
											<ul>
												<li><a title="Cơm" class="a3">Cơm</a></li>
												<li><a title="Mì" class="a3">Mì</a></li>
												<li><a title="Cháo" class="a3">Cháo</a></li>
											</ul></li>
										<li><a class="caret-down"
											href="\html\menu\banhvatrangmieng.html"
											title="Bánh và tráng miệng"> Bánh và tráng miệng </a> <i
											class="fa fa-caret-down"></i>
											<ul>
												<li><a title="Bánh" class="a3">Bánh</a></li>
												<li><a title="Tráng miệng" class="a3">Tráng miệng</a></li>
											</ul></li>
										<li><a class="caret-down" href="\html\menu\douong.html"
											title="Đồ uống"> Đồ uống </a> <i class="fa fa-caret-down"></i>
											<ul>
												<li><a title="Cà phê" class="a3">Cà phê</a></li>
												<li><a title="Trà sữa" class="a3">Trà sữa</a></li>
											</ul></li>
									</ul>
								</li>



								<li class="nav-item "><a class="a-img"
									href="\html\monngonmoingay\monngonmoingay.html"
									title="Món ngon mỗi ngày"> Món ngon mỗi ngày </a></li>

								<li class="nav-item "><a class="a-img"
									href="\html\lienhe\lienhe.html" title="Liên hệ"> Liên hệ </a></li>
								<li class="account d-lg-none d-block">
									<ul>

										<c:choose>
											<c:when test="${user == null}">
												<li class="ng-scope"><a rel="nofollow"
													href="\html\account\login.html" title="Đăng nhập">Đăng
														nhập</a></li>
												<li class="ng-scope"><a rel="nofollow"
													href="\html\account\register.html" title="Đăng ký">Đăng
														ký</a></li>
											</c:when>
											<c:when test="${user != null}">
												<li class="ng-scope"><a rel="nofollow"
													href="\html\account\login.html" title="Tài khoản">Tài
														khoản</a></li>
												<li class="ng-scope"><a rel="nofollow"
													href="\html\account\register.html" title="Đăng xuất">Đăng
														xuất</a></li>
											</c:when>
										</c:choose>



										<li><a class="js-wishlist-link"
											href="\html\account\monanyeuthich.html"
											aria-label="Món ăn Yêu thích" title="Món ăn Yêu thích">Món
												ăn yêu thích</a></li>

									</ul>
								</li>
							</ul>
						</nav>
					</div>
					<div class="col-xl-3 col-lg-3 header-control">
						<!-- 3 sọc menu -->
						<div class="menu-bar d-lg-none d-block">
							<svg aria-hidden="true" focusable="false" data-prefix="far"
								data-icon="bars" role="img" xmlns="http://www.w3.org/2000/svg"
								viewBox="0 0 448 512" class="svg-inline--fa fa-bars fa-w-14">
                                <path style="fill: #fff;"
									d="M436 124H12c-6.627 0-12-5.373-12-12V80c0-6.627 5.373-12 12-12h424c6.627 0 12 5.373 12 12v32c0 6.627-5.373 12-12 12zm0 160H12c-6.627 0-12-5.373-12-12v-32c0-6.627 5.373-12 12-12h424c6.627 0 12 5.373 12 12v32c0 6.627-5.373 12-12 12zm0 160H12c-6.627 0-12-5.373-12-12v-32c0-6.627 5.373-12 12-12h424c6.627 0 12 5.373 12 12v32c0 6.627-5.373 12-12 12z"
									class=""></path>
                            </svg>
						</div>
						<div class="search-header">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                                <path
									d="M14.1404 13.4673L19.852 19.1789C20.3008 19.6276 19.6276 20.3008 19.1789 19.852L13.4673 14.1404C12.0381 15.4114 10.1552 16.1835 8.09176 16.1835C3.6225 16.1835 0 12.5613 0 8.09176C0 3.6225 3.62219 0 8.09176 0C12.561 0 16.1835 3.62219 16.1835 8.09176C16.1835 10.1551 15.4115 12.038 14.1404 13.4673ZM0.951972 8.09176C0.951972 12.0356 4.14824 15.2316 8.09176 15.2316C12.0356 15.2316 15.2316 12.0353 15.2316 8.09176C15.2316 4.14797 12.0353 0.951972 8.09176 0.951972C4.14797 0.951972 0.951972 4.14824 0.951972 8.09176Z"
									fill="#222222"></path>
                            </svg>
							<div class="header-action d-lg-block d-none">
								<div class="header-content">
									<p class="title">Tìm kiếm món ăn của bạn</p>
									<div class="search-smart">
										<form action="/search" method="get"
											class="header-search-form input-group search-bar"
											role="search">
											<input type="text" name="query" required
												class="input-group-field auto-search search-auto form-control"
												placeholder="Nhập tên món ăn..." autocomplete="off">
											<input type="hidden" name="type" value="product">
											<button type="submit" class="btn icon-fallback-text"
												aria-label="Tìm kiếm" title="Tìm kiếm">
												<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
													xmlns="http://www.w3.org/2000/svg">
                                                    <path
														d="M14.1404 13.4673L19.852 19.1789C20.3008 19.6276 19.6276 20.3008 19.1789 19.852L13.4673 14.1404C12.0381 15.4114 10.1552 16.1835 8.09176 16.1835C3.6225 16.1835 0 12.5613 0 8.09176C0 3.6225 3.62219 0 8.09176 0C12.561 0 16.1835 3.62219 16.1835 8.09176C16.1835 10.1551 15.4115 12.038 14.1404 13.4673ZM0.951972 8.09176C0.951972 12.0356 4.14824 15.2316 8.09176 15.2316C12.0356 15.2316 15.2316 12.0353 15.2316 8.09176C15.2316 4.14797 12.0353 0.951972 8.09176 0.951972C4.14797 0.951972 0.951972 4.14824 0.951972 8.09176Z"
														fill="#222222"></path>
                                                </svg>
											</button>

											<div class="search-suggest">

												<div class="title">Kết quả tìm kiếm:</div>
												<div class="list-search"></div>

											</div>

										</form>
									</div>
								</div>
							</div>

						</div>
						<div class="block-cart">
							<a href="cart.html" class="header-cart" aria-label="Xem giỏ hàng"
								title="Giỏ hàng"> <svg viewBox="0 0 27 26" fill="none"
									xmlns="http://www.w3.org/2000/svg">
                                    <path
										d="M8.47253 20.4219C6.94111 20.4219 5.69971 21.6707 5.69971 23.211C5.69971 24.7513 6.94117 26 8.47253 26C10.004 26 11.2454 24.7513 11.2454 23.211C11.2454 21.6707 10.004 20.4219 8.47253 20.4219ZM8.47253 24.7605C7.62176 24.7605 6.93209 24.0668 6.93209 23.211C6.93209 22.3553 7.62176 21.6616 8.47253 21.6616C9.32331 21.6616 10.013 22.3553 10.013 23.211C10.013 24.0668 9.32331 24.7605 8.47253 24.7605Z"
										fill="white"></path>
                                    <path
										d="M20.1801 20.4219C18.6486 20.4219 17.4072 21.6707 17.4072 23.211C17.4072 24.7513 18.6487 26 20.1801 26C21.7114 26 22.9529 24.7513 22.9529 23.211C22.9529 21.6707 21.7115 20.4219 20.1801 20.4219ZM20.1801 24.7605C19.3293 24.7605 18.6396 24.0668 18.6396 23.211C18.6396 22.3553 19.3293 21.6616 20.1801 21.6616C21.0308 21.6616 21.7205 22.3553 21.7205 23.211C21.7206 24.0668 21.0308 24.7605 20.1801 24.7605Z"
										fill="white"></path>
                                    <path
										d="M26.4343 4.15262C26.306 4.01162 26.1304 3.92336 25.9413 3.90468L5.88457 3.62578L5.33001 1.92135C4.93933 0.781956 3.87856 0.0127528 2.6804 0H0.616185C0.275865 0 0 0.277478 0 0.619787C0 0.962097 0.275865 1.23957 0.616185 1.23957H2.6804C3.35036 1.25446 3.94031 1.68717 4.15926 2.32422L8.07203 14.1931L7.76397 14.9059C7.42035 15.7971 7.52354 16.8003 8.04125 17.6019C8.554 18.3893 9.41662 18.8752 10.352 18.9035H22.3368C22.6771 18.9035 22.9529 18.626 22.9529 18.2837C22.9529 17.9414 22.6771 17.6639 22.3368 17.6639H10.3519C9.8237 17.6506 9.33748 17.3711 9.0579 16.9202C8.78145 16.4747 8.72466 15.9259 8.90387 15.4326L9.15037 14.8748L22.121 13.5113C23.5458 13.3535 24.7178 12.3112 25.0479 10.9082L26.5268 4.67934C26.5934 4.49997 26.5581 4.29824 26.4343 4.15262ZM23.8463 10.6293C23.6463 11.5325 22.884 12.1986 21.967 12.2718L9.15037 13.6043L6.2851 4.86535L25.1711 5.14425L23.8463 10.6293Z"
										fill="white"></path>
                                </svg> <span class="count_item_pr">0</span>
							</a>
							<!-- <div class="top-cart-content">
                                    <div class="CartHeaderContainer">
                                    </div>
                                </div> -->
						</div>
						<div class="account-header">
							<svg viewBox="0 0 512 512">
                                <path style="fill: #fff;"
									d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148    C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962    c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216    h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40    c59.551,0,108,48.448,108,108S315.551,256,256,256z"
									data-original="#222222" class="active-path" fill="#222222"></path>
                            </svg>
							<ul>

								<li class="ng-scope"><a rel="nofollow"
									href="\html\account\login.html" title="Đăng nhập">Đăng nhập</a></li>
								<li class="ng-scope"><a rel="nofollow"
									href="\html\account\register.html" title="Đăng ký">Đăng ký</a></li>
								<li><a class="js-wishlist-link" href="monanyeuthich.html"
									aria-label="Món ăn Yêu thích" title="Món ăn Yêu thích">Món
										ăn yêu thích</a></li>
							</ul>

						</div>

						<a class="button-header" href="\html\datban.html" title="đặt bàn">Đặt
							bàn</a>

					</div>
					<div class="col-12 header-control  d-lg-none d-block">
						<div class="search-smart search-smart-mb" style="display: none">
							<form action="/search" method="get"
								class="header-search-form input-group search-bar" role="search">
								<input type="text" name="query" required
									class="input-group-field auto-search search-auto form-control"
									placeholder="Nhập tên món ăn..." autocomplete="off"> <input
									type="hidden" name="type" value="product">
								<button type="submit" class="btn icon-fallback-text"
									aria-label="Tìm kiếm" title="Tìm kiếm">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                                        <path
											d="M14.1404 13.4673L19.852 19.1789C20.3008 19.6276 19.6276 20.3008 19.1789 19.852L13.4673 14.1404C12.0381 15.4114 10.1552 16.1835 8.09176 16.1835C3.6225 16.1835 0 12.5613 0 8.09176C0 3.6225 3.62219 0 8.09176 0C12.561 0 16.1835 3.62219 16.1835 8.09176C16.1835 10.1551 15.4115 12.038 14.1404 13.4673ZM0.951972 8.09176C0.951972 12.0356 4.14824 15.2316 8.09176 15.2316C12.0356 15.2316 15.2316 12.0353 15.2316 8.09176C15.2316 4.14797 12.0353 0.951972 8.09176 0.951972C4.14797 0.951972 0.951972 4.14824 0.951972 8.09176Z"
											fill="#222222"></path>
                                    </svg>
								</button>

								<div class="search-suggest">

									<div class="title">Kết quả tìm kiếm:</div>
									<div class="list-search"></div>

								</div>

							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- <script>
        $(document).ready(function () {
            var margin_left = 0;
            $('#prev').on('click', function (e) {
                e.preventDefault();
                animateMargin(190);
            });
            $('#next').on('click', function (e) {
                e.preventDefault();
                animateMargin(-190);
            });
            const animateMargin = (amount) => {
                margin_left = Math.min(0, Math.max(getMaxMargin(), margin_left + amount));
                $('ul.item_big').animate({
                    'margin-left': margin_left
                }, 300);
            }
                ;
            const getMaxMargin = () => $('ul.item_big').parent().width() - $('ul.item_big')[0].scrollWidth;
        })
    </script> -->
	<div class="bodywrap">

		<section class="section">
			<div class="container">
				<div class="wrap_background_aside page_login">
					<div class="row">
						<div
							class="col-lg-4 col-md-6 col-sm-12 col-xl-4 offset-0 offset-xl-4 offset-lg-4 offset-md-3 offset-xl-3 col-12">
							<div class="row">
								<div class="page-login pagecustome clearfix">
									<div class="wpx">
										<ul class="auth-block__menu-list">
											<li class="active"><a href="#" title="Đăng nhập">Đăng
													nhập</a></li>
											<li><a href="\html\account\register.html"
												title="Đăng ký">Đăng ký</a></li>
										</ul>
										<h1 class="title_heads a-center">
											<span>Đăng nhập</span>
										</h1>
										<c:if test="${er_Login == true}">
											<p class="alert"
												style="background: #ff0000; color: #fff; padding: 5px 10px; border-radius: 6px; margin-top: 14px;">Thông
												tin đăng nhập không chính xác</p>
										</c:if>
										<div id="login" class="section">
											<form action="dangnhap" method="post" id="customer_login"
												accept-charset="UTF-8">
												<input name="customer" type="hidden" value="customer_login" />
												<input name="utf8" type="hidden" value="true" /> <span
													class="form-signup" style="color: red;"></span>
												<div class="form-signup clearfix">
													<fieldset class="form-group">
														<input type="text" class="form-control form-control-lg"
															value="" name="username" id="customer_email"
															placeholder="Tên đăng nhập" Required>
													</fieldset>
													<fieldset class="form-group">
														<input type="password"
															class="form-control form-control-lg" value=""
															name="password" id="customer_password"
															placeholder="Mật khẩu" Required>
													</fieldset>
													<div class="pull-xs-left">
														<input class="btn btn-style btn_50" type="submit"
															value="Đăng nhập" /> <span class="block a-center quenmk">Quên
															mật khẩu</span>
													</div>
												</div>
											</form>
										</div>
										<div class="h_recover" style="display: none;">
											<div id="recover-password" class="form-signup page-login">
												<form method="post" action="/account/recover"
													id="recover_customer_password" accept-charset="UTF-8">
													<input name="FormType" type="hidden"
														value="recover_customer_password" /> <input name="utf8"
														type="hidden" value="true" />
													<div class="form-signup" style="color: red;"></div>
													<div class="form-signup clearfix">
														<fieldset class="form-group">
															<input type="email"
																pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
																class="form-control form-control-lg" value=""
																name="Email" id="recover-email" placeholder="Email"
																Required>
														</fieldset>
													</div>
													<div class="action_bottom">
														<input class="btn btn-style btn_50"
															style="margin-top: 0px;" type="submit"
															value="Lấy lại mật khẩu" />
													</div>
												</form>
											</div>
										</div>
										<!-- <div class="block social-login--facebooks">
                                            <p class="a-center">Hoặc đăng nhập bằng
                                            </p>
                                            <script>
                                                function loginFacebook() {
                                                    var a = {
                                                        client_id: "947410958642584",
                                                        redirect_uri: "https://store.mysapo.net/account/facebook_account_callback",
                                                        state: JSON.stringify({
                                                            redirect_url: window.location.href
                                                        }),
                                                        scope: "email",
                                                        response_type: "code"
                                                    }
                                                        , b = "https://www.facebook.com/v3.2/dialog/oauth" + encodeURIParams(a, !0);
                                                    window.location.href = b
                                                }
                                                function loginGoogle() {
                                                    var a = {
                                                        client_id: "997675985899-pu3vhvc2rngfcuqgh5ddgt7mpibgrasr.apps.googleusercontent.com",
                                                        redirect_uri: "https://store.mysapo.net/account/google_account_callback",
                                                        scope: "email profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile",
                                                        access_type: "online",
                                                        state: JSON.stringify({
                                                            redirect_url: window.location.href
                                                        }),
                                                        response_type: "code"
                                                    }
                                                        , b = "https://accounts.google.com/o/oauth2/v2/auth" + encodeURIParams(a, !0);
                                                    window.location.href = b
                                                }
                                                function encodeURIParams(a, b) {
                                                    var c = [];
                                                    for (var d in a)
                                                        if (a.hasOwnProperty(d)) {
                                                            var e = a[d];
                                                            null != e && c.push(encodeURIComponent(d) + "=" + encodeURIComponent(e))
                                                        }
                                                    return 0 == c.length ? "" : (b ? "?" : "") + c.join("&")
                                                }
                                            </script>
                                            <a href="javascript:void(0)" class="social-login--facebook"
                                                onclick="loginFacebook()">
                                                <img width="129px" height="37px" alt="facebook-login-button"
                                                    src="//bizweb.dktcdn.net/assets/admin/images/login/fb-btn.svg">
                                            </a>
                                            <a href="javascript:void(0)" class="social-login--google"
                                                onclick="loginGoogle()">
                                                <img width="129px" height="37px" alt="google-login-button"
                                                    src="//bizweb.dktcdn.net/assets/admin/images/login/gp-btn.svg">
                                            </a> 
                                        </div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- <script type="text/javascript">
            function showRecoverPasswordForm() {
                document.getElementById('recover-password').style.display = 'block';
                document.getElementById('login').style.display = 'none';
            }

            function hideRecoverPasswordForm() {
                document.getElementById('recover-password').style.display = 'none';
                document.getElementById('login').style.display = 'block';
            }

            $('.quenmk').on('click', function () {
                $('#login').toggleClass('hidden');
                $('.h_recover').slideToggle();
            });
        </script> -->
		<footer class="footer">
			<div class="mid-footer">
				<div class="container">
					<div class="row">
						<div
							class="col-12 col-md-12 col-lg-5 link-list col-footer ft-info">
							<div class="logo">
								<a href="/" title="Logo"> <img width="172" height="50"
									src="images/logo.png" alt="Dola Restaurant">
								</a>
							</div>

							<div class="ft-description">Nhà hàng chúng tôi luôn luôn
								đặt khách hàng lên hàng đầu, tận tâm phục vụ, mang lại cho khách
								hàng những trãi nghiệm tuyệt với nhất. Các món ăn với công thức
								độc quyền sẽ mang lại hương vị mới mẻ cho thực khách. Dola
								Restaurant xin chân thành cảm ơn.</div>
							<div class="group-address">
								<div class="title">Cửa hàng chính</div>
								<ul>
									<li><b>Địa chỉ: </b><span> Khu Phố 6, phường Linh
											Trung, TP.Thủ Đức, TP.HCM </span></li>
									<li><b>Điện thoại: </b><a title="0898388564"
										href="tel:0898388564">0898388564</a></li>
									<li><b>Email: </b><a title="phuonghuynh131415@gmail.com"
										href="mailto:phuonghuynh131415@gmail.com">phuonghuynh131415@gmail.com</a>
									</li>
								</ul>
							</div>


						</div>
						<div class="col-6 col-md-4 col-lg-2 link-list col-footer">
							<h4 class="title-menu">
								Hướng dẫn
								<!-- <span class="Collapsible__Plus"></span> -->
							</h4>
							<ul class="list-menu hidden-mobile">

								<li><a href="\html\huongdan\huongdanmuahang.html"
									title="Hướng dẫn mua hàng">Hướng dẫn mua hàng</a></li>

								<li><a href="\html\huongdan\huongdanthanhtoan.html"
									title="Hướng dẫn thanh toán">Hướng dẫn thanh toán</a></li>

								<li><a href="\html\account\register.html"
									title="Đăng ký thành viên">Đăng ký thành viên</a></li>

								<li><a href="\html\lienhe\lienhe.html"
									title="Hỗ trợ khách hàng">Hỗ trợ khách hàng</a></li>

							</ul>
						</div>
						<div class="col-6 col-md-4 col-lg-2 link-list col-footer">
							<h4 class="title-menu">
								Chính sách <span class="Collapsible__Plus"></span>
							</h4>
							<ul class="list-menu hidden-mobile">

								<li><a href="\html\chinhsach\chinhsachthanhvien.html"
									title="Chính sách thành viên">Chính sách thành viên</a></li>

								<li><a href="\html\chinhsach\chinhsachthanhtoan.html"
									title="Chính sách thanh toán">Chính sách thanh toán</a></li>

								<li><a href="\html\chinhsach\baomatthongtincanhan.html"
									title="Bảo mật thông tin cá nhân">Bảo mật thông tin cá nhân</a></li>

								<li><a href="\html\chinhsach\quatangtrian.html"
									title="Quà tặng tri ân">Quà tặng tri ân</a></li>

							</ul>
						</div>
						<div class="col-12 col-md-4 col-lg-3 col-footer">

							<h4 class="title-menu">Hình thức thanh toán</h4>
							<ul class="thanhtoan">

								<li><img width="57" height="35" alt="Payment 1"
									class="lazyload" src="images/tienmat.webp"></li>
								<li><img width="57" height="35" alt="Payment 2"
									class="lazyload" src="images/chuyenkhoan.webp"></li>
								<li><img width="57" height="35" alt="Payment 3"
									class="lazyload" src="images/visa.webp"></li>

							</ul>


						</div>
					</div>
				</div>
			</div>
			<div id="copyright" class="copyright">
				<div class="container">
					<span class="copy-right">Bản quyền thuộc về <b>Dola
							Restaurant</b>.
					</span>
				</div>
			</div>
		</footer>


	</div>
	<!-- <script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/quickview.js?1686650273952"
        type="text/javascript"></script> -->
	<!-- <link rel="preload" as="script" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.js?1686650273952" /> -->
	<script
		src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.js?1686650273952"
		type="text/javascript"></script>
	<!-- <script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/index.js?1686650273952"
        type="text/javascript"></script> -->


</body>

</html>