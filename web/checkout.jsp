<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Set cache control headers
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

    // Check if the user is logged in
    HttpSession userSession = request.getSession(false);
    String userEmail = (String) userSession.getAttribute("name");
    boolean isLoggedIn = (userEmail != null && !userEmail.isEmpty());

    // If the user is not logged in, redirect to the login page
    if (!isLoggedIn) {
        response.sendRedirect("login.jsp");
        return;
    }
%>


<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Elite Gmart</title>
    <meta name="author" content="Frutin">
    <meta name="description" content="Frutin - Organic and Healthy Food HTML Template">
    <meta name="keywords" content="Frutin - Organic and Healthy Food HTML Template">
    <meta name="robots" content="INDEX,FOLLOW">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicons - Place favicon.ico in the root directory -->
<!--
    <link rel="apple-touch-icon" sizes="57x57" href="assets/img/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="assets/img/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/img/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/img/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/img/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/img/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/img/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/img/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/img/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
-->

    <!--==============================
	  Google Fonts
	============================== -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:opsz,wght@9..40,100;9..40,200;9..40,300;9..40,400;9..40,500;9..40,600;9..40,700&family=Lexend:wght@300;400;500;600;700;800;900&family=Lobster&display=swap" rel="stylesheet">

    <!--==============================
	    All CSS File
	============================== -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Fontawesome Icon -->
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="assets/css/magnific-popup.min.css">
    <!-- Swiper Js -->
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>

    <!--[if lte IE 9]>
    	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  	<![endif]-->


    <!--********************************
   		Code Start From Here 
	******************************** -->

    <!--==============================
     Preloader
  ==============================-->
    <div class="preloader ">
        <button class="th-btn preloaderCls">Cancel Preloader </button>
        <div class="preloader-inner">
            <div class="loader">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div><!--==============================
    Sidemenu
============================== -->
    <div class="sidemenu-wrapper sidemenu-cart d-none d-lg-block ">
        <div class="sidemenu-content">
            <button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget woocommerce widget_shopping_cart">
                <h3 class="widget_title">Shopping cart</h3>
                <div class="widget_shopping_cart_content">
                    <ul class="woocommerce-mini-cart cart_list product_list_widget" id="cart-list-home">
                        <!-- Cart items will be dynamically added here -->
                    </ul>
                    <p class="woocommerce-mini-cart__total total">
                        <strong>Subtotal:</strong>
                        <span class="woocommerce-Price-amount amount" id="cart-subtotal-home">
                            <span class="woocommerce-Price-currencySymbol">&#8377;</span>0.00
                        </span>
                    </p>
                    <p class="woocommerce-mini-cart__buttons buttons">
                        <a href="cart.jsp" class="th-btn wc-forward">View cart</a>
                        <a href="checkout.jsp" class="th-btn checkout wc-forward">Checkout</a>
                    </p>
                </div>
            </div>
        </div>
        
    </div>
    <div class="popup-search-box d-none d-lg-block">
        <button class="searchClose"><i class="fal fa-times"></i></button>
        <form action="#">
            <input type="text" placeholder="What are you looking for?">
            <button type="submit"><i class="fal fa-search"></i></button>
        </form>
    </div><!--==============================
    Mobile Menu
  ============================== -->
    <div class="th-menu-wrapper">
        <div class="th-menu-area text-center">
            <button class="th-menu-toggle"><i class="fal fa-times"></i></button>
            <div class="mobile-logo">
                <a href="index.jsp"><img src="assets/img/logo-change.svg" alt="Elight"></a>
            </div>
            <div class="th-mobile-menu">
                <ul>
                 
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li class="menu-item-has-children">
                        <a href="#">Service</a>
                        <ul class="sub-menu">
                            <li><a href="#">Service</a></li>
                            <li><a href="#">Service Details</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li class="menu-item-has-children">
                                <a href="#">Shop</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Shop</a></li>
                                    <li><a href="#">Shop Details</a></li>
                                    <li><a href="#">Cart Page</a></li>
                                    <li><a href="#">Checkout</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Team Details</a></li>
                            <li><a href="#">Project Gallery</a></li>
                            <li><a href="#">Project Details</a></li>
                            <li><a href="#">Faq Page</a></li>
                            <li><a href="#">Error Page</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Blog Details</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--==============================
	Header Area
