<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8" />
<meta name="theme-color" content="#f02b2b" />
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
	<jsp:include page="header.jsp"></jsp:include>
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
			<div class="container ">
				<div class="wrap_background_aside  page_login">
					<div class="wrap_background_aside">
						<div class="row">
							<div
								class="col-lg-4 col-md-6 col-sm-12 col-12 col-xl-4 offset-xl-4 offset-lg-4 offset-md-3 offset-xl-3">
								<div class="row">
									<div class="page-login pagecustome clearfix">
										<div class="wpx">
											<ul class="auth-block__menu-list">
												<li><a href="login.jsp" title="Đăng nhập">Đăng nhập</a>
												</li>
												<li class="active"><a href="#" title="Đăng ký">Đăng
														ký</a></li>
											</ul>
											<h1 class="title_heads a-center">
												<span>Đăng ký</span>
											</h1>
											<p>
												<c:if test="${er_Register == true}">
													<p class="alert"
														style="background: #ff0000; color: #fff; padding: 5px 10px; border-radius: 6px; margin-top: 14px;">Tài
														khoản đăng ký đã tồn tại</p>
												</c:if>
											<div id="login" class="section">
												<form method="post" action="dangky" id="customer_register"
													accept-charset="UTF-8">
													<input name="FormType" type="hidden"
														value="customer_register" /> <input name="utf8"
														type="hidden" value="true" /> <input type="hidden"
														id="Token-c59cc77ea1a74b96884195a004341a85" name="Token" />
													<!-- <script
                                                        src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
                                                    <script>
                                                        grecaptcha.ready(function () {
                                                            grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {
                                                                action: "customer_register"
                                                            }).then(function (token) {
                                                                document.getElementById("Token-c59cc77ea1a74b96884195a004341a85").value = token
                                                            });
                                                        });
                                                    </script> -->
													<div class="form-signup " style="color: red;"></div>
													<div class="form-signup clearfix">
														<div class="row">
															<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
																<fieldset class="form-group">
																	<input type="text" class="form-control form-control-lg"
																		value="${name}" name="name" id="name"
																		placeholder="Họ và tên" required>
																</fieldset>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
																<fieldset class="form-group">
																	<input placeholder="Số điện thoại" type="text"
																		pattern="\d+" value="${phone}"
																		class="form-control form-control-comment form-control-lg"
																		name="PhoneNumber" Required>
																</fieldset>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
																<fieldset class="form-group">
																	<input type="text" class="form-control form-control-lg"
																		value="${address}" name="address" id="address"
																		placeholder="Địa chỉ" required>
																</fieldset>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
																<fieldset class="form-group">
																	<input type="email"
																		class="form-control form-control-lg" value="${email}"
																		name="email" id="email" placeholder="Email"
																		required="">
																</fieldset>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
																<fieldset class="form-group">
																	<input type="text" class="form-control form-control-lg"
																		value="" name="username" id="username"
																		placeholder="Tên đăng nhập" required>
																</fieldset>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
																<fieldset class="form-group">
																	<input type="password"
																		class="form-control form-control-lg" value=""
																		name="password" id="password" placeholder="Mật khẩu"
																		required>
																</fieldset>
															</div>
														</div>
														<div class="section">
															<button type="submit" value="Đăng ký"
																class="btn  btn-style btn_50">Đăng ký</button>
														</div>
													</div>
												</form>
												<!-- <div class="block social-login--facebooks margin-top-15">
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
				</div>
			</div>
		</section>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
		<script
		src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.js?1686650273952"
		type="text/javascript"></script>
</body>

</html>