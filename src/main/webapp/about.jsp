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
    <title>Loomi | About</title>
    <link rel="stylesheet" href="asset/style/homeStyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">


    <style>
      .sticky-note {
  max-width: 320px;
  padding: 2.8rem 1.8rem 1.8rem 1.8rem;
  position: relative;
  margin-top: 3rem;
  margin-left: 3rem;
}

.sticky-note__content{
  z-index: 4;
  position: relative;
  min-height: 160px;
}

.sticky-note__sheet {
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
}

.sticky-note__sheet--top {
  z-index: 3;
  background: rgb(255, 255, 255); /* Old browsers */
  background: -moz-linear-gradient(45deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%); /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%); /* Chrome10-25, Safari5.1-6 */
  background: linear-gradient(45deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#fff", endColorstr="#fff", GradientType=1); /* IE6-9 fallback on horizontal gradient */
  transform: rotate(2deg);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
  height: 102%;
}

.sticky-note__sheet--middle {
  background: rgb(255, 255, 255); /* Old browsers */
  background: -moz-linear-gradient(45deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%); /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%); /* Chrome10-25, Safari5.1-6 */
  background: linear-gradient(45deg, rgb(255, 255, 255) 0%, rgb(255, 255, 255) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#fff", endColorstr="#fff", GradientType=1); /* IE6-9 fallback on horizontal gradient */
  z-index: 2;
  transform: rotate(-1deg) translate(6px, -4px);
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

.sticky-note__sheet--bottom {
  background: rgb(0, 0, 0);
  z-index: 1;
  width: 98%;
  transform: rotate(-5deg) translate(14px, -1px);
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.sticky-note__tape {
  z-index: 5;
  position: absolute;
  top: -20px;
  left: 50%;
  transform: translateX(-50%);
  height: 36px;
  width: 70px;
  opacity: 0.6;
}
.note-1{
  position: absolute;
  margin-left: 950px;
}
.note-2{
  position: absolute;
  margin-left: 500px;
  margin-top: 100px;
}
.note-3{

}

.note-4{
  margin-top: 150px;
}

.note-5{
  margin-top: -100px;
  margin-left: 850px;
}



    </style>

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
                <h1 style="font-size: 5rem;">ABOUT</h1>
            </div>

            <div class="store-content">
                <section>
                    <h4 class="section-subtitle">
                        The About
                    </h4>
                    <h2 class="section-title">
                         Search Your Style
                    </h2>

                    <div class="about-text">
                  <p class="main-abo-text">
                    Loomi is a premium men's fashion shop offering a wide range of 
                    stylish and modern clothing for <br> every occasion. Our collection 
                    features high-quality fabrics, exceptional craftsmanship, and the latest 
                    trends in men's fashion. From casual wear to formal attire, we ensure our 
                    customers find the perfect pieces to elevate their wardrobe. At Loomi, we are 
                    committed to providing a unique shopping experience, where fashion meets comfort 
                    and affordability. Whether you are looking to refresh your everyday essentials or 
                    make a statement at a special event, Loomi is your go-to destination for men's fashion.
                  </p>

                  <div class="abo-note">
                    <div class="sticky-note note-1">
                      <div class="sticky-note__content">
                        <h3 class="uppercase mb-4 text-grey-darkest">Loomi's Vision</h3>
                        <p class="text-orange font-bold italic">Loomi is a premium men's fashion store offering a curated collection of the latest trends and timeless classics. Our mission is to provide stylish, high-quality fashion pieces for every man who values elegance and comfort.</p>
                      </div>
                      <div class="sticky-note__tape">
                        <svg width="76" height="36" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 -1 0 76 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 -1 0 76 3)" fill="#008934"/><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 1 0 0 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 1 0 0 3)" fill="#008934"/><defs><path id="path0_fill" d="M0 0h70v36H0V0z"/><path id="path1_fill" d="M0 0l3 3H0V0z"/><path id="path2_fill" d="M3 0l3 3H0l3-3z"/><path id="path3_fill" d="M3 0v3H0l3-3z"/></defs></svg>
                      </div>
                      <div class="sticky-note__sheet sticky-note__sheet--top"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--middle"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--bottom"></div>
                    </div>
                    
                    <div class="sticky-note note-2">
                      <div class="sticky-note__content">
                        <h3 class="uppercase mb-4 text-grey-darkest">Loomi's Style Statement</h3>
                        <p class="text-orange font-bold italic">At Loomi, we focus on blending modern fashion with comfort and sophistication. 
                          Our collection includes a variety of shirts, trousers, jackets, and accessories designed to suit every occasion. 
                          Whether you're dressing for a formal event or a casual outing, Loomi has the perfect outfit for you.</p>
                      </div>
                      <div class="sticky-note__tape">
                        <svg width="76" height="36" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 -1 0 76 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 -1 0 76 3)" fill="#008934"/><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 1 0 0 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 1 0 0 3)" fill="#008934"/><defs><path id="path0_fill" d="M0 0h70v36H0V0z"/><path id="path1_fill" d="M0 0l3 3H0V0z"/><path id="path2_fill" d="M3 0l3 3H0l3-3z"/><path id="path3_fill" d="M3 0v3H0l3-3z"/></defs></svg>
                      </div>
                      <div class="sticky-note__sheet sticky-note__sheet--top"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--middle"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--bottom"></div>
                    </div>
                    
                    <div class="sticky-note note-3">
                      <div class="sticky-note__content">
                        <h3 class="uppercase mb-4 text-grey-darkest">Loomi's Commitment to Quality</h3>
                        <p class="text-orange font-bold italic">Loomi represents the epitome of style and quality. Our commitment 
                          to excellence ensures that each piece in our store reflects the latest fashion trends, while maintaining 
                          the highest standards in craftsmanship and material selection. At Loomi, we believe in offering timeless 
                          elegance that suits every man's wardrobe.</p>
                      </div>
                      <div class="sticky-note__tape">
                        <svg width="76" height="36" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 -1 0 76 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 -1 0 76 3)" fill="#008934"/><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 1 0 0 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 1 0 0 3)" fill="#008934"/><defs><path id="path0_fill" d="M0 0h70v36H0V0z"/><path id="path1_fill" d="M0 0l3 3H0V0z"/><path id="path2_fill" d="M3 0l3 3H0l3-3z"/><path id="path3_fill" d="M3 0v3H0l3-3z"/></defs></svg>
                      </div>
                      <div class="sticky-note__sheet sticky-note__sheet--top"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--middle"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--bottom"></div>
                    </div>
                    
                    <div class="sticky-note note-4">
                      <div class="sticky-note__content">
                        <h3 class="uppercase mb-4 text-grey-darkest">Loomi's Customer Experience</h3>
                        <p class="text-orange font-bold italic">We believe that a great shopping experience should be as stylish 
                          as the clothes you wear. At Loomi, we provide personalized customer service, ensuring that every visit is 
                          enjoyable, easy, and fulfilling. Whether you're shopping online or in-store, Loomi is dedicated to making 
                          your shopping experience smooth and memorable.</p>
                      </div>
                      <div class="sticky-note__tape">
                        <svg width="76" height="36" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 -1 0 76 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 -1 0 76 3)" fill="#008934"/><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 1 0 0 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 1 0 0 3)" fill="#008934"/><defs><path id="path0_fill" d="M0 0h70v36H0V0z"/><path id="path1_fill" d="M0 0l3 3H0V0z"/><path id="path2_fill" d="M3 0l3 3H0l3-3z"/><path id="path3_fill" d="M3 0v3H0l3-3z"/></defs></svg>
                      </div>
                      <div class="sticky-note__sheet sticky-note__sheet--top"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--middle"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--bottom"></div>
                    </div>
                    
                    <div class="sticky-note note-5">
                      <div class="sticky-note__content">
                        <h3 class="uppercase mb-4 text-grey-darkest">Loomi's Future</h3>
                        <p class="text-orange font-bold italic">As Loomi continues to grow, our focus remains on offering the 
                          best fashion experience for our customers. We plan to expand our online presence, bring in more styles, 
                          and continue our commitment to providing fashionable and affordable clothing for every man.</p>
                      </div>
                      <div class="sticky-note__tape">
                        <svg width="76" height="36" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 -1 0 76 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 -1 0 76 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 -1 0 76 3)" fill="#008934"/><use xlink:href="#path0_fill" transform="translate(3)" fill="#008934"/><use xlink:href="#path1_fill" transform="matrix(0 -1 1 0 0 36)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 33)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 27)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 21)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 15)" fill="#008934"/><use xlink:href="#path2_fill" transform="matrix(0 -1 1 0 0 9)" fill="#008934"/><use xlink:href="#path3_fill" transform="matrix(0 -1 1 0 0 3)" fill="#008934"/><defs><path id="path0_fill" d="M0 0h70v36H0V0z"/><path id="path1_fill" d="M0 0l3 3H0V0z"/><path id="path2_fill" d="M3 0l3 3H0l3-3z"/><path id="path3_fill" d="M3 0v3H0l3-3z"/></defs></svg>
                      </div>
                      <div class="sticky-note__sheet sticky-note__sheet--top"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--middle"></div>
                      <div class="sticky-note__sheet sticky-note__sheet--bottom"></div>
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
