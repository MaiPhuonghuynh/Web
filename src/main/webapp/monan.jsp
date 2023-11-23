<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

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
<!-- <link rel="preload" as="script" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952" />
<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952"
    type="text/javascript"></script> -->

<link rel="preload" as="script"
	href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952" />
<script
	src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952"
	type="text/javascript"></script>

<!-- <link rel="preload" as="script" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952" />
<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952"
    type="text/javascript"></script>
<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/waypoints.js?1686650273952"
    type="text/javascript"></script>
<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/counterup.js?1686650273952"
    type="text/javascript"></script> -->
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
<!-- <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- <link href="css/index.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- <link href="css/q.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- <link href="css/s.css" rel="stylesheet" type="text/css" media="all" />  -->

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


<!-- <script src="/dist/js/stats.min.js?v=8177d93"></script> -->















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
								<li class="nav-item active "><a class="a-img" href=""
									title="Trang chủ"> Trang chủ </a></li>


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
														data-title="Món chính"
														data-link="\html\menu\monchinh.html"
														data-img="images/baroinuongriengme.jpg"><a
														class="hmega" href="\html\menu\monchinh.html"
														title="Món chính">Món chính</a>
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

										<li class="ng-scope"><a rel="nofollow"
											href="\html\account\login.html" title="Đăng nhập">Đăng
												nhập</a></li>
										<li class="ng-scope"><a rel="nofollow"
											href="\html\account\register.html" title="Đăng ký">Đăng
												ký</a></li>


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

	<div class="bodywrap">

		<!-- <section class="product layout-product" itemscope itemtype="https://schema.org/Product">
            <meta itemprop="url" content="//dola-restaurant.mysapo.net/salad-rau-mua-sot-cam">
            <meta itemprop="name" content="Salad rau mùa sốt cam">
            <meta itemprop="image"
                content="http://bizweb.dktcdn.net/thumb/grande/100/469/097/products/untitled1-1.jpg?v=1667882668260">
            <meta itemprop="description" content="Salad rau mùa sốt cam&nbsp;là sự lựa chọn tuyệt vời cho các tín đồ yêu eat clean. Món ăn có đến 5 loại xà lách (carol, frise, lô lô tím, xà lách mỡ và radicchio tím) kết hợp cùng các loại trái cây như táo, cà chua, ô liu... mang lại nguồn vitamin tổng hợp dồi dào, hỗ trợ tăng cường đề kháng cho cơ thể. Điểm nhấn tạo nên nét chấm phá cho món nằm ở nước sốt cam độc đáo với vị chua ngọt tự nhiên dịu dàng. Salad rau mùa sốt cam thực sự là một bữa tiệc về màu sắc, xua tan cơn nóng mùa hè, đánh thức tối đa vị giác.&nbsp;
