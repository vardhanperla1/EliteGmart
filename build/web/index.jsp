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
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Elite Gmart</title>
    <meta name="author" content="Gmart">
    <meta name="description" content="Organic and Healthy">
    <meta name="keywords" content="Organic and Healthy">
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
-->
    <meta name="msapplication-TileColor" content="#ffffff">
<!--    <meta name="msapplication-TileImage" content="assets/img/favicons/ms-icon-144x144.png">-->
    <meta name="theme-color" content="#ffffff">

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
Product Lightbox
==============================-->
    <div id="QuickView" class="white-popup mfp-hide">
        <div class="container bg-white rounded-10">
            <div class="row gx-60">
                <div class="col-lg-6">
                    <div class="product-big-img">
                        <div class="img"><img src="assets/img/product/product_1_4.jpg" alt="Product Image"></div>
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="product-about">
                        <p class="price">&#8377;120.85<del>&#8377;150.99</del></p>
                        <h2 class="product-title">Mangalam Pure Camphor</h2>
                        <div class="product-rating">
                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5"><span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span></div>
                            <a href="shop-details.html" class="woocommerce-review-link">(<span class="count">4</span> customer reviews)</a>
                        </div>
                        <p class="text">Prepare to embark on a sensory journey with the Bosco Apple, a fruit that transcends the ordinary and promises an unparalleled taste experience. These apples are nothing short of natureâs masterpiece, celebrated for their distinctive blend of flavors and their captivating visual allure.</p>
                        <div class="mt-2 link-inherit">
                            <p>
                                <strong class="text-title me-3">Availability:</strong>
                                <span class="stock in-stock"><i class="far fa-check-square me-2 ms-1"></i>In Stock</span>
                            </p>
                        </div>
                        <div class="actions">
                            <div class="quantity">
                                <input type="number" class="qty-input" step="1" min="1" max="100" name="quantity" value="1" title="Qty">
                                <button class="quantity-plus qty-btn"><i class="far fa-chevron-up"></i></button>
                                <button class="quantity-minus qty-btn"><i class="far fa-chevron-down"></i></button>
                            </div>
                            <button class="th-btn">Add to Cart</button>
                            <a href="#" class="icon-btn"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="product_meta">
                            <span class="sku_wrapper">SKU: <span class="sku">Mangalam Pure Camphor</span></span>
                            <span class="posted_in">Category: <a href="#">New Product</a></span>
                            <span>Tags: <a href="#">Product</a><a href="#">Organic</a></span>
                        </div>
                    </div>
                </div>
            </div>
            <button title="Close (Esc)" type="button" class="mfp-close">Ã</button>
        </div>
    </div><!--==============================
    Sidemenu
============================== -->
<!--    <div class="sidemenu-wrapper sidemenu-cart d-none d-lg-block ">
        <div class="sidemenu-content">
            <button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget woocommerce widget_shopping_cart">
                <h3 class="widget_title">Shopping cart</h3>
                <div class="widget_shopping_cart_content">
                    <ul class="woocommerce-mini-cart cart_list product_list_widget ">
                      <li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a>
                            <a href="#"><img src="assets/img/product/product_thumb_1_1.jpg" alt="Cart Image">Bosco Apple Fruit</a>
                            <span class="quantity">1 Ã
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">$</span>940.00</span>
                            </span>
                        </li>
                        <li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a>
                            <a href="#"><img src="assets/img/product/product_thumb_1_2.jpg" alt="Cart Image">Green Cauliflower</a>
                            <span class="quantity">1 Ã
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">$</span>899.00</span>
                            </span>
                        </li>
                        <li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a>
                            <a href="#"><img src="assets/img/product/product_thumb_1_3.jpg" alt="Cart Image">Mandarin orange</a>
                            <span class="quantity">1 Ã
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">$</span>756.00</span>
                            </span>
                        </li>
                        <li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a>
                            <a href="#"><img src="assets/img/product/product_thumb_1_4.jpg" alt="Cart Image">Shallot Red onion</a>
                            <span class="quantity">1 Ã
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">$</span>723.00</span>
                            </span>
                        </li>
                        <li class="woocommerce-mini-cart-item mini_cart_item">
                            <a href="#" class="remove remove_from_cart_button"><i class="far fa-times"></i></a>
                            <a href="#"><img src="assets/img/product/product_thumb_1_5.jpg" alt="Cart Image">Sour Red Cherry</a>
                            <span class="quantity">1 Ã
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">$</span>1080.00</span>
                            </span>
                        </li>
                    </ul>
                    <p class="woocommerce-mini-cart__total total">
                        <strong>Subtotal:</strong>
                        <span class="woocommerce-Price-amount amount">
                            <span class="woocommerce-Price-currencySymbol">$</span>4398.00</span>
                    </p>
                    <p class="woocommerce-mini-cart__buttons buttons">
                        <a href="cart.jsp" class="th-btn wc-forward">View cart</a>
                        <a href="checkout.jsp" class="th-btn checkout wc-forward">Checkout</a>
                    </p>
                </div>
            </div>
        </div>-->
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
                <a href="index.html"><img src="assets/img/logo-change.svg" alt="Elight"></a>
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
    <header class="th-header header-layout2">
        <div class="sticky-wrapper">
            <div class="container">
                <div class="z-index-common">
                    <div class="header-top">
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
                    <div class="menu-area">
                        <div class="logo-bg"></div>
                        <div class="row align-items-center justify-content-between">
                            <div class="col-auto">
                                <div class="header-logo">
                                    <a href="index.jsp"><img src="assets/img/logo-change.svg" alt="Elight" width="50%"></a>
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
                            <div class="col-auto d-none d-xl-block ms-auto">
                                  <div class="header-button">
                                    <button type="button" class="simple-icon searchBoxToggler"><i class="far fa-search"></i></button>
                                    <button type="button" class="simple-icon sideMenuToggler">
                                        <span class="badge">0</span>
                                        <i class="fa-regular fa-cart-shopping"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--==============================
