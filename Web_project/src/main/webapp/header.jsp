<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

							<li class="nav-item "><a class="a-img" href="trangchu"
								title="Giới thiệu"> Giới thiệu </a></li>
							<li data-title="Menu" data-link="#" data-img="images/biamenu.jpg"
								class="nav-item    has-mega "><a class="a-img caret-down"
								href="html/menu\menu.html" title="Menu"> Menu </a> <!-- DẤU CỘNG MENU KHI -->
								<i class="fa fa1 fa-caret-down"></i>

								<div class="mega-content d-lg-block d-none">
									<div class="row">
										<div class="col-lg-9">
											<ul class="level0">

												<li class="level1 parent item fix-navs" data-title="Khai vị"
													data-link="khaivi.html" data-img="images/khaivi.jpg"><a
													class="hmega" href="html/menu\khaivi.html" title="Khai vị">Khai
														vị</a>
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
													data-title="Canh - Tiềm - Sup" data-link="canhtiemsup.html"
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

												<li class="level1 parent item fix-navs" data-title="Đồ uống"
													data-link="douong.html" data-img="images/trasuaolong.webp"><a
													class="hmega" href="douong.html" title="Đồ uống">Đồ
														uống</a>
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
									<li><a class="caret-down" href="html/menu\khaivi.html"
										title="Khai vị"> Khai vị </a> <!-- dấu cộng khai vị --> <i
										class="fa fa-caret-down"></i>
										<ul>
											<li><a title="Salad" class="a3">Salad</a></li>
											<li><a title="Gỏi" class="a3">Gỏi</a></li>
										</ul></li>
									<li><a class="caret-down" href="html/menu\monchinh.html"
										title="Món chính"> Món chính </a> <i class="fa fa-caret-down"></i>
										<ul>
											<li><a title="Món bò" class="a3">Món bò</a></li>
											<li><a title="Món gà" class="a3">Món gà</a></li>
											<li><a title="Món heo" class="a3">Món heo</a></li>
											<li><a title="Món cá" class="a3">Món cá</a></li>
										</ul></li>
									<li><a class="caret-down"
										href="html/menu\canhtiemsup.html" title="Canh - Tiềm - Sup">
											Canh - Tiềm - Sup </a> <i class="fa fa-caret-down"></i>
										<ul>
											<li><a title="Canh" class="a3">Canh</a></li>
											<li><a title="Tiềm" class="a3">Tiềm</a></li>
											<li><a title="Súp" class="a3">Súp</a></li>
										</ul></li>
									<li><a class="caret-down" href="html/menu\commichao.html"
										title="Cơm - Mì - Cháo"> Cơm - Mì - Cháo </a> <i
										class="fa fa-caret-down"></i>
										<ul>
											<li><a title="Cơm" class="a3">Cơm</a></li>
											<li><a title="Mì" class="a3">Mì</a></li>
											<li><a title="Cháo" class="a3">Cháo</a></li>
										</ul></li>
									<li><a class="caret-down"
										href="html/menu\banhvatrangmieng.html"
										title="Bánh và tráng miệng"> Bánh và tráng miệng </a> <i
										class="fa fa-caret-down"></i>
										<ul>
											<li><a title="Bánh" class="a3">Bánh</a></li>
											<li><a title="Tráng miệng" class="a3">Tráng miệng</a></li>
										</ul></li>
									<li><a class="caret-down" href="html/menu\douong.html"
										title="Đồ uống"> Đồ uống </a> <i class="fa fa-caret-down"></i>
										<ul>
											<li><a title="Cà phê" class="a3">Cà phê</a></li>
											<li><a title="Trà sữa" class="a3">Trà sữa</a></li>
										</ul></li>
								</ul></li>

							<li class="nav-item "><a class="a-img" href="menu"
								title="Món ngon mỗi ngày"> Món ngon mỗi ngày </a></li>

							<li class="nav-item "><a class="a-img"
								href="html/lienhe\lienhe.html" title="Liên hệ"> Liên hệ </a></li>
							<li class="account d-lg-none d-block">
								
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
					</div>
					<div class="account-header">
						<svg viewBox="0 0 512 512">
								<path style="fill: #fff;"
								d="M437.02,330.98c-27.883-27.882-61.071-48.523-97.281-61.018C378.521,243.251,404,198.548,404,148    C404,66.393,337.607,0,256,0S108,66.393,108,148c0,50.548,25.479,95.251,64.262,121.962    c-36.21,12.495-69.398,33.136-97.281,61.018C26.629,379.333,0,443.62,0,512h40c0-119.103,96.897-216,216-216s216,96.897,216,216    h40C512,443.62,485.371,379.333,437.02,330.98z M256,256c-59.551,0-108-48.448-108-108S196.449,40,256,40    c59.551,0,108,48.448,108,108S315.551,256,256,256z"
								data-original="#222222" class="active-path" fill="#222222"></path>
							</svg>
						<ul>
							<c:choose>
								<c:when test="${user == null}">
									<li class="ng-scope"><a rel="nofollow" href="dangnhap"
										title="Đăng nhập">Đăng nhập</a></li>
									<li class="ng-scope"><a rel="nofollow" href="dangky"
										title="Đăng ký">Đăng ký</a></li>
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

							<li><a class="js-wishlist-link" href="monanyeuthich.html"
								aria-label="Món ăn Yêu thích" title="Món ăn Yêu thích">Món
									ăn yêu thích</a></li>
						</ul>
					</div>
					<a class="button-header" href="/datban.jsp" title="đặt bàn">Đặt
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