==============================-->
    <header class="th-header header-layout1">
        <div class="header-top">
            <div class="container">
                <div class="row justify-content-center justify-content-lg-between align-items-center gy-2">
                            <div class="col-auto d-none d-lg-block">
                                <p class="header-notice">Welcome to Elite Gmart!</p>
                            </div>
                            <div class="col-auto">
                                <div class="header-links">
                                    <ul>
                                        <li class="d-none d-xxl-inline-block"><i class="fal fa-location-dot"></i><a href="#">Hyderabad</a></li>
                                        
                                        <li>
                                            <a class="dropdown-toggle rounded" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <%
                                                    String email = (String) session.getAttribute("name");
                                                    if (email != null && email.contains("@")) {
                                                        String displayName = email.split("@")[0];
                                                        out.print(displayName);
                                                    } else {
                                                        out.print("User");
                                                    }
                                                %>
                                            </a>
                                            
                                        <% if (userEmail == null || userEmail.isEmpty()) { %>
				            <a href="register.jsp"><i class="w-icon-account"></i>Register | </a>
                                            <a href="login.jsp"><i class="w-icon-account"></i>Sign In</a>
				          
				        <% } else { %>
                                        <div class="mani dropdown">
                                                <div id="mycall" class="dropdown-menu" style="display: none;">
                                                    <a class="dropdown-item" href="profile.jsp">Profile</a>
                                                    <a class="dropdown-item" href="logout.jsp">Logout</a>
                                                </div>
                                        </div>
				        <% } %>
                                    </ul>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
        <div class="sticky-wrapper">
            <!-- Main Menu Area -->
            <div class="menu-area">
                <div class="container">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-auto">
                            <div class="header-logo">
                                <a href="index.jsp"><img src="assets/img/elight_logo_final.svg" width="100%" alt="Elight"></a>
                            </div>
                        </div>
                        <div class="col-auto">
                            <nav class="main-menu d-none d-lg-inline-block">
                                    <ul>
                                      
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">About Us</a></li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Service</a>
                                            <ul class="sub-menu">
                                                <li><a href="#">Service</a></li>
                                                <li><a href="#">Service Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Pages</a>
                                            <ul class="sub-menu">
                                                <li class="menu-item-has-children">
                                                    <a href="#">Shop</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="#">Shop</a></li>
                                                        <li><a href="#">Shop Details</a></li>
                                                        <li><a href="#">Cart Page</a></li>
                                                        <li><a href="#">Checkout</a></li>
                                                        <li><a href="#">Wishlist</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Team</a></li>
                                                <li><a href="#">Team Details</a></li>
                                                <li><a href="#">Project Gallery</a></li>
                                                <li><a href="#">Project Details</a></li>
                                                <li><a href="#">Faq Page</a></li>
                                                <li><a href="#">Error Page</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Blog</a>
                                            <ul class="sub-menu">
                                                <li><a href="#">Blog</a></li>
                                                <li><a href="#">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Contact</a>
                                        </li>
                                    </ul>
                                </nav>
                            <button type="button" class="th-menu-toggle d-block d-lg-none"><i class="far fa-bars"></i></button>
                        </div>
                        <div class="col-auto d-none d-xl-block">
                           <div class="header-button">
                                <button type="button" class="simple-icon searchBoxToggler"><i class="far fa-search"></i></button>
                                <button type="button" class="simple-icon sideMenuToggler">
                                    <span class="badge">0</span>
                                    <i class="fa-regular fa-cart-shopping"></i>
                                </button>
                                <a href="#" class="th-btn style4">Shop Now<i class="fas fa-chevrons-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--==============================
    Breadcumb
============================== -->
    <div class="breadcumb-wrapper " data-bg-src="assets/img/bg/breadcumb-bg.jpg">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title">Checkout</h1>
                <ul class="breadcumb-menu">
                    <li><a href="home-organic-farm.html">Home</a></li>
                    <li>Checkout</li>
                </ul>
            </div>
        </div>
    </div><!--==============================