Hero Area
==============================-->
    <div class="th-hero-wrapper hero-2" id="hero" data-bg-src="assets/img/hero/hero_bg_2_1.jpg">
        <div class="swiper th-slider" id="heroSlider2" data-slider-options='{"effect":"fade"}'>
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="hero-inner">
                        <div class="container">
                            <div class="hero-style2">
                                <span class="sub-title" data-ani="slideinup" data-ani-delay="0.2s"><img src="assets/img/theme-img/title_icon.svg" alt="shape">100% Quality</span>
                                <h1 class="hero-title">
                                    <span class="title1" data-ani="slideinup" data-ani-delay="0.4s">Pooja</span>
                                    <span class="title2" data-ani="slideinup" data-ani-delay="0.5s">Samagri</span>
                                </h1>
                                <div class="btn-group" data-ani="slideinup" data-ani-delay="0.7s">
                                    <a href="#" class="th-btn">Shop Now<i class="fas fa-chevrons-right ms-2"></i></a>
                                    <div class="arrow">
                                        <img src="assets/img/hero/hero_arrow.svg" alt="Icon">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hero-img" data-ani="slidebottomright" data-ani-delay="0.1s">
                            <img src="assets/img/hero/hero_2_2.png" alt="Image">
                        </div>
                        <div class="hero-shape1" data-ani="slideinup" data-ani-delay="0.7s">
                            <img src="assets/img/hero/hero_shape_1_1.png" alt="shape">
                        </div>
                        <div class="hero-shape2" data-ani="slideinup" data-ani-delay="0.8s">
                            <img src="assets/img/hero/hero_shape_1_2.png" alt="shape">
                        </div>
                        <div class="hero-shape3" data-ani="slideinup" data-ani-delay="0.9s">
                            <img src="assets/img/hero/hero_shape_1_3.png" alt="shape">
                        </div>
                        <div class="hero-shape4" data-ani="slidebottomright" data-ani-delay="0.5s">
                            <img src="assets/img/hero/hero_shape_2_1.png" alt="shape">
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="hero-inner">
                        <div class="container">
                            <div class="hero-style2">
                                <span class="sub-title" data-ani="slideinup" data-ani-delay="0.2s"><img src="assets/img/theme-img/title_icon.svg" alt="shape">100% Quality</span>
                                <h1 class="hero-title">
                                    <span class="title1" data-ani="slideinup" data-ani-delay="0.4s">Pooja</span>
                                    <span class="title2" data-ani="slideinup" data-ani-delay="0.5s">Samagri</span>
                                </h1>
                                <div class="btn-group" data-ani="slideinup" data-ani-delay="0.7s">
                                    <a href="#" class="th-btn">Shop Now<i class="fas fa-chevrons-right ms-2"></i></a>
                                    <div class="arrow">
                                        <img src="assets/img/hero/hero_arrow.svg" alt="Icon">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hero-img" data-ani="slidebottomright" data-ani-delay="0.1s">
                            <img src="assets/img/hero/hero_2_2.png" alt="Image">
                        </div>
                        <div class="hero-shape1" data-ani="slideinup" data-ani-delay="0.7s">
                            <img src="assets/img/hero/hero_shape_1_1.png" alt="shape">
                        </div>
                        <div class="hero-shape2" data-ani="slideinup" data-ani-delay="0.8s">
                            <img src="assets/img/hero/hero_shape_1_2.png" alt="shape">
                        </div>
                        <div class="hero-shape3" data-ani="slideinup" data-ani-delay="0.9s">
                            <img src="assets/img/hero/hero_shape_1_3.png" alt="shape">
                        </div>
                        <div class="hero-shape4" data-ani="slidebottomright" data-ani-delay="0.5s">
                            <img src="assets/img/hero/hero_shape_2_1.png" alt="shape">
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="hero-inner">
                        <div class="container">
                            <div class="hero-style2">
                                <span class="sub-title" data-ani="slideinup" data-ani-delay="0.2s"><img src="assets/img/theme-img/title_icon.svg" alt="shape">100% Quality </span>
                                <h1 class="hero-title">
                                    <span class="title1" data-ani="slideinup" data-ani-delay="0.4s">Pooja</span>
                                    <span class="title2" data-ani="slideinup" data-ani-delay="0.5s">Samagri</span>
                                </h1>
                                <div class="btn-group" data-ani="slideinup" data-ani-delay="0.7s">
                                    <a href="#" class="th-btn">Shop Now<i class="fas fa-chevrons-right ms-2"></i></a>
                                    <div class="arrow">
                                        <img src="assets/img/hero/hero_arrow.svg" alt="Icon">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hero-img" data-ani="slidebottomright" data-ani-delay="0.1s">
                            <img src="assets/img/hero/hero_2_2.png" alt="Image">
                        </div>
                        <div class="hero-shape1" data-ani="slideinup" data-ani-delay="0.7s">
                            <img src="assets/img/hero/hero_shape_1_1.png" alt="shape">
                        </div>
                        <div class="hero-shape2" data-ani="slideinup" data-ani-delay="0.8s">
                            <img src="assets/img/hero/hero_shape_1_2.png" alt="shape">
                        </div>
                        <div class="hero-shape3" data-ani="slideinup" data-ani-delay="0.9s">
                            <img src="assets/img/hero/hero_shape_1_3.png" alt="shape">
                        </div>
                        <div class="hero-shape4" data-ani="slidebottomright" data-ani-delay="0.5s">
                            <img src="assets/img/hero/hero_shape_2_1.png" alt="shape">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="icon-box">
            <button data-slider-prev="#heroSlider2" class="slider-arrow default"><i class="far fa-arrow-left"></i></button>
            <button data-slider-next="#heroSlider2" class="slider-arrow default"><i class="far fa-arrow-right"></i></button>
        </div>
    </div>
    <!--======== / Hero Section ========-->
    <!--==============================
