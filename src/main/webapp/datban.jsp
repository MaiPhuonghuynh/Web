<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<!-- <meta charset="UTF-8" />
	<meta name="theme-color" content="#f02b2b" />
	<link rel="canonical" href="https://dola-restaurant.mysapo.net/dat-ban" />
	<meta name='revisit-after' content='2 days' />
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="robots" content="noodp,index,follow" />
	<meta name="description" content="">
	<title>Đặt bàn </title>
	<meta name="keywords" content="Đặt bàn, Dola Restaurant, dola-restaurant.mysapo.net" />
	<meta property="og:type" content="website">
	<meta property="og:title" content="Đặt bàn">
	<meta property="og:image"
		content="https://bizweb.dktcdn.net/100/469/097/themes/882205/assets/logo.png?1686650273952">
	<meta property="og:image:secure_url"
		content="https://bizweb.dktcdn.net/100/469/097/themes/882205/assets/logo.png?1686650273952">
	<meta property="og:description" content="">
	<meta property="og:url" content="https://dola-restaurant.mysapo.net/dat-ban">
	<meta property="og:site_name" content="Dola Restaurant">
	<link rel="icon" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/favicon.png?1686650273952"
		type="image/x-icon" />
	<link rel="preload" as="script"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952" />
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952"
		type="text/javascript"></script>
	<link rel="preload" as="script"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952" />
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952"
		type="text/javascript"></script>
	<link rel="preload" as="script" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952" />
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952"
		type="text/javascript"></script>
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/waypoints.js?1686650273952"
		type="text/javascript"></script>
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/counterup.js?1686650273952"
		type="text/javascript"></script>
	<script>
		//notify js
		!function (t) {
			"function" == typeof define && define.amd ? define(["jquery"], t) : t("object" == typeof exports ? require("jquery") : jQuery)
		}(function (t) {
			function s(s) {
				var e = !1;
				return t('[data-notify="container"]').each(function (i, n) {
					var a = t(n)
						, o = a.find('[data-notify="title"]').text().trim()
						, r = a.find('[data-notify="message"]').html().trim()
						, l = o === t("<div>" + s.settings.content.title + "</div>").html().trim()
						, d = r === t("<div>" + s.settings.content.message + "</div>").html().trim()
						, g = a.hasClass("alert-" + s.settings.type);
					return l && d && g && (e = !0),
						!e
				}),
					e
			}
			function e(e, n, a) {
				var o = {
					content: {
						message: "object" == typeof n ? n.message : n,
						title: n.title ? n.title : "",
						icon: n.icon ? n.icon : "",
						url: n.url ? n.url : "#",
						target: n.target ? n.target : "-"
					}
				};
				a = t.extend(!0, {}, o, a),
					this.settings = t.extend(!0, {}, i, a),
					this._defaults = i,
					"-" === this.settings.content.target && (this.settings.content.target = this.settings.url_target),
					this.animations = {
						start: "webkitAnimationStart oanimationstart MSAnimationStart animationstart",
						end: "webkitAnimationEnd oanimationend MSAnimationEnd animationend"
					},
					"number" == typeof this.settings.offset && (this.settings.offset = {
						x: this.settings.offset,
						y: this.settings.offset
					}),
					(this.settings.allow_duplicates || !this.settings.allow_duplicates && !s(this)) && this.init()
			}
			var i = {
				element: "body",
				position: null,
				type: "info",
				allow_dismiss: !0,
				allow_duplicates: !0,
				newest_on_top: !1,
				showProgressbar: !1,
				placement: {
					from: "top",
					align: "right"
				},
				offset: 20,
				spacing: 10,
				z_index: 1031,
				delay: 5e3,
				timer: 1e3,
				url_target: "_blank",
				mouse_over: null,
				animate: {
					enter: "animated fadeInDown",
					exit: "animated fadeOutUp"
				},
				onShow: null,
				onShown: null,
				onClose: null,
				onClosed: null,
				icon_type: "class",
				template: '<div data-notify="container" class="col-xs-11 col-sm-4 alert alert-{0}" role="alert"><button type="button" aria-hidden="true" class="close" data-notify="dismiss">&times;</button><span data-notify="icon"></span> <span data-notify="title">{1}</span> <span data-notify="message">{2}</span><div class="progress" data-notify="progressbar"><div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div></div><a href="{3}" target="{4}" data-notify="url"></a></div>'
			};
			String.format = function () {
				for (var t = arguments[0], s = 1; s < arguments.length; s++)
					t = t.replace(RegExp("\\{" + (s - 1) + "\\}", "gm"), arguments[s]);
				return t
			}
				,
				t.extend(e.prototype, {
					init: function () {
						var t = this;
						this.buildNotify(),
							this.settings.content.icon && this.setIcon(),
							"#" != this.settings.content.url && this.styleURL(),
							this.styleDismiss(),
							this.placement(),
							this.bind(),
							this.notify = {
								$ele: this.$ele,
								update: function (s, e) {
									var i = {};
									"string" == typeof s ? i[s] = e : i = s;
									for (var n in i)
										switch (n) {
											case "type":
												this.$ele.removeClass("alert-" + t.settings.type),
													this.$ele.find('[data-notify="progressbar"] > .progress-bar').removeClass("progress-bar-" + t.settings.type),
													t.settings.type = i[n],
													this.$ele.addClass("alert-" + i[n]).find('[data-notify="progressbar"] > .progress-bar').addClass("progress-bar-" + i[n]);
												break;
											case "icon":
												var a = this.$ele.find('[data-notify="icon"]');
												"class" === t.settings.icon_type.toLowerCase() ? a.removeClass(t.settings.content.icon).addClass(i[n]) : (a.is("img") || a.find("img"),
													a.attr("src", i[n]));
												break;
											case "progress":
												var o = t.settings.delay - t.settings.delay * (i[n] / 100);
												this.$ele.data("notify-delay", o),
													this.$ele.find('[data-notify="progressbar"] > div').attr("aria-valuenow", i[n]).css("width", i[n] + "%");
												break;
											case "url":
												this.$ele.find('[data-notify="url"]').attr("href", i[n]);
												break;
											case "target":
												this.$ele.find('[data-notify="url"]').attr("target", i[n]);
												break;
											default:
												this.$ele.find('[data-notify="' + n + '"]').html(i[n])
										}
									var r = this.$ele.outerHeight() + parseInt(t.settings.spacing) + parseInt(t.settings.offset.y);
									t.reposition(r)
								},
								close: function () {
									t.close()
								}
							}
					},
					buildNotify: function () {
						var s = this.settings.content;
						this.$ele = t(String.format(this.settings.template, this.settings.type, s.title, s.message, s.url, s.target)),
							this.$ele.attr("data-notify-position", this.settings.placement.from + "-" + this.settings.placement.align),
							this.settings.allow_dismiss || this.$ele.find('[data-notify="dismiss"]').css("display", "none"),
							(this.settings.delay > 0 || this.settings.showProgressbar) && this.settings.showProgressbar || this.$ele.find('[data-notify="progressbar"]').remove()
					},
					setIcon: function () {
						"class" === this.settings.icon_type.toLowerCase() ? this.$ele.find('[data-notify="icon"]').addClass(this.settings.content.icon) : this.$ele.find('[data-notify="icon"]').is("img") ? this.$ele.find('[data-notify="icon"]').attr("src", this.settings.content.icon) : this.$ele.find('[data-notify="icon"]').append('<img src="' + this.settings.content.icon + '" alt="Notify Icon" />')
					},
					styleDismiss: function () {
						this.$ele.find('[data-notify="dismiss"]').css({
							position: "absolute",
							right: "10px",
							top: "5px",
							zIndex: this.settings.z_index + 2
						})
					},
					styleURL: function () {
						this.$ele.find('[data-notify="url"]').css({
							backgroundImage: "url(data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7)",
							height: "100%",
							left: 0,
							position: "absolute",
							top: 0,
							width: "100%",
							zIndex: this.settings.z_index + 1
						})
					},
					placement: function () {
						var s = this
							, e = this.settings.offset.y
							, i = {
								display: "inline-block",
								margin: "0px auto",
								position: this.settings.position ? this.settings.position : "body" === this.settings.element ? "fixed" : "absolute",
								transition: "all .5s ease-in-out",
								zIndex: this.settings.z_index
							}
							, n = !1
							, a = this.settings;
						switch (t('[data-notify-position="' + this.settings.placement.from + "-" + this.settings.placement.align + '"]:not([data-closing="true"])').each(function () {
							e = Math.max(e, parseInt(t(this).css(a.placement.from)) + parseInt(t(this).outerHeight()) + parseInt(a.spacing))
						}),
						this.settings.newest_on_top === !0 && (e = this.settings.offset.y),
						i[this.settings.placement.from] = e + "px",
						this.settings.placement.align) {
							case "left":
							case "right":
								i[this.settings.placement.align] = this.settings.offset.x + "px";
								break;
							case "center":
								i.left = 0,
									i.right = 0
						}
						this.$ele.css(i).addClass(this.settings.animate.enter),
							t.each(["webkit-", "moz-", "o-", "ms-", ""], function (t, e) {
								s.$ele[0].style[e + "AnimationIterationCount"] = 1
							}),
							t(this.settings.element).append(this.$ele),
							this.settings.newest_on_top === !0 && (e = parseInt(e) + parseInt(this.settings.spacing) + this.$ele.outerHeight(),
								this.reposition(e)),
							t.isFunction(s.settings.onShow) && s.settings.onShow.call(this.$ele),
							this.$ele.one(this.animations.start, function () {
								n = !0
							}).one(this.animations.end, function () {
								t.isFunction(s.settings.onShown) && s.settings.onShown.call(this)
							}),
							setTimeout(function () {
								n || t.isFunction(s.settings.onShown) && s.settings.onShown.call(this)
							}, 600)
					},
					bind: function () {
						var s = this;
						if (this.$ele.find('[data-notify="dismiss"]').on("click", function () {
							s.close()
						}),
							this.$ele.mouseover(function () {
								t(this).data("data-hover", "true")
							}).mouseout(function () {
								t(this).data("data-hover", "false")
							}),
							this.$ele.data("data-hover", "false"),
							this.settings.delay > 0) {
							s.$ele.data("notify-delay", s.settings.delay);
							var e = setInterval(function () {
								var t = parseInt(s.$ele.data("notify-delay")) - s.settings.timer;
								if ("false" === s.$ele.data("data-hover") && "pause" === s.settings.mouse_over || "pause" != s.settings.mouse_over) {
									var i = (s.settings.delay - t) / s.settings.delay * 100;
									s.$ele.data("notify-delay", t),
										s.$ele.find('[data-notify="progressbar"] > div').attr("aria-valuenow", i).css("width", i + "%")
								}
								t > -s.settings.timer || (clearInterval(e),
									s.close())
							}, s.settings.timer)
						}
					},
					close: function () {
						var s = this
							, e = parseInt(this.$ele.css(this.settings.placement.from))
							, i = !1;
						this.$ele.data("closing", "true").addClass(this.settings.animate.exit),
							s.reposition(e),
							t.isFunction(s.settings.onClose) && s.settings.onClose.call(this.$ele),
							this.$ele.one(this.animations.start, function () {
								i = !0
							}).one(this.animations.end, function () {
								t(this).remove(),
									t.isFunction(s.settings.onClosed) && s.settings.onClosed.call(this)
							}),
							setTimeout(function () {
								i || (s.$ele.remove(),
									s.settings.onClosed && s.settings.onClosed(s.$ele))
							}, 600)
					},
					reposition: function (s) {
						var e = this
							, i = '[data-notify-position="' + this.settings.placement.from + "-" + this.settings.placement.align + '"]:not([data-closing="true"])'
							, n = this.$ele.nextAll(i);
						this.settings.newest_on_top === !0 && (n = this.$ele.prevAll(i)),
							n.each(function () {
								t(this).css(e.settings.placement.from, s),
									s = parseInt(s) + parseInt(e.settings.spacing) + t(this).outerHeight()
							})
					}
				}),
				t.notify = function (t, s) {
					var i = new e(this, t, s);
					return i.notify
				}
				,
				t.notifyDefaults = function (s) {
					return i = t.extend(!0, {}, i, s)
				}
				,
				t.notifyClose = function (s) {
					void 0 === s || "all" === s ? t("[data-notify]").find('[data-notify="dismiss"]').trigger("click") : t('[data-notify-position="' + s + '"]').find('[data-notify="dismiss"]').trigger("click")
				}
		});
		//cookie
		!function (e) {
			var n;
			if ("function" == typeof define && define.amd && (define(e),
				n = !0),
				"object" == typeof exports && (module.exports = e(),
					n = !0),
				!n) {
				var t = window.Cookies
					, o = window.Cookies = e();
				o.noConflict = function () {
					return window.Cookies = t,
						o
				}
			}
		}(function () {
			function e() {
				for (var e = 0, n = {}; e < arguments.length; e++) {
					var t = arguments[e];
					for (var o in t)
						n[o] = t[o]
				}
				return n
			}
			function n(e) {
				return e.replace(/(%[0-9A-Z]{2})+/g, decodeURIComponent)
			}
			return function t(o) {
				function r() { }
				function i(n, t, i) {
					if ("undefined" != typeof document) {
						"number" == typeof (i = e({
							path: "/"
						}, r.defaults, i)).expires && (i.expires = new Date(1 * new Date + 864e5 * i.expires)),
							i.expires = i.expires ? i.expires.toUTCString() : "";
						try {
							var c = JSON.stringify(t);
							/^[\{\[]/.test(c) && (t = c)
						} catch (e) { }
						t = o.write ? o.write(t, n) : encodeURIComponent(String(t)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent),
							n = encodeURIComponent(String(n)).replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent).replace(/[\(\)]/g, escape);
						var f = "";
						for (var u in i)
							i[u] && (f += "; " + u,
								!0 !== i[u] && (f += "=" + i[u].split(";")[0]));
						return document.cookie = n + "=" + t + f
					}
				}
				function c(e, t) {
					if ("undefined" != typeof document) {
						for (var r = {}, i = document.cookie ? document.cookie.split("; ") : [], c = 0; c < i.length; c++) {
							var f = i[c].split("=")
								, u = f.slice(1).join("=");
							t || '"' !== u.charAt(0) || (u = u.slice(1, -1));
							try {
								var a = n(f[0]);
								if (u = (o.read || o)(u, a) || n(u),
									t)
									try {
										u = JSON.parse(u)
									} catch (e) { }
								if (r[a] = u,
									e === a)
									break
							} catch (e) { }
						}
						return e ? r[e] : r
					}
				}
				return r.set = i,
					r.get = function (e) {
						return c(e, !1)
					}
					,
					r.getJSON = function (e) {
						return c(e, !0)
					}
					,
					r.remove = function (n, t) {
						i(n, "", e(t, {
							expires: -1
						}))
					}
					,
					r.defaults = {},
					r.withConverter = t,
					r
			}(function () { })
		});
	</script>
	<link rel="preload" as='style' type="text/css"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.scss.css?1686650273952">
	<link rel="preload" as='style' type="text/css"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/bootstrap-4-3-min.css?1686650273952">
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/bootstrap-4-3-min.css?1686650273952"
		rel="stylesheet" type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.scss.css?1686650273952" rel="stylesheet"
		type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.scss.css?1686650273952" rel="stylesheet"
		type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/breadcrumb_style.scss.css?1686650273952"
		rel="stylesheet" type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/paginate.scss.css?1686650273952" rel="stylesheet"
		type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/style_page.scss.css?1686650273952" rel="stylesheet"
		type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/datban.scss.css?1686650273952" rel="stylesheet"
		type="text/css" media="all" />
	<link href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/quickviews_popup_cart.scss.css?1686650273952"
		rel="stylesheet" type="text/css" media="all" />
	<script>
		var Bizweb = Bizweb || {};
		Bizweb.store = 'dola-restaurant.mysapo.net';
		Bizweb.id = 469097;
		Bizweb.theme = {
			"id": 882205,
			"name": "Dola Restaurant",
			"role": "main"
		};
		Bizweb.template = 'page.datban';
		if (!Bizweb.fbEventId)
			Bizweb.fbEventId = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
				var r = Math.random() * 16 | 0
					, v = c == 'x' ? r : (r & 0x3 | 0x8);
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
			}
			; window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad, false);
		}
		)();
	</script>
	<script>
		window.BizwebAnalytics = window.BizwebAnalytics || {};
		window.BizwebAnalytics.meta = window.BizwebAnalytics.meta || {};
		window.BizwebAnalytics.meta.currency = 'VND';
		window.BizwebAnalytics.tracking_url = '/s';

		var meta = {};

		for (var attr in meta) {
			window.BizwebAnalytics.meta[attr] = meta[attr];
		}
	</script>
	<script src="/dist/js/stats.min.js?v=8177d93"></script>
	<script type="application/ld+json">

        {
        "@context": "http://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": 
        [
            {
                "@type": "ListItem",
                "position": 1,
                "item": 
                {
                  "@id": "https://dola-restaurant.mysapo.net",
                  "name": "Trang chủ"
                }
            },
      
        
      
      
      
      {
                "@type": "ListItem",
                "position": 2,
                "item": 
                {
                  "@id": "https://dola-restaurant.mysapo.net/dat-ban",
                  "name": "Đặt bàn"
                }
            }
      
      
    
        ]
        }

        </script>
	<script>
		$(document).ready(function ($) {
			awe_lazyloadImage();
		});
		function awe_lazyloadImage() {
			var ll = new LazyLoad({
				elements_selector: ".lazyload",
				load_delay: 100,
				threshold: 0
			});
		}
		window.awe_lazyloadImage = awe_lazyloadImage;
	</script>