Checkout Arae
==============================-->
    <!-- <div class="th-checkout-wrapper space-top space-extra-bottom">
        <div class="container">
            <div class="woocommerce-form-login-toggle">
                <div class="woocommerce-info">Returning customer? <a href="#" class="showlogin">Click here to login</a>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <form action="#" class="woocommerce-form-login">
                        <div class="form-group">
                            <label>Username or email *</label>
                            <input type="text" class="form-control" placeholder="Username or email">
                        </div>
                        <div class="form-group">
                            <label>Password *</label>
                            <input type="text" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <div class="custom-checkbox">
                                <input type="checkbox" id="remembermylogin">
                                <label for="remembermylogin">Remember Me</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="th-btn">Login</button>
                            <p class="mt-3 mb-0"><a class="text-reset" href="#">Lost your password?</a></p>
                        </div>
                    </form>
                </div>
            </div> -->
            <div class="woocommerce-form-coupon-toggle">
                <div class="woocommerce-info">Have a coupon? <a href="#" class="showcoupon">Click here to enter your code</a> </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <form action="#" class="woocommerce-form-coupon">
                        <div class="form-group">
                            <label>Coupon code</label>
                            <input type="text" class="form-control" placeholder="Write your coupon code">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="th-btn">Apply coupon</button>
                        </div>
                    </form>
                </div>
            </div>
            <form action="#" class="woocommerce-checkout mt-40">
                <div class="row ">
                    <div class="col-lg-6">
                        <h2 class="h4">Billing Details</h2>
                        <div class="row">
                            <div class="col-12 form-group">
                                <select class="form-select">
                                    <option>Kukatpally</option>
                                    <option>SR Nagar</option>
                                    <option>Pragathi Nagar</option>
                                    <option>Miyapur</option>
                                    <option>Kondapur</option>
                                </select>
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="text" class="form-control" placeholder="First Name">
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="text" class="form-control" placeholder="Last Name">
                            </div>
                            <div class="col-12 form-group">
                                <input type="text" class="form-control" placeholder="Your Company Name">
                            </div>
                            <div class="col-12 form-group">
                                <input type="text" class="form-control" placeholder="Street Address">
                                <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                            </div>
                            <div class="col-12 form-group">
                                <input type="text" class="form-control" placeholder="Town / City">
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="text" class="form-control" placeholder="Country">
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="text" class="form-control" placeholder="Postcode / Zip">
                            </div>
                            <div class="col-12 form-group">
                                <input type="text" class="form-control" placeholder="Email Address">
                                <input type="text" class="form-control" placeholder="Phone number">
                            </div>
                            <div class="col-12 form-group">
                                <input type="checkbox" id="accountNewCreate">
                                <label for="accountNewCreate">Create An Account?</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <p id="ship-to-different-address">
                            <input id="ship-to-different-address-checkbox" type="checkbox" name="ship_to_different_address" value="1" checked>
                            <label for="ship-to-different-address-checkbox">
                                Ship to a different address?
                                <span class="checkmark"></span>
                            </label>
                        </p>
                        <div class="shipping_address">
                            <div class="row">
                                <div class="col-12 form-group">
                                   <select class="form-select">
                                    <option>Kukatpally</option>
                                    <option>SR Nagar</option>
                                    <option>Pragathi Nagar</option>
                                    <option>Miyapur</option>
                                    <option>Kondapur</option>
                                </select>
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" class="form-control" placeholder="First Name">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" class="form-control" placeholder="Last Name">
                                </div>
                                <div class="col-12 form-group">
                                    <input type="text" class="form-control" placeholder="Your Company Name">
                                </div>
                                <div class="col-12 form-group">
                                    <input type="text" class="form-control" placeholder="Street Address">
                                    <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                                </div>
                                <div class="col-12 form-group">
                                    <input type="text" class="form-control" placeholder="Town / City">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" class="form-control" placeholder="Country">
                                </div>
                                <div class="col-md-6 form-group">
                                    <input type="text" class="form-control" placeholder="Postcode / Zip">
                                </div>
                                <div class="col-12 form-group">
                                    <input type="text" class="form-control" placeholder="Email Address">
                                    <input type="text" class="form-control" placeholder="Phone number">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 form-group">
                            <textarea cols="20" rows="5" class="form-control" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                        </div>
                    </div>
                </div>
            </form>
            <!-- <h4 class="mt-4 pt-lg-2">Your Order</h4>
            <form action="#" class="woocommerce-cart-form">
                <table class="cart_table mb-20">
                    <thead>
                        <tr>
                            <th class="cart-col-image">Image</th>
                            <th class="cart-col-productname">Product Name</th>
                            <th class="cart-col-price">Price</th>
                            <th class="cart-col-quantity">Quantity</th>
                            <th class="cart-col-total">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="cart_item">
                            <td data-title="Product">
                                <a class="cart-productimage" href="shop-details.html"><img width="91" height="91" src="assets/img/product/product_thumb_1_1.jpg" alt="Image"></a>
                            </td>
                            <td data-title="Name">
                                <a class="cart-productname" href="shop-details.html">Pooja Oil</a>
                            </td>
                            <td data-title="Price">
                                <span class="amount"><bdi><span>&#8377;</span>18</bdi></span>
                            </td>
                            <td data-title="Quantity">
                                <strong class="product-quantity">01</strong>
                            </td>
                            <td data-title="Total">
                                <span class="amount"><bdi><span>&#8377;</span>18</bdi></span>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot class="checkout-ordertable">
                        <tr class="cart-subtotal">
                            <th>Subtotal</th>
                            <td data-title="Subtotal" colspan="4"><span class="woocommerce-Price-amount amount"><bdi><span class="woocommerce-Price-currencySymbol">&#8377;</span>281.05</bdi></span></td>
                        </tr>
                        <tr class="woocommerce-shipping-totals shipping">
                            <th>Shipping</th>
                            <td data-title="Shipping" colspan="4"> Enter your address to view shipping options.
                            </td>
                        </tr>
                        <tr class="order-total">
                            <th>Total</th>
                            <td data-title="Total" colspan="4"><strong><span class="woocommerce-Price-amount amount"><bdi><span class="woocommerce-Price-currencySymbol">&#8377;</span>281.05</bdi></span></strong>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </form> -->
            <h4 class="mt-4 pt-lg-2">Your Order</h4>