About Area  
==============================-->
    <div class="overflow-hidden space" id="about-sec">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 mb-40 mb-xl-0">
                    <div class="img-box5">
<!--
                        <div class="shape1">
                            <img src="assets/img/normal/about_3_2.png" alt="About">
                        </div>
-->
                        <div class="img1">
                            <img src="assets/img/normal/about_3_1.png" alt="About">
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 text-center text-xl-start">
                    <div class="title-area mb-32">
                        <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="shape">About Us Company</span>
                        <h2 class="sec-title">Organic Integrity Durable Impact Elite Gmart Story</h2>
                        <p class="sec-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>
                    </div>
                    <div class="checklist list-two-column mb-40">
                        <ul>
                            <li>100% Organic Products</li>
                            <li>No Synthetic Chemicals</li>
                            <li>Always Fresh & Natural</li>
                            <li>Best Prices</li>
                            <li>Environmental Benefits</li>
                        </ul>
                    </div>
                    <div>
                        <a href="#" class="th-btn">Discover More<i class="fas fa-chevrons-right ms-2"></i></a>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <!--==============================
Cta Area  
==============================-->
    <section class="space-bottom">
        <div class="container z-index-common">
            <div class="row gy-30">
                <div class="col-xxl-4 col-lg-5">
                    <div class="offer-card mega-hover" data-bg-src="assets/img/bg/cta_bg_2_1.png">
                        <span class="h6 box-subtitle">Get Extra <span class="text-theme">50% Off</span></span>
                        <h3 class="box-title">Pooja Samagri & <br> Organic</h3>
                        <a href="#" class="th-btn">Shop Now<i class="fas fa-chevrons-right ms-2"></i></a>
                    </div>
                </div>
                <div class="col-xxl-8 col-lg-7">
                    <div class="offer-card mega-hover" data-bg-src="assets/img/bg/cta_bg_2_2.png">
                        <span class="h6 box-subtitle">Get Extra <span class="text-theme">60% Off</span></span>
                        <h3 class="box-title">Organic & <br> Fresh Pooja Samagri</h3>
                        <a href="#" class="th-btn">Shop Now<i class="fas fa-chevrons-right ms-2"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--==============================