Thành phần :
Xà lách carol, xà lách frise, xà lách lô lô tím, xà lách mỡ, xà lách radicchio tím, táo đỏ, táo xanh, cà chua bi, củ cải đường, rau mầm, cà rốt baby, trái olive đen, trái olive xanh.
Khẩu phần:
1 - 2 người
Thời gian hoàn tất :
6 - 8 phút">




            <div class="d-none" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                <div class="inventory_quantity d-none" itemscope itemtype="http://schema.org/ItemAvailability">

                    <span class="a-stock" itemprop="supersededBy">
                        Còn hàng
                    </span>

                </div>
                <link itemprop="availability" href="http://schema.org/InStock">
                <meta itemprop="priceCurrency" content="VND">
                <meta itemprop="price" content="68000">
                <meta itemprop="url" content="https://dola-restaurant.mysapo.net/salad-rau-mua-sot-cam">

                <meta itemprop="priceSpecification" content="70000">

                <meta itemprop="priceValidUntil" content="2099-01-01">
            </div> -->

		<div class="container">
			<div class="details-product">
				<div class="row">
					<div class="col-lg-9">
						<div class="row">
							<div
								class="product-detail-left product-images col-12 col-md-6 col-lg-5">
								<div class="product-image-block relative">

									<div class="swiper-container gallery-top">
										<div class="swiper-wrapper" id="lightgallery">

											<a class="swiper-slide" title="Click để xem"> <img
												height="400" width="400" src="images/salatraumuasotcam.webp"
												alt="Salad rau mùa sốt cam">
											</a>

										</div>
									</div>


								</div>
							</div>
							<div class="details-pro col-12 col-md-6 col-lg-7">
								<h1 class="title-product">${food.name}</h1>
								<form enctype="multipart/form-data" data-cart-form
									id="add-to-cart-form" action="/cart/add" method="post"
									class="form-inline">
									<div class="price-box clearfix">
										<c:choose>
											<c:when test="${food.discount > 0}">
												<span class="special-price"> <span
													class="price product-price"><fmt:formatNumber
															pattern="###,000"
															value="${food	.sale()}" />₫</span>
													<meta itemprop="price" content="68000">
													<meta itemprop="priceCurrency" content="VND">
												</span>
												<!-- Giá Khuyến mại -->
												<span class="old-price"> Giá tại nhà hàng: <span
													class="price product-price-old"> <fmt:formatNumber
															pattern="###,000" value="${food.price}" />₫
												</span>
													<meta itemprop="price" content="70000">
													<meta itemprop="priceCurrency" content="VND">
												</span>
												<!-- Giás gốc -->
												<span class="save-price">Tiết kiệm: <span
													class="price product-price-save"><fmt:formatNumber
															pattern="###,000"
															value="${food.price - food.sale()}" />
														₫</span>
												</span>
												<!-- Tiết kiệm -->
											</c:when>
											<c:otherwise>
												<div class="special-price">
													<span class="price product-price"><fmt:formatNumber
															pattern="###,000" value="${food.price}" />₫</span>
													<meta itemprop="price" content="68000">
													<meta itemprop="priceCurrency" content="VND">
												</div>
												<!-- Giá -->
											</c:otherwise>
										</c:choose>



									</div>


									<div class="product-summary">
										<div class="rte"></div>
									</div>

									<div class="form-product">

										<div class="box-variant clearfix  d-none ">

											<input type="hidden" id="one_variant" name="variantId"
												value="74797518" />

										</div>

										<div class="clearfix form-group ">
											<div class="flex-quantity">
												<div class="custom custom-btn-number show">
													<label class="sl section">Số lượng:</label>
													<div class="input_number_product form-control">
														<button class="btn_num num_1 button button_qty"
															onClick="var result = document.getElementById('qtym'); var qtypro = result.value; if( !isNaN( qtypro ) &amp;&amp; qtypro &gt; 1 ) result.value--;return false;"
															type="button">-</button>
														<input type="text" id="qtym" name="quantity" value="1"
															maxlength="3" class="form-control prd_quantity"
															onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;"
															onchange="if(this.value == 0)this.value=1;">
														<button class="btn_num num_2 button button_qty"
															onClick="var result = document.getElementById('qtym'); var qtypro = result.value; if( !isNaN( qtypro )) result.value++;return false;"
															type="button">+</button>
													</div>
												</div>
												<div class="btn-mua button_actions clearfix">

													<button type="submit"
														class="btn btn_base normal_button btn_add_cart add_to_cart btn-cart">
														<span class="txt-main text_1">Thêm vào giỏ hàng</span>
													</button>

													<a href="\html\cart.html">Đặt bàn tại đây</a>
												</div>
											</div>
										</div>
									</div>

								</form>



							</div>

						</div>

						<div class="product-tab e-tabs not-dqtab">
							<ul class="tabs tabs-title clearfix">

								<li class="tab-link active">
									<h3>Mô tả món ăn</h3>
								</li>




							</ul>
							<div class="tab-float">

								<div id="tab-1" class="tab-content active content_extab">
									<div class="rte product_getcontent">

										<div id="content">
											<p>${food.describe}</p>
											<h3>Thành phần :</h3>
											<p>${food.ingredient}</p>
											<h3>Khẩu phần:</h3>
											<p>1 - 2 người</p>
											<h3>Thời gian hoàn tất :</h3>
											<p>6 - 8 phút</p>
										</div>

									</div>
								</div>





							</div>
						</div>






						<div class="productRelate">
							<div class="title-index clearfix">
								<h2>
									<a href="\html\menu\menu.html" title="Món ăn cùng loại">Món
										ăn cùng loại</a>
								</h2>
							</div>


							<div class="product-relate-swiper swiper-container ">
								<div class="swiper-wrapper">




									<div class="swiper-slide">
										<div class=" item_product_main">
											<form action="/cart/add" method="post"
												class="variants product-action product-action-grid"
												data-cart-form data-id="product-actions-28196515"
												enctype="multipart/form-data">
												<div class="product-thumbnail">
													<a class="scale_hover"
														href="\html\menu\salatraumuasotmacmac.html"
														title="Salad rau mùa sốt mác mác"></a> <a
														class="image_thumb "
														href="\html\menu\salatraumuasotmacmac.html"
														title="Salad rau mùa sốt mác mác"> <img width="400"
														height="400" class="lazyload"
														src="images/salatraumuasotmacmac.jpg">
													</a>

													<div class="product-action">
														<a title="Xem nhanh"
															href="\html\menu\salatraumuasotmacmac.html"
															data-handle="salad-rau-mua-sot-mac-mac"
															class="quick-view btn-views"> <svg
																xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-eye-fill"
																viewBox="0 0 16 16">
                                                                <path
																	d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
                                                                <path
																	d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
                                                            </svg>
														</a> <input type="hidden" name="variantId" value="74180350" />
														<button class="btn-cart btn-views add_to_cart "
															title="Đặt món">
															<svg xmlns="http://www.w3.org/2000/svg"
																viewBox="0 0 576 512">
                                                                <path
																	d="M96 0C107.5 0 117.4 8.19 119.6 19.51L121.1 32H541.8C562.1 32 578.3 52.25 572.6 72.66L518.6 264.7C514.7 278.5 502.1 288 487.8 288H170.7L179.9 336H488C501.3 336 512 346.7 512 360C512 373.3 501.3 384 488 384H159.1C148.5 384 138.6 375.8 136.4 364.5L76.14 48H24C10.75 48 0 37.25 0 24C0 10.75 10.75 0 24 0H96zM128 464C128 437.5 149.5 416 176 416C202.5 416 224 437.5 224 464C224 490.5 202.5 512 176 512C149.5 512 128 490.5 128 464zM512 464C512 490.5 490.5 512 464 512C437.5 512 416 490.5 416 464C416 437.5 437.5 416 464 416C490.5 416 512 437.5 512 464z" />
                                                            </svg>
														</button>
													</div>


													<a href="javascript:void(0)" class="setWishlist btn-views"
														data-wish="salad-rau-mua-sot-mac-mac" tabindex="0"
														title="Thêm vào yêu thích"> <svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <path
																d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z">
                                                            </path>
                                                        </svg>
													</a>

												</div>
												<div class="product-info">
													<h3 class="product-name ">
														<a class="line-clamp line-clamp-1"
															href="\html\menu\salatraumuasotmacmac.html"
															title="Salad rau mùa sốt mác mác">Salad rau mùa sốt
															mác mác</a>
													</h3>
													<div class="price-box">
														<span class="price">68.000₫</span>
													</div>
													<a class="btn-more"
														href="\html\menu\salatraumuasotmacmac.html" tabindex="0">Xem
														chi tiết</a>
												</div>
											</form>

										</div>
									</div>



									<div class="swiper-slide">
										<div class=" item_product_main">

											<form action="/cart/add" method="post"
												class="variants product-action product-action-grid"
												data-cart-form data-id="product-actions-28196514"
												enctype="multipart/form-data">
												<div class="product-thumbnail">
													<a class="scale_hover" href="\html\menu\phocuon.html"
														title="Phở cuốn"></a> <a class="image_thumb "
														href="\html\menu\phocuon.html" title="Phở cuốn"> <img
														width="400" height="400" class="lazyload"
														src="images/Phucuon.webp" alt="Phở cuốn">
													</a>
													<div class="product-action">
														<a title="Xem nhanh" href="\html\menu\phocuon.html"
															data-handle="pho-cuon" class="quick-view btn-views">
															<svg xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-eye-fill"
																viewBox="0 0 16 16">
                                                                <path
																	d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
                                                                <path
																	d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
                                                            </svg>
														</a> <input type="hidden" name="variantId" value="74180349" />
														<button class="btn-cart btn-views add_to_cart "
															title="Đặt món">
															<svg xmlns="http://www.w3.org/2000/svg"
																viewBox="0 0 576 512">
                                                                <path
																	d="M96 0C107.5 0 117.4 8.19 119.6 19.51L121.1 32H541.8C562.1 32 578.3 52.25 572.6 72.66L518.6 264.7C514.7 278.5 502.1 288 487.8 288H170.7L179.9 336H488C501.3 336 512 346.7 512 360C512 373.3 501.3 384 488 384H159.1C148.5 384 138.6 375.8 136.4 364.5L76.14 48H24C10.75 48 0 37.25 0 24C0 10.75 10.75 0 24 0H96zM128 464C128 437.5 149.5 416 176 416C202.5 416 224 437.5 224 464C224 490.5 202.5 512 176 512C149.5 512 128 490.5 128 464zM512 464C512 490.5 490.5 512 464 512C437.5 512 416 490.5 416 464C416 437.5 437.5 416 464 416C490.5 416 512 437.5 512 464z" />
                                                            </svg>
														</button>
													</div>

													<div class="label_product">- 9%</div>

													<a href="javascript:void(0)" class="setWishlist btn-views"
														data-wish="pho-cuon" tabindex="0"
														title="Thêm vào yêu thích"> <svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <path
																d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z">
                                                            </path>
                                                        </svg>
													</a>

												</div>
												<div class="product-info">
													<h3 class="product-name ">
														<a class="line-clamp line-clamp-1"
															href="\html\menu\phocuon.html" title="Phở cuốn">Phở
															cuốn</a>
													</h3>
													<div class="price-box">
														<span class="price">82.000₫</span> <span
															class="compare-price">90.000₫</span>

													</div>
													<a class="btn-more" href="\html\menu\phocuon.html"
														tabindex="0">Xem chi tiết</a>
												</div>
											</form>
										</div>
									</div>



									<div class="swiper-slide">
										<div class=" item_product_main">
											<form action="/cart/add" method="post"
												class="variants product-action product-action-grid"
												data-cart-form data-id="product-actions-28196513"
												enctype="multipart/form-data">
												<div class="product-thumbnail">
													<a class="scale_hover"
														href="\html\menu\goitaiheohoachuoi.html"
														title="Gỏi tai heo hoa chuối"></a> <a class="image_thumb "
														href="\html\menu\goitaiheohoachuoi.html"
														title="Gỏi tai heo hoa chuối"> <img width="400"
														height="400" class="lazyload"
														src="images/Goitaiheohoachuoi.webp"
														alt="Gỏi tai heo hoa chuối">
													</a>
													<div class="product-action">
														<a title="Xem nhanh"
															href="\html\menu\goitaiheohoachuoi.html"
															data-handle="goi-tai-heo-hoa-chuoi"
															class="quick-view btn-views"> <svg
																xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-eye-fill"
																viewBox="0 0 16 16">
                                                                <path
																	d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
                                                                <path
																	d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
                                                            </svg>
														</a> <input type="hidden" name="variantId" value="74180348" />
														<button class="btn-cart btn-views add_to_cart "
															title="Đặt món">
															<svg xmlns="http://www.w3.org/2000/svg"
																viewBox="0 0 576 512">
                                                                <path
																	d="M96 0C107.5 0 117.4 8.19 119.6 19.51L121.1 32H541.8C562.1 32 578.3 52.25 572.6 72.66L518.6 264.7C514.7 278.5 502.1 288 487.8 288H170.7L179.9 336H488C501.3 336 512 346.7 512 360C512 373.3 501.3 384 488 384H159.1C148.5 384 138.6 375.8 136.4 364.5L76.14 48H24C10.75 48 0 37.25 0 24C0 10.75 10.75 0 24 0H96zM128 464C128 437.5 149.5 416 176 416C202.5 416 224 437.5 224 464C224 490.5 202.5 512 176 512C149.5 512 128 490.5 128 464zM512 464C512 490.5 490.5 512 464 512C437.5 512 416 490.5 416 464C416 437.5 437.5 416 464 416C490.5 416 512 437.5 512 464z" />
                                                            </svg>
														</button>
													</div>


													<a href="javascript:void(0)" class="setWishlist btn-views"
														data-wish="goi-tai-heo-hoa-chuoi" tabindex="0"
														title="Thêm vào yêu thích"> <svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <path
																d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z">
                                                            </path>
                                                        </svg>
													</a>

												</div>
												<div class="product-info">
													<h3 class="product-name ">
														<a class="line-clamp line-clamp-1"
															href="\html\menu\goitaiheohoachuoi.html"
															title="Gỏi tai heo hoa chuối">Gỏi tai heo hoa chuối</a>
													</h3>
													<div class="price-box">
														<span class="price">125.000₫</span>
													</div>
													<a class="btn-more"
														href="\html\menu\goitaiheohoachuoi.html" tabindex="0">Xem
														chi tiết</a>
												</div>
											</form>

										</div>
									</div>



									<div class="swiper-slide">
										<div class=" item_product_main">

											<form action="/cart/add" method="post"
												class="variants product-action product-action-grid"
												data-cart-form data-id="product-actions-28196512"
												enctype="multipart/form-data">
												<div class="product-thumbnail">
													<a class="scale_hover" href="\html\menu\gacuonladua.html"
														title="Gà cuốn lá dứa"></a> <a class="image_thumb "
														href="\html\menu\gacuonladua.html" title="Gà cuốn lá dứa">
														<img width="400" height="400" class="lazyload"
														src="images/gacuonladua.jpg" alt="Gà cuốn lá dứa">
													</a>
													<div class="product-action">
														<a title="Xem nhanh" href="\html\menu\gacuonladua.html"
															data-handle="ga-cuon-la-dua" class="quick-view btn-views">
															<svg xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-eye-fill"
																viewBox="0 0 16 16">
                                                                <path
																	d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
                                                                <path
																	d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
                                                            </svg>
														</a> <input type="hidden" name="variantId" value="74180347" />
														<button class="btn-cart btn-views add_to_cart "
															title="Đặt món">
															<svg xmlns="http://www.w3.org/2000/svg"
																viewBox="0 0 576 512">
                                                                <path
																	d="M96 0C107.5 0 117.4 8.19 119.6 19.51L121.1 32H541.8C562.1 32 578.3 52.25 572.6 72.66L518.6 264.7C514.7 278.5 502.1 288 487.8 288H170.7L179.9 336H488C501.3 336 512 346.7 512 360C512 373.3 501.3 384 488 384H159.1C148.5 384 138.6 375.8 136.4 364.5L76.14 48H24C10.75 48 0 37.25 0 24C0 10.75 10.75 0 24 0H96zM128 464C128 437.5 149.5 416 176 416C202.5 416 224 437.5 224 464C224 490.5 202.5 512 176 512C149.5 512 128 490.5 128 464zM512 464C512 490.5 490.5 512 464 512C437.5 512 416 490.5 416 464C416 437.5 437.5 416 464 416C490.5 416 512 437.5 512 464z" />
                                                            </svg>
														</button>
													</div>

													<!-- j:coid(0) để tránh chuyển sang trang khác -->
													<a href="javascript:void(0)" class="setWishlist btn-views"
														data-wish="ga-cuon-la-dua" tabindex="0"
														title="Thêm vào yêu thích"> <svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <path
																d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z">
                                                            </path>
                                                        </svg>
													</a>

												</div>
												<div class="product-info">
													<h3 class="product-name ">
														<a class="line-clamp line-clamp-1"
															href="\html\menu\gacuonladua.html" title="Gà cuốn lá dứa">Gà
															cuốn lá dứa</a>
													</h3>
													<div class="price-box">
														<span class="price">168.000₫</span>
													</div>
													<a class="btn-more" href="\html\menu\gacuonladua.html"
														tabindex="0">Xem chi tiết</a>
												</div>
											</form>
										</div>
									</div>



									<div class="swiper-slide">
										<div class=" item_product_main">
											<form action="/cart/add" method="post"
												class="variants product-action product-action-grid"
												data-cart-form data-id="product-actions-28196511"
												enctype="multipart/form-data">
												<div class="product-thumbnail">
													<a class="scale_hover"
														href="\html\menu\ucgadutlophulachanh.html"
														title="Ức gà đút lò phủ lá chanh"></a> <a
														class="image_thumb "
														href="\html\menu\ucgadutlophulachanh.html"
														title="Ức gà đút lò phủ lá chanh"> <img width="400"
														height="400" class="lazyload" src="images/Ucgadutlo.webp"
														alt="Ức gà đút lò phủ lá chanh">
													</a>
													<div class="product-action">
														<a title="Xem nhanh"
															href="\html\menu\ucgadutlophulachanh.html"
															data-handle="uc-ga-dut-lo-phu-la-chanh"
															class="quick-view btn-views"> <svg
																xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor" class="bi bi-eye-fill"
																viewBox="0 0 16 16">
                                                                <path
																	d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
                                                                <path
																	d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
                                                            </svg>
														</a> <input type="hidden" name="variantId" value="74180346" />
														<button class="btn-cart btn-views add_to_cart "
															title="Đặt món">
															<svg xmlns="http://www.w3.org/2000/svg"
																viewBox="0 0 576 512">
                                                                <path
																	d="M96 0C107.5 0 117.4 8.19 119.6 19.51L121.1 32H541.8C562.1 32 578.3 52.25 572.6 72.66L518.6 264.7C514.7 278.5 502.1 288 487.8 288H170.7L179.9 336H488C501.3 336 512 346.7 512 360C512 373.3 501.3 384 488 384H159.1C148.5 384 138.6 375.8 136.4 364.5L76.14 48H24C10.75 48 0 37.25 0 24C0 10.75 10.75 0 24 0H96zM128 464C128 437.5 149.5 416 176 416C202.5 416 224 437.5 224 464C224 490.5 202.5 512 176 512C149.5 512 128 490.5 128 464zM512 464C512 490.5 490.5 512 464 512C437.5 512 416 490.5 416 464C416 437.5 437.5 416 464 416C490.5 416 512 437.5 512 464z" />
                                                            </svg>
														</button>
													</div>


													<a href="javascript:void(0)" class="setWishlist btn-views"
														data-wish="uc-ga-dut-lo-phu-la-chanh" tabindex="0"
														title="Thêm vào yêu thích"> <svg
															xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                                            <path
																d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z">
                                                            </path>
                                                        </svg>
													</a>

												</div>
												<div class="product-info">
													<h3 class="product-name ">
														<a class="line-clamp line-clamp-1"
															href="\html\menu\ucgadutlophulachanh.html"
															title="Ức gà đút lò phủ lá chanh">Ức gà đút lò phủ lá
															chanh</a>
													</h3>
													<div class="price-box">
														<span class="price">185.000₫</span>
													</div>
													<a class="btn-more"
														href="\html\menu\ucgadutlophulachanh.html" tabindex="0">Xem
														chi tiết</a>
												</div>
											</form>

										</div>
									</div>


								</div>
								<div class="swiper-pagination"></div>
							</div>

						</div>


						<!-- <script>
                        if (localStorage.last_viewed_products != undefined) {
                            jQuery('.recent-page-viewed').removeClass('d-none');
                            var last_viewd_pro_array = JSON.parse(localStorage.last_viewed_products);
                            var recentview_promises = [];
                            var size_pro_review = last_viewd_pro_array.length;
                            if (size_pro_review >= 14) {
                                size_pro_review = 14;
                            } else {
                                size_pro_review = last_viewd_pro_array.length;
                            }
                            if (size_pro_review < 1) {
                                jQuery('.recent-page-viewed').addClass('d-none');
                            } else {
                                jQuery('.recent-page-viewed').removeClass('d-none');
                            }
                            if (size_pro_review > 0) {
                                for (i = 0; i < size_pro_review; i++) {
                                    var alias_product = last_viewd_pro_array[i];
                                    if (!!alias_product.alias) {
                                        var promise = new Promise(function (resolve, reject) {
                                            $.ajax({
                                                url: '/' + alias_product.alias + '?view=viewed',
                                                success: function (product) {
                                                    resolve(product);
                                                    $(document).ready(function () {
                                                        var modal = $('.quickview-product');
                                                        var btn = $('.quick-view');
                                                        var span = $('.quickview-close');

                                                        btn.click(function () {
                                                            modal.show();
                                                        });

                                                        span.click(function () {
                                                            modal.hide();
                                                        });

                                                        $(window).on('click', function (e) {
                                                            if ($(e.target).is('.modal')) {
                                                                modal.hide();
                                                            }
                                                        });
                                                    });
                                                },
                                                error: function (err) {
                                                    resolve('');
                                                }
                                            })
                                        });
                                        recentview_promises.push(promise);
                                    }
                                }
                                Promise.all(recentview_promises).then(function (values) {
                                    $.each(values, function (i, v) {
                                        if (v != '') {
                                            $('.recent-viewed .swiper-wrapper').append(v);
                                        } else {
                                            last_viewd_pro_array.splice(i, 1);
                                        }
                                    });
                                    console.log('listLocalStorage', last_viewd_pro_array);
                                    setTimeout(function () {
                                        var swiper = new Swiper('.recent-viewed', {
                                            slidesPerView: 4,
                                            loop: false,
                                            grabCursor: true,
                                            spaceBetween: 20,
                                            roundLengths: true,
                                            slideToClickedSlide: false,
                                            pagination: {
                                                el: '.section-recenview-product .swiper-pagination',
                                                clickable: true,
                                            },
                                            autoplay: false,
                                            breakpoints: {
                                                300: {
                                                    slidesPerView: 2,
                                                    spaceBetween: 12
                                                },
                                                500: {
                                                    slidesPerView: 2,
                                                    spaceBetween: 12
                                                },
                                                640: {
                                                    slidesPerView: 3,
                                                    spaceBetween: 24
                                                },
                                                768: {
                                                    slidesPerView: 3,
                                                    spaceBetween: 24
                                                },
                                                991: {
                                                    slidesPerView: 4,
                                                    spaceBetween: 24
                                                },
                                                1200: {
                                                    slidesPerView: 4,
                                                    spaceBetween: 24
                                                }
                                            }
                                        });
                                        awe_lazyloadImage();
                                    }, 500);

                                    localStorage.setItem('last_viewed_products', JSON.stringify(last_viewd_pro_array));
                                    awe_lazyloadImage();

                                })
                                    .catch(function (productId) {
                                        const listLocalStorage = (JSON.parse(localStorage.getItem('last_viewed_products')));
                                        for (let i = 0; i < listLocalStorage.length; ++i) {
                                            if (listLocalStorage[i].id == productId) {
                                                listLocalStorage.splice(i, 1);
                                            }
                                        }
                                        console.log('listLocalStorage', listLocalStorage);
                                        localStorage.setItem('last_viewed_products', JSON.stringify(listLocalStorage));
                                    });

                            }
                        } else {
                            jQuery('.section-recenview-product').addClass('d-none');
                        }
                    </script> -->

					</div>
					<div class="col-lg-3">
						<div class="product-sticky">
							<div class="product-sidebar">



								<div class="title">
									<a title="Có thể bạn đang tìm">Có thể bạn đang tìm</a>
								</div>
								<div class="product">

									<form action="/cart/add" method="post"
										class="variants product_list_index" data-cart-form
										data-id="product-actions-28196489"
										enctype="multipart/form-data">
										<div class="product-thumbnail">
											<a class="image_thumb scale_hover" href="/duong-chi-cam-lo"
												title="Dương chi cam lộ"> <img width="400" height="400"
												class="lazyload" src="images/Dương chi cam lộ.webp"
												alt="Dương chi cam lộ">
											</a>
										</div>
										<div class="product-info">
											<div class="info">
												<a class="product-name line-clamp line-clamp-1"
													href="/duong-chi-cam-lo" title="Dương chi cam lộ">Dương
													chi cam lộ</a>
												<div class="line-pro"></div>
											</div>
											<div class="price-box">
												55.000₫ <input type="hidden" name="variantId"
													value="74180322" />
												<button class="btn-cart btn-views add_to_cart "
													title="Đặt món">Đặt món</button>
											</div>
										</div>
									</form>

									<form action="/cart/add" method="post"
										class="variants product_list_index" data-cart-form
										data-id="product-actions-28196488"
										enctype="multipart/form-data">
										<div class="product-thumbnail">
											<a class="image_thumb scale_hover" href="/tra-lai-nhan"
												title="Trà lài nhãn"> <img width="400" height="400"
												class="lazyload" src="images/tralainhan.webp"
												alt="Trà lài nhãn">
											</a>
										</div>
										<div class="product-info">
											<div class="info">
												<a class="product-name line-clamp line-clamp-1"
													href="/tra-lai-nhan" title="Trà lài nhãn">Trà lài nhãn</a>
												<div class="line-pro"></div>
											</div>
											<div class="price-box">
												48.000₫ <input type="hidden" name="variantId"
													value="74180321" />
												<button class="btn-cart btn-views add_to_cart "
													title="Đặt món">Đặt món</button>
											</div>
										</div>
									</form>

									<form action="/cart/add" method="post"
										class="variants product_list_index" data-cart-form
										data-id="product-actions-28196487"
										enctype="multipart/form-data">
										<div class="product-thumbnail">
											<a class="image_thumb scale_hover" href="/tra-sua-oolong"
												title="Trà sữa Oolong"> <img width="400" height="400"
												class="lazyload" src="images/trasuaolong.webp"
												alt="Trà sữa Oolong">
											</a>
										</div>
										<div class="product-info">
											<div class="info">
												<a class="product-name line-clamp line-clamp-1"
													href="/tra-sua-oolong" title="Trà sữa Oolong">Trà sữa
													Oolong</a>
												<div class="line-pro"></div>
											</div>
											<div class="price-box">
												<span class="price">45.000₫</span> <span
													class="compare-price">50.000₫</span> <input type="hidden"
													name="variantId" value="74180320" />
												<button class="btn-cart btn-views add_to_cart "
													title="Đặt món">Đặt món</button>
											</div>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>



		</div>
		</section>
		<script>

            var swiper = new Swiper('.product-relate-swiper', {
                slidesPerView: 4,
                loop: false,
                grabCursor: true,
                spaceBetween: 30,
                roundLengths: true,
                slideToClickedSlide: false,

                pagination: {
                    el: '.product-relate-swiper .swiper-pagination',
                    clickable: true,
                },
                autoplay: false,
                breakpoints: {
                    300: {
                        slidesPerView: 2,
                        spaceBetween: 12
                    },
                    500: {
                        slidesPerView: 2,
                        spaceBetween: 12
                    },
                    640: {
                        slidesPerView: 3,
                        spaceBetween: 24
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 24
                    },
                    991: {
                        slidesPerView: 4,
                        spaceBetween: 24
                    },
                    1200: {
                        slidesPerView: 4,
                        spaceBetween: 24
                    }
                }
            });





        </script>


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


</body>

</html>