<!DOCTYPE html>
<html lang="en">
  <com:THead>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="fa">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/vendors/font-awesome/style-page.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="assets/build/css/custom.min.css" rel="stylesheet">
  </com:THead>

  <body class="nav-md">
    <div class="container body">  
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="<%=$this->Service->constructUrl("home")%>" class="site_title"><i class="fa fa-book"></i> <span style="font-family:yekan;text-align:right">جزیره کتاب</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="image/jazire_ketab.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info" style="font-family:yekan;">
                <span style="color:white"><com:TLiteral id="today"/></span> 
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu" style="font-size:15px;font-family:yekan;">
              <div class="menu_section"> 
                <ul class="nav side-menu">
               	  <li><a><i class="fa fa-home"></i> خانه  <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%=$this->Service->constructUrl("AdminHome")%>" > صفحه اصلی</a></li>
                      <li><a href="<%=$this->Service->constructUrl("Home")%>" > صفحه اصلی جزیره کتاب</a></li> 
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-file"></i> صفحات <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%=$this->Service->constructUrl("setting.ShopSetting")%>" >تنظیمات صفحات</a></li>
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-users"></i> کاربران <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%=$this->Service->constructUrl("users.NewUser")%>" >کاربر جدید</a></li>
                      <li><a href="<%=$this->Service->constructUrl("users.UsersList")%>" >لیست کاربران</a></li>  
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-list"></i>سفارشات<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="<%=$this->Service->constructUrl("order.OrdersList")%>">لیست سفارشات </a></li> 
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-user-plus"></i> ادمین <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%=$this->Service->constructUrl("admin.NewAdmin")%>" >ادمین جدید</a></li>
                      <li><a href="<%=$this->Service->constructUrl("admin.AdminList")%>" >لیست ادمین ها</a></li>
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-book"></i>محصولات<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                      <li><a href="<%=$this->Service->constructUrl("product.NewProduct")%>">کتاب جدید </a></li>
                      <li><a href="<%=$this->Service->constructUrl("product.ProductsList")%>"> لیست کتاب ها</a></li>
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-list-alt"></i>دسته بندی<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                      <li><a href="<%=$this->Service->constructUrl("product.NewCat")%>"> افزودن دسته بندی سطح اول</a></li> 
                      <li><a href="<%=$this->Service->constructUrl("product.CatList")%>"> لیست دسته بندی سطح اول</a></li> 
                      <li><a href="<%=$this->Service->constructUrl("product.NewSubCat")%>"> افزودن دسته بندی سطح دوم</a></li> 
                      <li><a href="<%=$this->Service->constructUrl("product.SubCatList")%>">لیست دسته بندی سطح دوم</a></li>
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-newspaper-o"></i>انتشارات<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                        <li><a href="<%=$this->Service->constructUrl("publisher.NewPublisher")%>"> افزودن انتشارت</a></li> 
                        <li><a href="<%=$this->Service->constructUrl("publisher.PublisherList")%>"> لیست انتشارات</a></li>  
                    </ul>
                  </li> 
                  <li><a><i class="fa fa-edit"></i>
                    نویسنده<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                        <li><a href="<%=$this->Service->constructUrl("author.NewAuthor")%>"> افزودن نویسنده</a></li> 
                        <li><a href="<%=$this->Service->constructUrl("author.AuthorsList")%>"> لیست نویسندگان</a></li> 
                    </ul>
                  </li>  
                  <li><a><i class="fa fa-language"></i>مترجم<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                        <li><a href="<%=$this->Service->constructUrl("translation.NewTranslator")%>"> افزودن مترجم</a></li> 
                        <li><a href="<%=$this->Service->constructUrl("translation.TranslatorList")%>"> لیست مترجمان</a></li> 
                    </ul>
                  </li>  
                  <li><a><i class="fa fa-quote-left"></i>نقل قول<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                        <li><a href="<%=$this->Service->constructUrl("quote.NewQuote")%>"> افزودن نقل قول</a></li> 
                        <li><a href="<%=$this->Service->constructUrl("quote.QuoteList")%>"> لیست نقل قول ها</a></li> 
                    </ul>
                  </li>  
                  <li><a><i class="fa fa-lightbulb-o"></i>نظرات کاربران<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu"> 
                        <li><a href="<%=$this->Service->constructUrl("product.ProductsComment")%>"> نظرات کاربران درباره محصولات</a></li> 
                    </ul>
                  </li> 
                </ul>
              </div> 
            </div>
            <!-- /sidebar menu --> 
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div> 
              <ul class="nav navbar-nav navbar-right">
              	<li class="" > 
	              	<a href="<%=$this->Service->constructUrl("AdminLogin.logout")%>"><i style="font-size: 25px;" class="fa fa-sign-out pull-right"></i>
	              		<span style="font-family:yekan;font-size:18px;">خروج</span> 
	              	</a>  
              	</li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <!-- TContentHolder -->
                <com:TForm>
                	<com:TContentPlaceHolder id="content"/>
                </com:TForm>
                <div id="fadeoverlay"
					        style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background-color:gainsboro; opacity:0.8;    z-index: 10000;">
					        <img src="image/gif/preloader1.gif" style="position: absolute; top: 35%; left: 45%; width: 10%;"></img>
				        </div>
																
                <script type="text/javascript" language="javascript">
                  function
                  hidefadeOverLay(){
                  $('fadeoverlay').style.display = "none";
                  }
                </script>
                <!-- TContentHolder -->
              </div><!-- /div class="col col col" -->
            </div><!-- /div class="row" -->

          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right" style="font-family:yekan;"> 
             <p> سامانه جزیره کتاب- تمام قوانین این سامانه تحت قانون کپی میباشد ©</p>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
	
    <!-- jQuery -->
   	<script src="js/jquery.min.js"></script>
    <!-- Bootstrap - important js-->
    <script src="assets/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Custom Theme Scripts - important js-->
    <script src="assets/build/js/custom.min.js"></script>
    <com:TContentPlaceHolder id="script"/>
   
  </body>
</html>