Service Area  
==============================-->
<!--
    <section class="overflow-hidden bg-smoke2 space" id="service-sec" data-bg-src="assets/img/bg/service_bg_1.png">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-8">
                    <div class="title-area text-center">
                        <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Our Services</span>
                        <h2 class="sec-title">Our Pooja Service For You!</h2>
                    </div>
                </div>
            </div>
            <div class="row gy-40 justify-content-center">
                <div class="col-xl-4 col-md-6">
                    <div class="service-card">
                        <div class="box-img">
                            <img src="assets/img/service/service_card_1.jpg" alt="Service">
                        </div>
                        <div class="box-icon">
                            <img src="assets/img/icon/service_card_1.svg" alt="Icon">
                        </div>
                        <div class="box-content" data-mask-src="assets/img/bg/service_card_shape.png">
                            <h3 class="box-title"><a href="service-details.html">Fresh Vegetable</a></h3>
                            <p class="box-text">Inspections to ensure compliance with organic standards.</p>
                        </div>
                        <a href="service-details.html" class="icon-btn"><i class="far fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="service-card">
                        <div class="box-img">
                            <img src="assets/img/service/service_card_2.jpg" alt="Service">
                        </div>
                        <div class="box-icon">
                            <img src="assets/img/icon/service_card_2.svg" alt="Icon">
                        </div>
                        <div class="box-content" data-mask-src="assets/img/bg/service_card_shape.png">
                            <h3 class="box-title"><a href="service-details.html">Organic Fertilizer</a></h3>
                            <p class="box-text">Inspections to ensure compliance with organic standards.</p>
                        </div>
                        <a href="service-details.html" class="icon-btn"><i class="far fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="service-card">
                        <div class="box-img">
                            <img src="assets/img/service/service_card_3.jpg" alt="Service">
                        </div>
                        <div class="box-icon">
                            <img src="assets/img/icon/service_card_3.svg" alt="Icon">
                        </div>
                        <div class="box-content" data-mask-src="assets/img/bg/service_card_shape.png">
                            <h3 class="box-title"><a href="service-details.html">Natural Fruits</a></h3>
                            <p class="box-text">Inspections to ensure compliance with organic standards.</p>
                        </div>
                        <a href="service-details.html" class="icon-btn"><i class="far fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
-->


    <!--==============================
Product Area  
==============================-->
    <section class="space">
        <div class="container">
            <div class="row justify-content-lg-between justify-content-center align-items-end">
                <div class="col-lg">
                    <div class="title-area text-center text-lg-start">
                        <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Organic Products</span>
                        <h2 class="sec-title">Organic & Fresh Products Daily!</h2>
                    </div>
                </div>
                <div class="col-lg-auto d-none d-lg-block">
                    <div class="sec-btn">
                        <div class="icon-box">
                            <button data-slider-prev="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-left"></i></button>
                            <button data-slider-next="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-right"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper th-slider has-shadow" id="productSlider1" data-slider-options='{"breakpoints":{"0":{"slidesPerView":1},"576":{"slidesPerView":"2"},"768":{"slidesPerView":"2"},"992":{"slidesPerView":"3"},"1200":{"slidesPerView":"4"}}}'>
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <div class="th-product product-grid">
                            <div class="product-img">
                                <img src="assets/img/product/product_1_1.jpg" alt="Product Image">
                                <span class="product-tag">Hot</span>
                                <div class="actions">
                                    <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                    <a href="#" class="icon-btn add-to-cart" data-title="Vattulu" data-price="17.85" data-img="assets/img/product/product_1_1.jpg"><i class="far fa-cart-plus"></i></a>
                                    <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                                </div>
                            </div>
                            <div class="product-content">
                                <a href="#" class="product-category">New</a>
                                <h3 class="product-title"><a href="#">Vattulu</a></h3>
                                <span class="price">&#8377;17.85</span>
                                <div class="woocommerce-product-rating">
                                    <span class="count">(120 Reviews)</span>
                                    <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                        <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_2.jpg" alt="Product Image">
                            <span class="product-tag">New</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Cotton Wicks" data-price="10.85" data-img="assets/img/product/product_1_2.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="#" class="product-category">New</a>
                            <h3 class="product-title"><a href="#">Cotton Wicks</a></h3>
                            <span class="price">&#8377;10.85</span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_3.jpg" alt="Product Image">
                            <span class="product-tag">Hot</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Pooja Oil" data-price="110.85" data-img="assets/img/product/product_1_3.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="#" class="product-category">New Product</a>
                            <h3 class="product-title"><a href="#">Pooja Oil</a></h3>
                            <span class="price">&#8377;110.85</span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_4.jpg" alt="Product Image">
                            <span class="product-tag">Sale</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Mangalam Pure Camphor" data-price="85.00" data-img="assets/img/product/product_1_4.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="#" class="product-category">New Product</a>
                            <h3 class="product-title"><a href="#">Mangalam Pure Camphor</a></h3>
                            <span class="price">&#8377;85.00<del>&#8377;110.00</del></span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_5.jpg" alt="Product Image">
                            <span class="product-tag">New</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Aarathi karpuram" data-price="85.00" data-img="assets/img/product/product_1_5.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="#" class="product-category">New</a>
                            <h3 class="product-title"><a href="#">Aarathi karpuram</a></h3>
                            <span class="price">&#8377;85.00</span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_6.jpg" alt="Product Image">
                            <span class="product-tag">Hot</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Agarbatti" data-price="30.85" data-img="assets/img/product/product_1_6.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="shop-details.html" class="product-category">New</a>
                            <h3 class="product-title"><a href="shop-details.html">Agarbatti</a></h3>
                            <span class="price">&#8377;30.85</span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_7.jpg" alt="Product Image">
                            <span class="product-tag">New</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Match box" data-price="10.00" data-img="assets/img/product/product_1_7.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="shop-details.html" class="product-category">New</a>
                            <h3 class="product-title"><a href="shop-details.html">Match box</a></h3>
                            <span class="price">&#8377;10.00</span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="th-product product-grid">
                        <div class="product-img">
                            <img src="assets/img/product/product_1_8.jpg" alt="Product Image">
                            <span class="product-tag">Hot</span>
                            <div class="actions">
                                <a href="#QuickView" class="icon-btn popup-content"><i class="far fa-eye"></i></a>
                                <a href="#" class="icon-btn add-to-cart" data-title="Gandham/Chandanam" data-price="30.85" data-img="assets/img/product/product_1_8.jpg"><i class="far fa-cart-plus"></i></a>
                                <a href="wishlist.jsp" class="icon-btn"><i class="far fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <a href="shop-details.html" class="product-category">Fresh Club</a>
                            <h3 class="product-title"><a href="shop-details.html">Gandham/Chandanam</a></h3>
                            <span class="price">&#8377;30.85</span>
                            <div class="woocommerce-product-rating">
                                <span class="count">(120 Reviews)</span>
                                <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                </div>
            </div>
            <div class="d-block d-lg-none mt-40 text-center">
                <div class="icon-box">
                    <button data-slider-prev="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-left"></i></button>
                    <button data-slider-next="#productSlider1" class="slider-arrow default"><i class="far fa-arrow-right"></i></button>
                </div>
            </div>
        </div>
    </section>
    <!--==============================