</head>

<body>
	<div class="opacity_menu"></div>
	<header class="header ">
		<div class="container">
			<div class="bottom-header">
				<div class="row">
					<div class="col-xl-2 col-lg-2">
						<div class="logo">
							<a href="/" title="Logo">
								<img width="172" height="50"
									src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/logo.png?1686650273952"
									alt="Dola Restaurant">
							</a>
						</div>
					</div>
					<div class="col-xl-7 col-lg-7 header-menu">
						<nav class="header-nav">
							<ul class="item_big">
								<li>
									<a class="logo-sitenav d-lg-none d-block" href="/" title="Logo">
										<img width="172" height="50"
											src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/logo.png?1686650273952"
											alt="Dola Restaurant">
									</a>
								</li>
								<li class="nav-item ">
									<a class="a-img" href="/" title="Trang chủ">Trang chủ
									</a>
								</li>
								<li class="nav-item ">
									<a class="a-img" href="/gioi-thieu" title="Giới thiệu">Giới thiệu
									</a>
								</li>
								<li data-title="Menu" data-link="#"
									data-img="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/mega-1-image.jpg?1686650273952"
									class="nav-item    has-mega ">
									<a class="a-img caret-down" href="/collections/all" title="Menu">Menu
									</a>
									<i class="fa fa1 fa-caret-down"></i>
									<div class="mega-content d-lg-block d-none">
										<div class="row">
											<div class="col-lg-9">
												<ul class="level0">
													<li class="level1 parent item fix-navs" data-title="Khai vị"
														data-link="/khai-vi"
														data-img="//bizweb.dktcdn.net/thumb/large/100/469/097/collections/untitled-1.png?v=1666620246267">
														<a class="hmega" href="/khai-vi" title="Khai vị">Khai vị</a>
														<ul class="level1">
															<li class="level2">
																<a href="/salad" title="Salad">Salad</a>
															</li>
															<li class="level2">
																<a href="/goi" title="Gỏi">Gỏi</a>
															</li>
														</ul>
													</li>
													<li class="level1 parent item fix-navs" data-title="Món chính"
														data-link="/mon-chinh"
														data-img="//bizweb.dktcdn.net/thumb/large/100/469/097/collections/1.png?v=1666620272107">
														<a class="hmega" href="/mon-chinh" title="Món chính">Món
															chính</a>
														<ul class="level1">
															<li class="level2">
																<a href="/mon-bo" title="Món bò">Món bò</a>
															</li>
															<li class="level2">
																<a href="/mon-ga" title="Món gà">Món gà</a>
															</li>
															<li class="level2">
																<a href="/mon-heo" title="Món heo">Món heo</a>
															</li>
															<li class="level2">
																<a href="/mon-ca" title="Món cá">Món cá</a>
															</li>
														</ul>
													</li>
													<li class="level1 parent item fix-navs"
														data-title="Canh - Tiềm - Sup" data-link="/canh-tiem-sup"
														data-img="//bizweb.dktcdn.net/thumb/large/100/469/097/collections/untitled-1-68773ce4-f7bf-467f-a64d-dbff8c604ff6.png?v=1666620299497">
														<a class="hmega" href="/canh-tiem-sup"
															title="Canh - Tiềm - Sup">Canh - Tiềm - Sup</a>
														<ul class="level1">
															<li class="level2">
																<a href="/canh" title="Canh">Canh</a>
															</li>
															<li class="level2">
																<a href="/tiem" title="Tiềm">Tiềm</a>
															</li>
															<li class="level2">
																<a href="/sup" title="Súp">Súp</a>
															</li>
														</ul>
													</li>
													<li class="level1 parent item fix-navs" data-title="Cơm - Mì - Cháo"
														data-link="/com-mi-chao"
														data-img="//bizweb.dktcdn.net/thumb/large/100/469/097/collections/1-78911269-4e8f-48de-82ff-8db32236d4c0.png?v=1666620332610">
														<a class="hmega" href="/com-mi-chao" title="Cơm - Mì - Cháo">Cơm
															- Mì - Cháo</a>
														<ul class="level1">
															<li class="level2">
																<a href="/com" title="Cơm">Cơm</a>
															</li>
															<li class="level2">
																<a href="/mi" title="Mì">Mì</a>
															</li>
															<li class="level2">
																<a href="/chao" title="Cháo">Cháo</a>
															</li>
														</ul>
													</li>
													<li class="level1 parent item fix-navs"
														data-title="Bánh và tráng miệng"
														data-link="/banh-va-trang-mieng"
														data-img="//bizweb.dktcdn.net/thumb/large/100/469/097/collections/1-7c22e7c5-38e6-4fda-a282-b3dc868fb522.png?v=1666620355433">
														<a class="hmega" href="/banh-va-trang-mieng"
															title="Bánh và tráng miệng">Bánh và tráng miệng</a>
														<ul class="level1">
															<li class="level2">
																<a href="/banh" title="Bánh">Bánh</a>
															</li>
															<li class="level2">
																<a href="/trang-mieng" title="Tráng miệng">Tráng
																	miệng</a>
															</li>
														</ul>
													</li>
													<li class="level1 parent item fix-navs" data-title="Đồ uống"
														data-link="/do-uong"
														data-img="//bizweb.dktcdn.net/thumb/large/100/469/097/collections/untitled-1-c6e94da2-4486-4107-a0b0-b63a126ef892.png?v=1666620374890">
														<a class="hmega" href="/do-uong" title="Đồ uống">Đồ uống</a>
														<ul class="level1">
															<li class="level2">
																<a href="/ca-phe" title="Cà phê">Cà phê</a>
															</li>
															<li class="level2">
																<a href="/tra-sua" title="Trà sữa">Trà sữa</a>
															</li>
														</ul>
													</li>
												</ul>
											</div>
											<div class="col-lg-3">
												<a class="url-mega" href="#" title="Menu">
													<img width="400" height="500" class="lazyload image-mega"
														src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
														data-src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/mega-1-image.jpg?1686650273952"
														alt="Menu" />
												</a>
											</div>
										</div>
									</div>
									<ul class="item_small d-lg-none d-block">
										<li>
											<a class="caret-down" href="/khai-vi" title="Khai vị">Khai vị
											</a>
											<i class="fa fa-caret-down"></i>
											<ul>
												<li>
													<a href="/salad" title="Salad" class="a3">Salad</a>
												</li>
												<li>
													<a href="/goi" title="Gỏi" class="a3">Gỏi</a>
												</li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/mon-chinh" title="Món chính">Món chính
											</a>
											<i class="fa fa-caret-down"></i>
											<ul>
												<li>
													<a href="/mon-bo" title="Món bò" class="a3">Món bò</a>
												</li>
												<li>
													<a href="/mon-ga" title="Món gà" class="a3">Món gà</a>
												</li>
												<li>
													<a href="/mon-heo" title="Món heo" class="a3">Món heo</a>
												</li>
												<li>
													<a href="/mon-ca" title="Món cá" class="a3">Món cá</a>
												</li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/canh-tiem-sup" title="Canh - Tiềm - Sup">Canh -
												Tiềm - Sup
											</a>
											<i class="fa fa-caret-down"></i>
											<ul>
												<li>
													<a href="/canh" title="Canh" class="a3">Canh</a>
												</li>
												<li>
													<a href="/tiem" title="Tiềm" class="a3">Tiềm</a>
												</li>
												<li>
													<a href="/sup" title="Súp" class="a3">Súp</a>
												</li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/com-mi-chao" title="Cơm - Mì - Cháo">Cơm - Mì -
												Cháo
											</a>
											<i class="fa fa-caret-down"></i>
											<ul>
												<li>
													<a href="/com" title="Cơm" class="a3">Cơm</a>
												</li>
												<li>
													<a href="/mi" title="Mì" class="a3">Mì</a>
												</li>
												<li>
													<a href="/chao" title="Cháo" class="a3">Cháo</a>
												</li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/banh-va-trang-mieng"
												title="Bánh và tráng miệng">Bánh và tráng miệng
											</a>
											<i class="fa fa-caret-down"></i>
											<ul>
												<li>
													<a href="/banh" title="Bánh" class="a3">Bánh</a>
												</li>
												<li>
													<a href="/trang-mieng" title="Tráng miệng" class="a3">Tráng
														miệng</a>
												</li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/do-uong" title="Đồ uống">Đồ uống
											</a>
											<i class="fa fa-caret-down"></i>
											<ul>
												<li>
													<a href="/ca-phe" title="Cà phê" class="a3">Cà phê</a>
												</li>
												<li>
													<a href="/tra-sua" title="Trà sữa" class="a3">Trà sữa</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="nav-item ">
									<a class="a-img" href="/mon-an-noi-bat" title="Món ăn nổi bật">Món ăn nổi bật
									</a>
								</li>
								<li class="nav-item ">
									<a class="a-img" href="/mon-ngon-moi-ngay" title="Món ngon mỗi ngày">Món ngon mỗi
										ngày
									</a>
								</li>
								<li class="nav-item ">
									<a class="a-img" href="/tin-tuc" title="Tin tức">Tin tức
									</a>
								</li>
								<li class="nav-item ">
									<a class="a-img" href="/lien-he" title="Liên hệ">Liên hệ
									</a>
								</li>
								<li class="account d-lg-none d-block">
									<ul>
										<li class="ng-scope">
											<a rel="nofollow" href="/account/login" title="Đăng nhập">Đăng nhập</a>
										</li>
										<li class="ng-scope">
											<a rel="nofollow" href="/account/register" title="Đăng ký">Đăng ký</a>
										</li>
										<li>
											<a class="js-wishlist-link" href="/mon-an-yeu-thich"
												aria-label="Món ăn Yêu thích" title="Món ăn Yêu thích">Món ăn yêu
												thích</a>
										</li>
									</ul>
								</li>
							</ul>
						</nav>
						<div class="control-menu d-lg-block d-none">
							<a href="#" id="prev">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
									<path fill="#fff"
										d="M41.4 233.4c-12.5 12.5-12.5 32.8 0 45.3l192 192c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.3 256 278.6 86.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-192 192z" />
								</svg>
							</a>
							<a href="#" id="next">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
									<path fill="#fff"
										d="M342.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-192 192c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L274.7 256 105.4 86.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l192 192z" />
								</svg>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 header-control">
						<div class="menu-bar d-lg-none d-block">
							<svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="bars" role="img"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
								class="svg-inline--fa fa-bars fa-w-14">
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
											class="header-search-form input-group search-bar" role="search">
											<input type="text" name="query" required
												class="input-group-field auto-search search-auto form-control"
												placeholder="Nhập tên món ăn..." autocomplete="off">
											<input type="hidden" name="type" value="product">
											<button type="submit" class="btn icon-fallback-text" aria-label="Tìm kiếm"
												title="Tìm kiếm">
												<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M14.1404 13.4673L19.852 19.1789C20.3008 19.6276 19.6276 20.3008 19.1789 19.852L13.4673 14.1404C12.0381 15.4114 10.1552 16.1835 8.09176 16.1835C3.6225 16.1835 0 12.5613 0 8.09176C0 3.6225 3.62219 0 8.09176 0C12.561 0 16.1835 3.62219 16.1835 8.09176C16.1835 10.1551 15.4115 12.038 14.1404 13.4673ZM0.951972 8.09176C0.951972 12.0356 4.14824 15.2316 8.09176 15.2316C12.0356 15.2316 15.2316 12.0353 15.2316 8.09176C15.2316 4.14797 12.0353 0.951972 8.09176 0.951972C4.14797 0.951972 0.951972 4.14824 0.951972 8.09176Z"
														fill="#222222"></path>
												</svg>
											</button>
											<div class="search-suggest">
												<div class="title">Kết quả tìm kiếm: </div>
												<div class="list-search"></div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="block-cart">
							<a href="/cart" class="header-cart" aria-label="Xem giỏ hàng" title="Giỏ hàng">
								<svg viewBox="0 0 27 26" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path
										d="M8.47253 20.4219C6.94111 20.4219 5.69971 21.6707 5.69971 23.211C5.69971 24.7513 6.94117 26 8.47253 26C10.004 26 11.2454 24.7513 11.2454 23.211C11.2454 21.6707 10.004 20.4219 8.47253 20.4219ZM8.47253 24.7605C7.62176 24.7605 6.93209 24.0668 6.93209 23.211C6.93209 22.3553 7.62176 21.6616 8.47253 21.6616C9.32331 21.6616 10.013 22.3553 10.013 23.211C10.013 24.0668 9.32331 24.7605 8.47253 24.7605Z"
										fill="white"></path>
									<path
										d="M20.1801 20.4219C18.6486 20.4219 17.4072 21.6707 17.4072 23.211C17.4072 24.7513 18.6487 26 20.1801 26C21.7114 26 22.9529 24.7513 22.9529 23.211C22.9529 21.6707 21.7115 20.4219 20.1801 20.4219ZM20.1801 24.7605C19.3293 24.7605 18.6396 24.0668 18.6396 23.211C18.6396 22.3553 19.3293 21.6616 20.1801 21.6616C21.0308 21.6616 21.7205 22.3553 21.7205 23.211C21.7206 24.0668 21.0308 24.7605 20.1801 24.7605Z"
										fill="white"></path>
									<path
										d="M26.4343 4.15262C26.306 4.01162 26.1304 3.92336 25.9413 3.90468L5.88457 3.62578L5.33001 1.92135C4.93933 0.781956 3.87856 0.0127528 2.6804 0H0.616185C0.275865 0 0 0.277478 0 0.619787C0 0.962097 0.275865 1.23957 0.616185 1.23957H2.6804C3.35036 1.25446 3.94031 1.68717 4.15926 2.32422L8.07203 14.1931L7.76397 14.9059C7.42035 15.7971 7.52354 16.8003 8.04125 17.6019C8.554 18.3893 9.41662 18.8752 10.352 18.9035H22.3368C22.6771 18.9035 22.9529 18.626 22.9529 18.2837C22.9529 17.9414 22.6771 17.6639 22.3368 17.6639H10.3519C9.8237 17.6506 9.33748 17.3711 9.0579 16.9202C8.78145 16.4747 8.72466 15.9259 8.90387 15.4326L9.15037 14.8748L22.121 13.5113C23.5458 13.3535 24.7178 12.3112 25.0479 10.9082L26.5268 4.67934C26.5934 4.49997 26.5581 4.29824 26.4343 4.15262ZM23.8463 10.6293C23.6463 11.5325 22.884 12.1986 21.967 12.2718L9.15037 13.6043L6.2851 4.86535L25.1711 5.14425L23.8463 10.6293Z"
										fill="white"></path>
								</svg>
								<span class="count_item_pr">3</span>
							</a>
							<div class="top-cart-content">
								<div class="CartHeaderContainer"></div>
							</div>
						</div>
						<div class="account-header">
							<svg viewBox="0 0 512 512">
								<path style="fill: #fff;"
									d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148    C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962    c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216    h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40    c59.551,0,108,48.448,108,108S315.551,256,256,256z"
									data-original="#222222" class="active-path" fill="#222222"></path>
							</svg>
							<ul>
								<li class="ng-scope">
									<a rel="nofollow" href="/account/login" title="Đăng nhập">Đăng nhập</a>
								</li>
								<li class="ng-scope">
									<a rel="nofollow" href="/account/register" title="Đăng ký">Đăng ký</a>
								</li>
								<li>
									<a class="js-wishlist-link" href="/mon-an-yeu-thich" aria-label="Món ăn Yêu thích"
										title="Món ăn Yêu thích">Món ăn yêu thích</a>
								</li>
							</ul>
						</div>
						<a href="/he-thong-nha-hang" title="Hệ thống cửa hàng" class="local">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
								class="bi bi-geo-alt" viewBox="0 0 16 16">
								<path fill="#fff"
									d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
								<path fill="#fff"
									d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
							</svg>
						</a>
						<a class="button-header" href="/dat-ban" title="đặt bàn">Đặt bàn</a>
					</div>
					<div class="col-12 header-control  d-lg-none d-block">
						<div class="search-smart search-smart-mb" style="display: none">
							<form action="/search" method="get" class="header-search-form input-group search-bar"
								role="search">
								<input type="text" name="query" required
									class="input-group-field auto-search search-auto form-control"
									placeholder="Nhập tên món ăn..." autocomplete="off">
								<input type="hidden" name="type" value="product">
								<button type="submit" class="btn icon-fallback-text" aria-label="Tìm kiếm"
									title="Tìm kiếm">
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<path
											d="M14.1404 13.4673L19.852 19.1789C20.3008 19.6276 19.6276 20.3008 19.1789 19.852L13.4673 14.1404C12.0381 15.4114 10.1552 16.1835 8.09176 16.1835C3.6225 16.1835 0 12.5613 0 8.09176C0 3.6225 3.62219 0 8.09176 0C12.561 0 16.1835 3.62219 16.1835 8.09176C16.1835 10.1551 15.4115 12.038 14.1404 13.4673ZM0.951972 8.09176C0.951972 12.0356 4.14824 15.2316 8.09176 15.2316C12.0356 15.2316 15.2316 12.0353 15.2316 8.09176C15.2316 4.14797 12.0353 0.951972 8.09176 0.951972C4.14797 0.951972 0.951972 4.14824 0.951972 8.09176Z"
											fill="#222222"></path>
									</svg>
								</button>
								<div class="search-suggest">
									<div class="title">Kết quả tìm kiếm: </div>
									<div class="list-search"></div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header> -->
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
<!-- <link rel="preload" as="script"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952" />
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/jquery.js?1686650273952"
		type="text/javascript"></script>

	<link rel="preload" as="script"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952" />
	<script src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/swiper.js?1686650273952"
		type="text/javascript"></script>

	<link rel="preload" as="script" href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/lazy.js?1686650273952" />
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
<!-- <link href="\css\menu.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- <link href="\css\index.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- <link href="\css\q.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- <link href="\css\s.css" rel="stylesheet" type="text/css" media="all" />  -->

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
								<li class="nav-item  "><a class="a-img" href=""
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
									href="html/monngonmoingay/monngonmoingay.jsp"
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
									href="account\login.html" title="Đăng nhập">Đăng nhập</a></li>
								<li class="ng-scope"><a rel="nofollow"
									href="account\register.html" title="Đăng ký">Đăng ký</a></li>
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
	<%
	String e_phoneNumber = request.getAttribute("e_phoneNumber") + "";
	String e_quantity = request.getAttribute("e_quantity") + "";
	String phoneBooking = request.getAttribute("phone") + "";
	String quantityBooking = request.getAttribute("quantity") + "";

	String nameBooking = request.getAttribute("name") + "";
	String emailBooking = request.getAttribute("email") + "";
	String dateBooking = request.getAttribute("date") + "";
	nameBooking = nameBooking.equals("null") ? "" : nameBooking;
	emailBooking = phoneBooking.equals("null") ? "" : emailBooking;
	dateBooking = dateBooking.equals("null") ? "" : dateBooking;

	e_phoneNumber = (e_phoneNumber.equals("null")) ? "" : e_phoneNumber;
	e_quantity = (e_quantity.equals("null")) ? "" : e_quantity;
	%>

	<section id="dat-ban" class="section_datban">
		<div class="container">
			<div class="row row-fix">
				<div class="col-xl-6 col-lg-12 datban">
					<div class="title-index">
						<h2>Liên hệ đặt bàn</h2>
						<span class="content-title"></span>
					</div>
					<%
					if (request.getAttribute("success") == "true") {
					%>
					<p class="alert"
						style="background: #83c54e; color: #fff; padding: 5px 10px; border-radius: 6px;">Bạn
						đã đặt bàn thành công</p>
					<%
					}
					%>

					<div id="pagelogin">
						<form action="datban" method="post" id="contact"
							accept-charset="UTF-8">
							<input name="FormType" type="hidden" value="contact" /> <input
								name="utf8" type="hidden" value="true" /> <input type="hidden"
								id="Token-18d21fe2b824446591a8ff18f6fb342d" name="Token" />
							<p id="errorFills" style="margin-bottom: 10px; color: red;"></p>
							<div class="form-signup clearfix">
								<div class="group_contact row">
									<fieldset class="form-group">
										<label>Tên của bạn:</label> <input
											placeholder="Tên của bạn..." type="text"
											class="form-control form-control-lg" required
											value="${name}" name="name">
									</fieldset>
									<fieldset class="form-group">
										<label>Email của bạn:</label> <input placeholder="Email"
											type="email" required id="email1"
											class="form-control form-control-lg"
											value="${email}" name="email">
									</fieldset>
									<fieldset class="form-group">
										<label>Số điện thoại của bạn:</label> <input
											placeholder="Số điện thoại..." type="number"
											class="form-control form-control-lg" required
											value="${phoneNumber}" name="phoneNumber"> <span color="red"><%=e_phoneNumber%></span>
									</fieldset>
									<fieldset class="form-group">
										<label>Bạn có thể đến dùng ngày nào?</label> <input
											class=" tourmaster-datepicker" id="date" name="date"
											type="text" placeholder="Chọn Ngày" value="${date}"
											data-date-format="dd MM yyyy" required />
									</fieldset>
									<fieldset class="form-group">
										<label>Bạn đi mấy người?</label> <input
											placeholder="Số người..." type="number"
											class="form-control form-control-lg" required
											value="<%=quantityBooking%>" name="quantity"> <span color="red"><%=e_quantity%></span>
									</fieldset>
									<fieldset class="form-group">
										<label>Thời gian bạn đến?</label> <input type="time"
											class="form-control form-control-lg" required name="time">
									</fieldset>
									<textarea style="display: none" placeholder="Nội dung"
										name="body" id="comment"
										class="form-control content-area form-control-lg" rows="5"
										Required>Liên hệ đặt bàn</textarea>
									<p class="des">
										Khách đặt tiệc hội nghị, liên hoan vui lòng gọi trực tiếp: <a
											href="tel:19006750">1900 6750</a>
									</p>
									<div class="submit">
										<button type="submit" class="btn-primary button_45 btn">Đặt
											bàn ngay</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">
		<div class="mid-footer">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-12 col-lg-5 link-list col-footer ft-info">
						<div class="logo">
							<a href="/" title="Logo"> <img width="172" height="50"
								src="images/logo.png" alt="Dola Restaurant">
							</a>
						</div>

						<div class="ft-description">Nhà hàng chúng tôi luôn luôn đặt
							khách hàng lên hàng đầu, tận tâm phục vụ, mang lại cho khách hàng
							những trãi nghiệm tuyệt với nhất. Các món ăn với công thức độc
							quyền sẽ mang lại hương vị mới mẻ cho thực khách. Dola Restaurant
							xin chân thành cảm ơn.</div>
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
	<!-- phải có cái này mới hiện ảnh chỗ bảng đen khi ấn tam giác gần menu -->
	<script
		src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/quickview.js?1686650273952"
		type="text/javascript"></script>
	<link rel="preload" as="script"
		href="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.js?1686650273952" />
	<script
		src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/main.js?1686650273952"
		type="text/javascript"></script>
	<script
		src="//bizweb.dktcdn.net/100/469/097/themes/882205/assets/index.js?1686650273952"
		type="text/javascript"></script>

</body>

</html>