<form action="#" class="woocommerce-cart-form">
    <table class="cart_table mb-20">
        <thead>
            <tr>
                <th class="cart-col-image">Image</th>
                <th class="cart-col-productname">Product Name</th>
                <th class="cart-col-price">Price</th>
                <th class="cart-col-quantity">Quantity</th>
                <th class="cart-col-total">Total</th>
            </tr>
        </thead>
        <tbody>
            <!-- Cart items will be dynamically added here -->
        </tbody>
        <tfoot class="checkout-ordertable">
            <tr class="cart-subtotal">
                <th>Subtotal</th>
                <td data-title="Subtotal" colspan="4">
                    <span class="woocommerce-Price-amount amount">
                        <bdi>
                            <span class="woocommerce-Price-currencySymbol">&#8377;</span>
                            <span id="cart-subtotal-cart-page">0.00</span>
                        </bdi>
                    </span>
                </td>
            </tr>
            <tr class="woocommerce-shipping-totals shipping">
                <th>Shipping</th>
                <td data-title="Shipping" colspan="4">Enter your address to view shipping options.</td>
            </tr>
            <tr class="order-total">
                <th>Total</th>
                <td data-title="Total" colspan="4">
                    <strong>
                        <span class="woocommerce-Price-amount amount">
                            <bdi>
                                <span class="woocommerce-Price-currencySymbol">&#8377;</span>
                                <span id="cart-total-cart-page">0.00</span>
                            </bdi>
                        </span>
                    </strong>
                </td>
            </tr>
        </tfoot>
    </table>
</form>

            <div class="mt-lg-3 mb-30">
                <div class="woocommerce-checkout-payment">
                    <ul class="wc_payment_methods payment_methods methods">
                        <li class="wc_payment_method payment_method_bacs">
                            <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="bacs" checked="checked">
                            <label for="payment_method_bacs">Direct bank transfer</label>
                            <div class="payment_box payment_method_bacs">
                                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.
                                </p>
                            </div>
                        </li>
                        <li class="wc_payment_method payment_method_cheque">
                            <input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque">
                            <label for="payment_method_cheque">Cheque Payment</label>
                            <div class="payment_box payment_method_cheque">
                                <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                            </div>
                        </li>
                        <li class="wc_payment_method payment_method_cod">
                            <input id="payment_method_cod" type="radio" class="input-radio" name="payment_method">
                            <label for="payment_method_cod">Credit Cart</label>
                            <div class="payment_box payment_method_cod">
                                <p>Pay with cash upon delivery.</p>
                            </div>
                        </li>
                        <li class="wc_payment_method payment_method_paypal">
                            <input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal">
                            <label for="payment_method_paypal">Paypal</label>
                            <div class="payment_box payment_method_paypal">
                                <p>Pay via PayPal; you can pay with your credit card if you donât have a PayPal account.</p>
                            </div>
                        </li>
                    </ul>
                    <div class="form-row place-order">
                        <button type="submit" class="th-btn">Place order</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--==============================
	Footer Area
==============================-->

    <footer class="footer-wrapper footer-layout2">