Feature Area  
==============================-->
<!--
    <section class="why-sec3 space" data-bg-src="assets/img/bg/why_bg_2_2.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8">
                    <div class="title-area text-center">
                        <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Why Choose Us</span>
                        <h2 class="sec-title text-white">Savor the Purity, Taste The Difference!</h2>
                    </div>
                </div>
            </div>
            <div class="row gx-0 justify-content-between">
                <div class="col-sm-auto">
                    <div class="why-feature-left">
                        <div class="why-feature">
                            <div class="box-icon">
                                <img src="assets/img/icon/why_feature_1.svg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="box-title">100% Organic</div>
                                <p class="box-text">Our products are certified by reputable organic.</p>
                            </div>
                        </div>
                        <div class="why-feature">
                            <div class="box-icon">
                                <img src="assets/img/icon/why_feature_2.svg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="box-title">Fresh Products</div>
                                <p class="box-text">Our products are certified by reputable organic.</p>
                            </div>
                        </div>
                        <div class="why-feature">
                            <div class="box-icon">
                                <img src="assets/img/icon/why_feature_3.svg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="box-title">Biodynamic Food</div>
                                <p class="box-text">Our products are certified by reputable organic.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <div class="img-box4 mt-0">
                        <img src="assets/img/normal/why_3_1.png" alt="Why">
                    </div>
                </div>
                <div class="col-sm-auto">
                    <div class="why-feature-right">
                        <div class="why-feature">
                            <div class="box-icon">
                                <img src="assets/img/icon/why_feature_4.svg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="box-title">Secured Payment</div>
                                <p class="box-text">Our products are certified by reputable organic.</p>
                            </div>
                        </div>
                        <div class="why-feature">
                            <div class="box-icon">
                                <img src="assets/img/icon/why_feature_5.svg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="box-title">Neat & Clean</div>
                                <p class="box-text">Our products are certified by reputable organic.</p>
                            </div>
                        </div>
                        <div class="why-feature">
                            <div class="box-icon">
                                <img src="assets/img/icon/why_feature_6.svg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="box-title">Daily Fresh</div>
                                <p class="box-text">Our products are certified by reputable organic.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
-->
    <!--==============================
