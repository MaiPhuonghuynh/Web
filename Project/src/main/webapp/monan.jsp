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
	<jsp:include page="header.jsp"></jsp:include>

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
									id="add-to-cart-form" action="datmon" method="post"
									class="form-inline">
									<div class="price-box clearfix">
										<c:choose>
											<c:when test="${food.discount > 0}">
												<span class="special-price"> <span
													class="price product-price"><fmt:formatNumber
															pattern="###,000" value="${food	.sale()}" />₫</span>
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
															pattern="###,000" value="${food.price - food.sale()}" />
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
												<input type="hidden" name="id" value="${food.id + 1}">
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


		<jsp:include page="footer.jsp"></jsp:include>

	</div>


</body>

</html>