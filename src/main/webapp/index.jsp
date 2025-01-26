<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="asset/style/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loomi Your Fashion</title>
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
                <li><a href="gallery.jsp">Gallery</a></li>
            </div>
            <div class="menuR">
                <li><a href="about.jsp">ABOUT</a></li>
                <li><a href="contact.jsp">CONTACT</a></li>
                <li><a href="gift.jsp">GIFT</a></li>
            </div>
        </ul>
    </div>
    
    <div id="rightCont">


        <div id="userRegLog">
            <button id="register" onclick="function clickUserLogin() {
                window.location.href = 'userLogin.jsp';
            }
            clickUserLogin()"> REGISTER</button>
            <button id="login" onclick="function clickUserLogin() {
                window.location.href = 'userLogin.jsp';
            }
            clickUserLogin()">LOGIN</button>
        </div>

        <%-- <div id="cart">
            <i class="fas fa-shopping-cart"></i>
        </div>

        <div id="user">
            <i class="fas fa-user"></i>
        </div> --%>
    </div>

</div>
<div id="main">
    <div id="page">
        <div id="loop">
            <h1>
                <b>MEN'S</b> FASHION IS THE <b><i>ULTIMATE</i></b> <span>STYLE</span> IN THE <span><i>MODERN WORLD.</i></span>
            </h1>
            <h1>
                <b>MEN'S</b> FASHION IS THE <b><i>ULTIMATE</i></b> <span>STYLE</span> IN THE <span><i>MODERN WORLD.</i></span>
            </h1>
            <h1>
                <b>MEN'S</b> FASHION IS THE <b><i>ULTIMATE</i></b> <span>STYLE</span> IN THE <span><i>MODERN WORLD.</i></span>
            </h1>
        </div>
        
        <div id="shopNow">
            <p>MEN'S FASHION EMPOWERS STYLE, CONFIDENCE, AND <br> SOPHISTICATION IN EVERY STEP OF YOUR JOURNEY <br> THROUGH THE MODERN WORLD.</p>
            <button>SHOP NOW</button>
        </div>
        

        <canvas style="z-index: 99999;"></canvas>
    </div>
    <div id="page1">
        <div id="right-text">
            <h3>MEN'S FASHION / TRENDING STYLES</h3>
            <h1>STYLE YOURSELF
                <br>
                LOOK SHARP
                <br>
                BE CONFIDENT</h1>
        </div>
        
        <div id="left-text">
            <h1>DEFINE YOUR STYLE
                <br>
                MAKE A STATEMENT
                <br>
                OWN THE LOOK</h1>
            <h3>..AND INSPIRE CONFIDENCE</h3>
        </div>
        
    </div>
    <div id="page2">
        <div id="text1">
            <h3>MEN'S FASHION / STYLE FOR ALL</h3>
            <h1>EMBRACE
                <br>
                YOUR STYLE
                <br>
                TODAY</h1>
        </div>
        <div id="text2">
            <p>DISCOVER THE PERFECT LOOK! FORGET LIMITS—STYLE HAS NO AGE, REGION, <br> OR STATUS. IT’S ABOUT CONFIDENCE, UNIQUENESS, AND SELF-EXPRESSION. <br> EXPLORE OUR COLLECTION TO REDEFINE YOUR WARDROBE AND STEP INTO A <br> FUTURE FILLED WITH STYLE, CHARISMA, AND BOLD CHOICES.</p>
        </div>
        
    </div>
    <div id="page3">
        <div id="text3">
            <h3>MEN'S FASHION / YOUR DOMAIN</h3>
            <h1>

                STYLE
                <br>
                IS YOUR
                <br>
                PLAYGROUND
            </h1>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js" integrity="sha512-cOH8ndwGgPo+K7pTvMrqYbmI8u8k6Sho3js0gOqVWTmQMlLIi6TbqGWRTpf1ga8ci9H3iPsvDLr4X7xwhC/+DQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/ScrollTrigger.min.js" integrity="sha512-AMl4wfwAmDM1lsQvVBBRHYENn1FR8cfOTpt8QVbb/P55mYOdahHD4LmHM1W55pNe3j/3od8ELzPf/8eNkkjISQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="asset/js/homeScript.js"></script>
</body>
</html>