Process Area  
==============================-->
<!--
    <section class="space" id="process-sec">
        <div class="shape-mockup" data-top="0" data-left="0"><img src="assets/img/shape/vector_shape_7.png" alt="shape"></div>
        <div class="shape-mockup" data-bottom="0" data-right="0"><img src="assets/img/shape/vector_shape_6.png" alt="shape"></div>
        <div class="container">
            <div class="title-area text-center">
                <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">How We Make Quality Foods</span>
                <h2 class="sec-title">How We Work It?</h2>
            </div>
            <div class="row gy-4 justify-content-center">
                <div class="col-xl-3 col-md-6 process-box-wrap">
                    <div class="process-box">
                        <div class="box-icon bg-white">
                            <img src="assets/img/icon/process_box_1.svg" alt="icon">
                        </div>
                        <div class="box-img" data-mask-src="assets/img/bg/process_bg_shape.png">
                            <img src="assets/img/normal/process_box_1.jpg" alt="image">
                        </div>
                        <p class="box-number">Step - 01</p>
                        <h3 class="box-title">Work Planning</h3>
                        <p class="box-text">Begin by conducting thorough soil tests to understand its composition, pH levels, and nutrient.</p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 process-box-wrap">
                    <div class="process-box">
                        <div class="box-icon bg-white">
                            <img src="assets/img/icon/process_box_2.svg" alt="icon">
                        </div>
                        <div class="box-img" data-mask-src="assets/img/bg/process_bg_shape.png">
                            <img src="assets/img/normal/process_box_2.jpg" alt="image">
                        </div>
                        <p class="box-number">Step - 02</p>
                        <h3 class="box-title">Farm Growing</h3>
                        <p class="box-text">Begin by conducting thorough soil tests to understand its composition, pH levels, and nutrient.</p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 process-box-wrap">
                    <div class="process-box">
                        <div class="box-icon bg-white">
                            <img src="assets/img/icon/process_box_3.svg" alt="icon">
                        </div>
                        <div class="box-img" data-mask-src="assets/img/bg/process_bg_shape.png">
                            <img src="assets/img/normal/process_box_3.jpg" alt="image">
                        </div>
                        <p class="box-number">Step - 03</p>
                        <h3 class="box-title">Crop Harvesting</h3>
                        <p class="box-text">Begin by conducting thorough soil tests to understand its composition, pH levels, and nutrient.</p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 process-box-wrap">
                    <div class="process-box">
                        <div class="box-icon bg-white">
                            <img src="assets/img/icon/process_box_4.svg" alt="icon">
                        </div>
                        <div class="box-img" data-mask-src="assets/img/bg/process_bg_shape.png">
                            <img src="assets/img/normal/process_box_4.jpg" alt="image">
                        </div>
                        <p class="box-number">Step - 04</p>
                        <h3 class="box-title">Food Processing</h3>
                        <p class="box-text">Begin by conducting thorough soil tests to understand its composition, pH levels, and nutrient.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
-->
    <!--==============================
Faq Area
==============================-->
<!--
    <div class="bg-smoke2 space overflow-hidden" id="faq-sec" data-bg-src="assets/img/bg/faq_bg_1.png">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="faq-img1">
                        <div class="img1">
                            <img src="assets/img/normal/faq_1_1.jpg" alt="faq">
                        </div>
                        <div class="shape1">
                            <img src="assets/img/bg/vector_shape_1.png" alt="shape">
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 text-center text-xl-start align-self-center">
                    <div class="ps-xl-4">
                        <div class="title-area text-center text-xl-start">
                            <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Looking For Answers?</span>
                            <h2 class="sec-title">Frequently Asked If You Have any Questions?</h2>
                        </div>
                        <div class="accordion" id="faqAccordion">


                            <div class="accordion-card">
                                <div class="accordion-header" id="collapse-item-1">
                                    <button class="accordion-button " type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1">Do I need to be in when you deliver?</button>
                                </div>
                                <div id="collapse-1" class="accordion-collapse collapse show" aria-labelledby="collapse-item-1" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body">
                                        <p class="faq-text">Our organic farm, we begin with the foundation of healthy, nutrient-rich soil. We employ sustainable practice such as crop rotation cover cropping and composting. This helps maintain soil fertility, structure, and microbial diversity. By avoiding synthetic fertilizers and pesticides, we allow natural processes to flourish.</p>
                                    </div>
                                </div>
                            </div>


                            <div class="accordion-card">
                                <div class="accordion-header" id="collapse-item-2">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-2" aria-expanded="false" aria-controls="collapse-2">Do I have to order every week?</button>
                                </div>
                                <div id="collapse-2" class="accordion-collapse collapse " aria-labelledby="collapse-item-2" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body">
                                        <p class="faq-text">Our organic farm, we begin with the foundation of healthy, nutrient-rich soil. We employ sustainable practice such as crop rotation cover cropping and composting. This helps maintain soil fertility, structure, and microbial diversity. By avoiding synthetic fertilizers and pesticides, we allow natural processes to flourish.</p>
                                    </div>
                                </div>
                            </div>


                            <div class="accordion-card">
                                <div class="accordion-header" id="collapse-item-3">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-3" aria-expanded="false" aria-controls="collapse-3">From its medieval origins the digital?</button>
                                </div>
                                <div id="collapse-3" class="accordion-collapse collapse " aria-labelledby="collapse-item-3" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body">
                                        <p class="faq-text">Our organic farm, we begin with the foundation of healthy, nutrient-rich soil. We employ sustainable practice such as crop rotation cover cropping and composting. This helps maintain soil fertility, structure, and microbial diversity. By avoiding synthetic fertilizers and pesticides, we allow natural processes to flourish.</p>
                                    </div>
                                </div>
                            </div>


                            <div class="accordion-card">
                                <div class="accordion-header" id="collapse-item-4">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-4" aria-expanded="false" aria-controls="collapse-4">What is Your Pricing Structure?</button>
                                </div>
                                <div id="collapse-4" class="accordion-collapse collapse " aria-labelledby="collapse-item-4" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body">
                                        <p class="faq-text">Our organic farm, we begin with the foundation of healthy, nutrient-rich soil. We employ sustainable practice such as crop rotation cover cropping and composting. This helps maintain soil fertility, structure, and microbial diversity. By avoiding synthetic fertilizers and pesticides, we allow natural processes to flourish.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
