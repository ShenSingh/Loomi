<%--
  Created by IntelliJ IDEA.
  User: gayashanashinshana
  Date: 2025-01-16
  Time: 04:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="asset/style/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loomi | Store</title>
    <link rel="stylesheet" href="asset/style/homeStyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>
<div id="nav">

    <div id="logo">
        <img src="asset/image/Logos/black-logo.png" alt="shopLogo">
    </div>

    <div id="menu">
        <ul>
            <div class="menuL">
                <li><a href="index.jsp">HOME</a></li>
                <li><a href="store.jsp">SHOP</a></li>
                <li><a href="gallery.jsp">GALLERY</a></li>
            </div>
            <div class="menuR">
                <li><a href="about.jsp">ABOUT</a></li>
                <li><a href="contact.jsp">CONTACT</a></li>
                <li><a href="gift.jsp">GIFT</a></li>
            </div>
        </ul>
    </div>

    <div id="rightCont">


        <!-- <div id="userRegLog">
            <button id="register">REGISTER</button>
            <button id="login">LOGIN</button>
        </div> -->

        <div id="cart">
            <button>
                <i class="fas fa-shopping-cart"></i>
            </button>
        </div>

        <div id="user">
            <button>
                <i class="fas fa-user"></i>
            </button>
        </div>
    </div>

</div>
<div id="main">
    <div id="page">
        <div id="loop">

        </div>
        <div id="shopNow"></div>

        <div class="container">
            <div class="main-content">
                <h1 style="font-size: 5rem;">STORE</h1>

                <div class="searchProduct">
                    <label for="search"></label>
                    <input type="text" id="search" name="search" placeholder="search your style">
                    <button class="searchPro-btn" type="submit" id="searchPro-btn">
                        <i class="fas fa-search searchPro-icon"></i>
                    </button>
                </div>

            </div>

            <div class="store-content">
                <section>
                    <h4 class="section-subtitle">
                        The Shop
                    </h4>
                    <h2 class="section-title">
                        Best Selling Products
                    </h2>
                    <div class="bestSelling-cloth">
                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-1"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Men's Classic Fit T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">100% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $15.00
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-2"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Crew Neck T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">100% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $10.00
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-3"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Oversized T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">100% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $12.87
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-4"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Printed Oversize T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">90% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $15.22
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-5"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Men's Classic Fit T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">100% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $15.00
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-6"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Crew Neck T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">100% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $10.00
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-7"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Oversized T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">100% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $12.87
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-8"></div>  <!-- id="bs-img-tshirt" -->
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title">Printed Oversize T-Shirt</a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font">90% Cotton </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  $15.22
                                </span>
                                    <button class="bs-card-btn">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <canvas></canvas>
    </div>
    <div id="page1">
        <div id="right-text"></div>
        <div id="left-text"></div>
    </div>
    <div id="page2">
        <div id="text2"></div>
    </div>
    <div id="page3">
        <div id="text3"></div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js" integrity="sha512-cOH8ndwGgPo+K7pTvMrqYbmI8u8k6Sho3js0gOqVWTmQMlLIi6TbqGWRTpf1ga8ci9H3iPsvDLr4X7xwhC/+DQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/ScrollTrigger.min.js" integrity="sha512-AMl4wfwAmDM1lsQvVBBRHYENn1FR8cfOTpt8QVbb/P55mYOdahHD4LmHM1W55pNe3j/3od8ELzPf/8eNkkjISQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="../asset/js/homeScript.js"></script>
</body>
</html>
