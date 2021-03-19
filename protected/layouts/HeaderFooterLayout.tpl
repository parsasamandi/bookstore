<!DOCTYPE html>
<html lang="en">
<com:THead>
	<title>فروش تجهیزات کمپ</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/shop/css/animate.css">
	<link rel="stylesheet" href="assets/shop/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/shop/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="assets/shop/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/shop/css/flaticon.css">
	<link rel="stylesheet" href="assets/shop/css/style.css">
	<link href="assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="assets/shop/slick/fullscreen.css">
	<link rel="stylesheet" type="text/css" href="assets/shop/css/headerFooterStyle.css">
	<link rel="stylesheet" type="text/css" href="assets/shop/slick/slick.css">

</com:THead>

<style>
	@font-face {
		font-family: "DiodrumArabicBold";
		src: url("assets/shop/fonts/dambeldor.ttf") format('truetype');
	}

	@font-face {
		font-family: "BYekan";
		src: url("assets/shop/fonts/BYekan.ttf");
	}
</style>

<script>
	function myFunction1() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
			x.className += " responsive";

		} else {
			x.className = "topnav";
		}
	}
</script>

<body style="background-color:#f5f5f5" class="nav-md">
	<div style="background-color:#FFD700;height:35px" style="overflow: hidden;float: right;
		display: block;
		color: black;
		font-family: 'BYekan';
		text-align: center;
		padding: 20px 20px;
		text-decoration: none;
		font-size: 19px;">

		<com:TLiteral id="register" />
		
		&nbsp;
		<com:TLiteral id="login_theme"/>
		
		&nbsp;
		<com:TLiteral id="profile_theme"/>
		
		<a href="<%=$this->Service->constructUrl("home")%>" class="nav_style active">
			<i class="fa fa-home"></i>
		</a>
		<a href="<%=$this->Service->constructUrl("package.Cart")%>" class="nav_style active">
			<i class="fa fa-shopping-cart"></i>
		</a>
		<a id="icon_style" href="https://www.instagram.com/skyfallcamp/" class="active">
			<span style="font-size:15px;margin-top:0.2em" class="fa fa-instagram"></span>
		</a>
		<a href="https://www.twitter.com/bookisland6" class="icon_style active">
			<span style="font-size:15px;margin-top:0.2em" class="fa fa-twitter"></span>
		</a>
		<a href="" class="icon_style active">
			<span style="font-size:15px;margin-top:0.2em" class="fa fa-telegram"></span>
		</a>
		&nbsp;
	</div>

	<com:TForm>
		<div style="background-color:white">
			<!-- navbar -->
			<div class="topnav nav_margin" id="myTopnav">
				<!-- backend -->
				<com:TLiteral id="lit_header"/>

				<com:TDropDownList ID="txt_Search" CssClass="txt_search" style="font-family:BYekan;font-size:14px;width:60px;height:29.5px;" >
						<com:TListItem Value="-1" Text="همه" />
						<com:TListItem Value="0" Text="کتاب" />
						<com:TListItem Value="1" Text="نویسنده"/>
						<com:TListItem Value="2" Text="مترجم" />
						<com:TListItem Value="3" Text="ناشر" />
						<com:TListItem Value="3" Text="قیمت" />
				</com:TDropDownList>
				<com:TActiveTextBox id="SearchText" style="font-size: 15px;font-family: 'BYekan';direction: rtl;height: 29.5px;width: 150px;border-radius:0px" Attributes.placeholder="جستجو..." />
				<!-- <com:TButton Text="🔎" style="font-family:BYekan;font-size:14px;padding-right:1.4em;width:15px;height:28.5px;"/> -->
				<com:TButton Text="&nbsp;&nbsp;🔎" style="font-family:BYekan;font-size:14px;"
					OnClick="search_product" /> 

				<a href="javascript:void(0);" class="icon" onclick="myFunction1()">&#9776;</a>
			</div>
		</div>

		<com:TContentPlaceHolder id="content" />

		<footer class="ftco-footer">
			<div class="container">
				<div class="row mb-5">
					<div class="col-sm-12 col-md">
						<div class="ftco-footer-widget mb-4">
							<h2 style="direction:rtl;text-align:right;font-family:DiodrumArabicBold;font-size:15px">
								<a href="#">
									<com:TLiteral id="lit_footer_about" />
								</a>
							</h2>
							<p style="direction:rtl;text-align:right;font-family:BYekan">
								<com:TLiteral id="lit_footer_desc" />
							</p>
							<ul class="ftco-footer-social list-unstyled mt-2">
								<li style="text-align:right;float:right" class="ftco-animate"><a
										href=""><span style="color:black"
											class="fa fa-telegram"></span></a></li>
								<li style="text-align:right;float:right" class="ftco-animate"><a
										href="https://www.twitter.com/bookisland6"><span style="color:black"
											class="fa fa-tripadvisor"></span></a></li>
								<li style="text-align:right;float:right" class="ftco-animate"><a
										href="https://www.instagram.com/jazire_ketab/"><span style="color:black"
											class="fa fa-instagram"></span></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-12 col-md">
						<div class="ftco-footer-widget mb-4 ml-md-4">
							<h2 style="direction:rtl;font-family:DiodrumArabicBold;text-align:right"
								class="ftco-heading-2">
								حساب کاربری من</h2>
							<ul class="list-unstyled">
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("profile")%>"><span
											style="text-align:right" class="fa fa-chevron-left mr-2"></span>حساب
										کاربری
										من</a></li>
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("users.NewUser")%>"><span
											style="text-align:right" class="fa fa-chevron-left mr-2"></span>ثبت
										نام</a>
								</li>
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("login.login")%>"><span
											style="text-align:right" class="fa fa-chevron-left mr-2"></span>ورود</a>
								</li>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-12 col-md">
						<div class="ftco-footer-widget mb-4 ml-md-4">
							<h2 style="direction:rtl;font-family:DiodrumArabicBold;text-align:right"
								class="ftco-heading-2">
								اطلاعات</h2>
							<ul class="list-unstyled">
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("home")%>"><span
											class="fa fa-chevron-left mr-2"></span>درباره ما</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-12 col-md">
						<div class="ftco-footer-widget mb-4">
						<h2 style="direction:rtl;font-family:DiodrumArabicBold;text-align:right" class="ftco-heading-2">
							دسترسی سریع</h2>
						<ul class="list-unstyled">
							<li style="text-align:right"><a style="direction:rtl;font-family:BYekan;text-align:right"
								href="<%=$this->Service->constructUrl("product.Products")%>"><span class="fa fa-chevron-left mr-2"></span>لیست کتاب ها</a></li>
							<li style="text-align:right"><a style="direction:rtl;font-family:BYekan;text-align:right"
								href="<%=$this->Service->constructUrl("package.Cart")%>"><span class="fa fa-chevron-left mr-2"></span>سبد خرید</a></li>
							<li style="text-align:right">
								<com:TLiteral id="NewAddress" />
							</li>
							<li style="text-align:right">
								<com:TLiteral id="AddressList" />
							</li>	
							<li style="text-align:right">
								<com:TLiteral id="CommentList" />
							</li>
						</ul>
					</div>
					</div>
					<!-- <div class="col-sm-12 col-md">
						<div class="ftco-footer-widget mb-4">
							<h2 style="direction:rtl;font-family:DiodrumArabicBold;text-align:right"
								class="ftco-heading-2">
								خدمات ما</h2>
							<ul class="list-unstyled">
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("tour.ToursListHome")%>"><span
											class="fa fa-chevron-left mr-2"></span>برنامه ها</a></li>
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("Map")%>"><span
											class="fa fa-chevron-left mr-2"></span>آب و هوا و مسیریابی</a></li>
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("vehicle.VehiclesListHome")%>"><span
											class="fa fa-chevron-left mr-2"></span>وسایل نقلیه</a></li>
								<li style="text-align:right"><a
										style="direction:rtl;font-family:BYekan;text-align:right"
										href="<%=$this->Service->constructUrl("travel.TravelEquipmentListHome")%>"><span
											class="fa fa-chevron-left mr-2"></span>تجهیزات</a></li>

							</ul>
						</div>
					</div> -->
				</div>
			</div>
			<div class="container-fluid px-0 py-5 bg-black">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="mb-0" style="color: rgba(255,255,255,.5);">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>document.write(new Date().getFullYear());</script> All rights reserved | This
								template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib.com</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>

	</com:TForm>

	<script src="assets/shop/js/jquery.min.js"></script>
	<script src="assets/shop/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="assets/shop/js/popper.min.js"></script>
	<script src="assets/shop/js/bootstrap.min.js"></script>
	<script src="assets/shop/js/jquery.easing.1.3.js"></script>
	<script src="assets/shop/js/jquery.waypoints.min.js"></script>
	<script src="assets/shop/js/jquery.stellar.min.js"></script>
	<script src="assets/shop/js/owl.carousel.min.js"></script>
	<script src="assets/shop/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/shop/js/jquery.animateNumber.min.js"></script>
	<script src="assets/shop/js/scrollax.min.js"></script>
	<script src="assets/shop/js/main.js"></script>
	<script src="assets/shop/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assets/shop/slick/fullscreen.js" type="text/javascript" charset="utf-8"></script>
	<script>jQuery.noConflict();</script>
	<com:TContentPlaceHolder id="script" />

</body>

</html>