-->

    <!--==============================
Gallery Area  
==============================-->
<!--
    <div class="bg-top-center space-top" data-bg-src="assets/img/bg/gallery_bg_1.jpg">
        <div class="container">
            <div class="row justify-content-lg-between justify-content-center align-items-end">
                <div class="col-lg">
                    <div class="title-area text-center text-lg-start">
                        <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Our Photo Gallery</span>
                        <h2 class="sec-title text-white">Insite Our Farming Gallery</h2>
                    </div>
                </div>
                <div class="col-lg-auto d-none d-lg-block">
                    <div class="sec-btn">
                        <div class="icon-box">
                            <button data-slider-prev="#gallerySlider1" class="slider-arrow default"><i class="far fa-arrow-left"></i></button>
                            <button data-slider-next="#gallerySlider1" class="slider-arrow default"><i class="far fa-arrow-right"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container container-gallery">
            <div class="swiper th-slider has-shadow" id="gallerySlider1" data-slider-options='{"breakpoints":{"0":{"slidesPerView":1},"576":{"slidesPerView":"1"},"768":{"slidesPerView":"2"},"992":{"slidesPerView":"2"},"1200":{"slidesPerView":"3"},"1400":{"slidesPerView":"4"}}}'>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_1.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_1.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Fresh Vegetables</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_2.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_2.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Organic Vegetables</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_3.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_3.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Organic Fruits</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_4.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_4.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Organic Farming</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_1.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_1.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Fresh Vegetables</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_2.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_2.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Organic Vegetables</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_3.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_3.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Organic Fruits</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="gallery-card">
                            <div class="box-img">
                                <img src="assets/img/gallery/gallery_1_4.jpg" alt="gallery image">
                                <a href="assets/img/gallery/gallery_1_4.jpg" class="icon-btn style2 popup-image"><i class="far fa-plus"></i></a>
                            </div>
                            <div class="box-content">
                                <p class="box-subtitle">Fresh Food & Vegetables</p>
                                <h3 class="box-title"><a href="project-details.html">Organic Farming</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-block d-lg-none mt-40 text-center">
                <div class="icon-box">
                    <button data-slider-prev="#gallerySlider1" class="slider-arrow default"><i class="far fa-arrow-left"></i></button>
                    <button data-slider-next="#gallerySlider1" class="slider-arrow default"><i class="far fa-arrow-right"></i></button>
                </div>
            </div>
        </div>
    </div>
-->
    <!--==============================
Testimonial Area  
==============================-->
<!--
    <section class="overflow-hidden space" id="testi-sec">
        <div class="container">
            <div class="title-area text-center">
                <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Testimonials</span>
                <h2 class="sec-title">Our Customer Feedback</h2>
            </div>
            <div class="testi-box-area" data-bg-src="assets/img/bg/testi_bg_2.png">
                <div class="testi-box-img">
                    <img src="assets/img/testimonial/testi_2_1.jpg" alt="Image">
                </div>
                <div class="testi-box-shape">
                    <img src="assets/img/bg/testi_box_shape.png" alt="image">
                </div>
                <div class="testi-box-slide">
                    <div class="swiper th-slider" id="testiSlide2" data-slider-options='{"effect":"slide"}'>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="testi-box">
                                    <p class="testi-box_text">âDiversity is a cornerstone of our farming philosophy. We carefully select a wide range of crops, ensuring a varied and balanced ecosystem. This not only helps to naturally deter pests and diseases but also promotes soil health by varying the nutrient demands of different plants.â</p>
                                    <h3 class="testi-box_name">Angelina Margret</h3>
                                    <span class="testi-box_desig">Customer of Our Shop</span>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="testi-box">
                                    <p class="testi-box_text">âDiversity is a cornerstone of our farming philosophy. We carefully select a wide range of crops, ensuring a varied and balanced ecosystem. This not only helps to naturally deter pests and diseases but also promotes soil health by varying the nutrient demands of different plants.â</p>
                                    <h3 class="testi-box_name">Alexan Micelito</h3>
                                    <span class="testi-box_desig">Customer of Our Shop</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testi-box_quote">
                        <img src="assets/img/testimonial/quote_1.png" alt="Image">
                    </div>
                    <div class="icon-box">
                        <button data-slider-prev="#testiSlide2" class="slider-arrow default"><i class="far fa-arrow-left"></i></button>
                        <button data-slider-next="#testiSlide2" class="slider-arrow default"><i class="far fa-arrow-right"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </section>
