<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8" />
<meta name="theme-color" content="#f02b2b" />

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
<!-- <link rel="preload" as="script"
        href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952" />
    <script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952"
        type="text/javascript"></script>

    <link rel="preload" as="script"
        href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952" />
    <script src="/js/trangchu.js"></script>

    <link rel="preload" as="script" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952" />
    <script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952"
        type="text/javascript"></script>
    <script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/waypoints.js?1686650273952"
        type="text/javascript"></script>
    <script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/counterup.js?1686650273952"
        type="text/javascript"></script>
    <script>
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
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>


	<div class="bodywrap">
		<section class="main-cart-page main-container col1-layout">
			<div class="main container cartpcstyle">
				<div class="row">
					<div
						class="col-lg-8 cart-main wrap_background_aside margin-bottom-40">
						<div class="header-cart">
							<div class="title-block-page">
								<h1 class="title_cart">
									<span>Giỏ hàng của bạn</span>
								</h1>
							</div>
						</div>
						<div class="cart-page d-xl-block d-none">
							<div class="drawer__inner">
								<div class="CartPageContainer"></div>
							</div>
						</div>
						<div class="cart-mobile-page d-block d-xl-none">
							<div class="CartMobileContainer">

								<form action="/cart" method="post" novalidate=""
									class="cart ajaxcart cart-mobile">
									<div
										class="ajaxcart__inner ajaxcart__inner--has-fixed-footer cart_body">
										<c:forEach items="${GioHang}" var="o">
											<div class="ajaxcart__row">
												<div class="ajaxcart__product cart_product" data-line="1">
													<a href="#" class="ajaxcart__product-image cart_image"
														title="${o.name}"><img
														src="https://bizweb.dktcdn.net/thumb/compact/100/469/097/products/1c8da310231574e189b9012e3125a3.jpg"
														alt="${o.name}"></a>
													<div class="grid__item cart_info">
														<div class="ajaxcart__product-name-wrapper cart_name">
															<a href="#" class="ajaxcart__product-name h4"
																title="${o.name}">${o.name}</a> <a
																class="cart__btn-remove remove-item-cart ajaxifyCart--remove"
																href="javascript:;" data-line="4">Xóa</a>

														</div>
														<div class="grid">
															<div class="grid__item one-half text-right cart_prices">
																<span class="cart-price">${o.price}₫</span>
															</div>
														</div>
														<div class="grid">
															<div class="grid__item one-half cart_select">
																<div class="ajaxcart__qty input-group-btn">
																	<button type="button"
																		class="ajaxcart__qty-adjust ajaxcart__qty--minus items-count"
																		data-id="" data-qty="0" data-line="1" aria-label="-">
																		-</button>
																	<input type="text" name="updates[]"
																		class="ajaxcart__qty-num number-sidebar" maxlength="3"
																		value="1" min="0" data-id="" data-line="1"
																		aria-label="quantity" pattern="[0-9]*">
																	<button type="button"
																		class="ajaxcart__qty-adjust ajaxcart__qty--plus items-count"
																		data-id="" data-line="1" data-qty="2" aria-label="+">
																		+</button>
																</div>
															</div>
														</div>
														<div class="grid">
															<div class="grid__item one-half text-right cart_prices">
																<span class="cart-price">${o.price}₫</span>

															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<div
											class="ajaxcart__footer ajaxcart__footer--fixed cart-footer">
											<div class="ajaxcart__subtotal">
												<div class="cart__subtotal">
													<div class="cart__col-6">Tổng tiền:</div>
													<div class="text-right cart__totle">
														<span class="total-price">68.000₫</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="cart__btn-proceed-checkout-dt">
										<button onclick="location.href='/checkout'" type="button"
											class="button btn btn-default cart__btn-proceed-checkout"
											id="btn-proceed-checkout" title="Thanh toán">Thanh
											toán</button>
									</div>
								</form>


							</div>
						</div>
					</div>
					<!-- <div class=" col-lg-4">
                        <div class="cart-tinhtrang">
                            <div class="title_voucher">
                                <img src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/voucher.png?1700208659838"
                                    alt="vouver">
                                <span>Nhận voucher ngay !!!</span>
                            </div>
                            <div class="thump-check">
                                <div class="check-bar"></div>
                                <div class="check-bar1"></div>
                                <div class="dot dot1"></div>
                                <div class="dot dot2"></div>
                                <div class="dot dot3"></div>
                            </div>
                            <ul class="coupon">
                                <li class="item-coupon coupon-1">
                                    <div class="coupon-content">
                                        <b class="conlai"></b>
                                        để được nhận mã freeship
                                    </div>
                                    <div class="coupon-code js-copy" data-copy="FREESHIP">Sao chép</div>
                                </li>
                                <li class="item-coupon coupon-2">
                                    <div class="coupon-content">
                                        <b class="conlai"></b>
                                        để được nhận mã giảm 20.000₫
                                    </div>
                                    <div class="coupon-code js-copy" data-copy="DOLA10">Sao chép</div>
                                </li>
                                <li class="item-coupon coupon-3">
                                    <div class="coupon-content">
                                        <b class="conlai"></b>
                                        để được nhận mã giảm 50.000₫
                                    </div>
                                    <div class="coupon-code js-copy" data-copy="DOLA50">Sao chép</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> -->
				</div>
		</section>

		<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>