<!--        <div class="shape-mockup" data-top="0" data-left="0"><img src="assets/img/shape/footer_shape_1.png" alt="shape"></div>-->
<!--        <div class="shape-mockup" data-bottom="0" data-right="0"><img src="assets/img/shape/footer_shape_2.png" alt="shape"></div>-->
        <div class="container z-index-common">
            <div class="newsletter-wrap">
                <div class="newsletter-content">
                    <div class="email-icon">
                        <img src="assets/img/icon/email_1.svg" alt="Icon">
                    </div>
                    <h4 class="newsletter-title">Sign Up to Get Updates & News About Us.</h4>
                </div>
                <form class="newsletter-form">
                    <div class="form-group">
                        <input class="form-control" type="email" placeholder="Email Address" required="">
                    </div>
                    <button type="submit" class="th-btn style3">Subscribe</button>
                </form>
            </div>
        </div>
        <div class="widget-area">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget footer-widget">
                            <div class="th-widget-about">
                                <div class="about-logo d-flex align-items-center">
                                    <a href="home-organic-farm.html"><img src="assets/img/logo-change.svg" alt="Frutin" width="20%">
                                        <span style="font-size: 30px; font-weight: bold; color: #fff; margin: 0 0 0 5px;">Elite Gmart</span></a>
                                </div>
                                <p class="about-text">We provide specialized winterization services to safeguard your pool during the off-season, and when spring arrives, we handle the thorough opening process.</p>
                                <div class="th-social">
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Categories</h3>
                            <div class="menu-all-pages-container">
                                <ul class="menu">
                                    <li><a href="#">Vatthulu</a></li>
                                    <li><a href="#">Pooja oil</a></li>
                                    <li><a href="#">Camphor</a></li>
                                    <li><a href="#">Agarbatti</a></li>
                                    <li><a href="#">Match box</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget widget_nav_menu footer-widget">
                            <h3 class="widget_title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Quick Links</h3>
                            <div class="menu-all-pages-container">
                                <ul class="menu">
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Portfolio</a></li>
                                    <li><a href="#">Help & FAQs</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-auto">
                        <div class="widget footer-widget">
                            <h3 class="widget_title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Contact Us</h3>
                            <div class="th-widget-contact">
                                <div class="info-box">
                                    <div class="info-box_icon">
                                        <i class="fas fa-location-dot"></i>
                                    </div>
                                    <p class="info-box_text">Hyderabad</p>
                                </div>
                                <div class="info-box">
                                    <div class="info-box_icon">
                                        <i class="fas fa-phone"></i>
                                    </div>
                                    <p class="info-box_text">
                                        <a href="#" class="info-box_link">+91 0123456789</a>
<!--                                        <a href="#" class="info-box_link">+91 0123456789</a>-->
                                    </p>
                                </div>
                                <div class="info-box">
                                    <div class="info-box_icon">
                                        <i class="fas fa-envelope"></i>
                                    </div>
                                    <p class="info-box_text">
                                        <a href="mailto:info@elitegmart.com" class="info-box_link">help24/7@elitegmart.com</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-wrap" data-bg-src="assets/img/bg/copyright_bg_1.png">
            <div class="container">
                <div class="row gy-2 align-items-center">
                    <div class="col-md-6">
                        <p class="copyright-text">Copyright <i class="fal fa-copyright"></i> 2024 <a href="#">Streak Business Solutions PVT LTD</a>. All Rights Reserved.</p>
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="payment-img">
                            <img src="assets/img/normal/payment_methods.png" alt="Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!--********************************
			Code End  Here 
	******************************** -->

    <!-- Scroll To Top -->
    <div class="scroll-top">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
        </svg>
    </div>

    <!--==============================
    All Js File
============================== -->
    <!-- Jquery -->
    <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
    <!-- Swiper Js -->
    <script src="assets/js/swiper-bundle.min.js"></script>
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Magnific Popup -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Counter Up -->
    <script src="assets/js/jquery.counterup.min.js"></script>
    <!-- Range Slider -->
    <script src="assets/js/jquery-ui.min.js"></script>
    <!-- Isotope Filter -->
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>

    <!-- Main Js File -->
    <script src="assets/js/main.js"></script>

    <!-- Main Js File -->
    <script src="assets/js/checkOut.js"></script>
   
        <!-- cart js file -->
    <script src="assets/js/cart.js"></script> 
    <script src="assets/js/navbar.js"></script>
</body>

</html>