-->


    <!--==============================
Blog Area  
==============================-->
<!--
    <section class="overflow-hidden space bg-smoke2" id="blog-sec">
        <div class="shape-mockup" data-top="0" data-left="0"><img src="assets/img/shape/vector_shape_1.png" alt="shape"></div>
        <div class="shape-mockup" data-bottom="0" data-right="0"><img src="assets/img/shape/vector_shape_2.png" alt="shape"></div>
        <div class="container">
            <div class="row justify-content-lg-between justify-content-center align-items-end">
                <div class="col-lg">
                    <div class="title-area text-center text-lg-start">
                        <span class="sub-title"><img src="assets/img/theme-img/title_icon.svg" alt="Icon">Blog & News</span>
                        <h2 class="sec-title">Latest Updates & News</h2>
                    </div>
                </div>
                <div class="col-lg-auto d-none d-lg-block">
                    <div class="sec-btn">
                        <a href="blog.html" class="th-btn">View More Post<i class="fas fa-chevrons-right ms-2"></i></a>
                    </div>
                </div>
            </div>
            <div class="row gy-4">
                <div class="col-xl-6">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img src="assets/img/blog/blog_2_1.jpg" alt="blog image">
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="blog.html"><i class="far fa-user"></i>By Frutin</a>
                                <a href="blog.html"><i class="far fa-calendar"></i>15 March, 2023</a>
                            </div>
                            <h3 class="box-title"><a href="blog-details.html">Change Your Eating Habits With Organic Food</a></h3>
                            <p class="box-text">Organic foods can be more expensive due to the labor-intensive nature.</p>
                            <a href="blog-details.html" class="th-btn">Read More<i class="fas fa-chevrons-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img src="assets/img/blog/blog_2_2.jpg" alt="blog image">
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="blog.html"><i class="far fa-user"></i>By Frutin</a>
                                <a href="blog.html"><i class="far fa-calendar"></i>16 March, 2023</a>
                            </div>
                            <h3 class="box-title"><a href="blog-details.html">Transform Your Nutrition with Organic Meal</a></h3>
                            <p class="box-text">Organic foods can be more expensive due to the labor-intensive nature.</p>
                            <a href="blog-details.html" class="th-btn">Read More<i class="fas fa-chevrons-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img src="assets/img/blog/blog_2_3.jpg" alt="blog image">
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="blog.html"><i class="far fa-user"></i>By Frutin</a>
                                <a href="blog.html"><i class="far fa-calendar"></i>17 March, 2023</a>
                            </div>
                            <h3 class="box-title"><a href="blog-details.html">Improve Your Health By Organic Eating</a></h3>
                            <p class="box-text">Organic foods can be more expensive due to the labor-intensive nature.</p>
                            <a href="blog-details.html" class="th-btn">Read More<i class="fas fa-chevrons-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="blog-box">
                        <div class="blog-img">
                            <img src="assets/img/blog/blog_2_4.jpg" alt="blog image">
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="blog.html"><i class="far fa-user"></i>By Frutin</a>
                                <a href="blog.html"><i class="far fa-calendar"></i>19 March, 2023</a>
                            </div>
                            <h3 class="box-title"><a href="blog-details.html">Organic Eating Is Great For Better Health</a></h3>
                            <p class="box-text">Organic foods can be more expensive due to the labor-intensive nature.</p>
                            <a href="blog-details.html" class="th-btn">Read More<i class="fas fa-chevrons-right ms-2"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
-->
    <!--==============================
Brand Area  
==============================-->
<!--
    <div class="py-5 mt-1 bg-smoke2">
        <div class="container th-container py-md-4">
            <div class="swiper th-slider" id="blogSlider1" data-slider-options='{"breakpoints":{"0":{"slidesPerView":2},"576":{"slidesPerView":"2"},"768":{"slidesPerView":"3"},"992":{"slidesPerView":"4"},"1200":{"slidesPerView":"5"},"1400":{"slidesPerView":"6"}}}'>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_1.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_2.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_3.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_4.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_5.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_6.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_7.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_1.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_2.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_3.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_4.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_5.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_6.svg" alt="Brand Logo">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="brand-box">
                            <img src="assets/img/brand/brand_1_7.svg" alt="Brand Logo">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
-->
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

    <!-- cart Js File -->
    <script src="assets/js/cart.js"></script>
    <script src="assets/js/navbar.js"></script>



</body>

</html>

