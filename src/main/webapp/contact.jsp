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
  <title>Loomi | Contact</title>
  <link rel="stylesheet" href="asset/style/homeStyle.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.css">

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">


    <style>
        @import url(https://fonts.googleapis.com/css?family=Lato:100,300,400);

input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
  color: #aca49c;
  font-size: 0.875em;
}

input:focus::-webkit-input-placeholder, textarea:focus::-webkit-input-placeholder {
  color: #bbb5af;
}

input::-moz-placeholder, textarea::-moz-placeholder {
  color: #aca49c;
  font-size: 0.875em;
}

input:focus::-moz-placeholder, textarea:focus::-moz-placeholder {
  color: #bbb5af;
}

input::placeholder, textarea::placeholder {
  color: #aca49c;
  font-size: 0.875em;
}

input:focus::placeholder, textarea::focus:placeholder {
  color: #bbb5af;
}

input::-ms-placeholder, textarea::-ms-placeholder {
  color: #aca49c;
  font-size: 0.875em;
}

input:focus::-ms-placeholder, textarea:focus::-ms-placeholder {
  color: #bbb5af;
}

/* on hover placeholder */

input:hover::-webkit-input-placeholder, textarea:hover::-webkit-input-placeholder {
  color: #e2dedb;
  font-size: 0.875em;
}

input:hover:focus::-webkit-input-placeholder, textarea:hover:focus::-webkit-input-placeholder {
  color: #cbc6c1;
}

input:hover::-moz-placeholder, textarea:hover::-moz-placeholder {
  color: #e2dedb;
  font-size: 0.875em;
}

input:hover:focus::-moz-placeholder, textarea:hover:focus::-moz-placeholder {
  color: #cbc6c1;
}

input:hover::placeholder, textarea:hover::placeholder {
  color: #e2dedb;
  font-size: 0.875em;
}

input:hover:focus::placeholder, textarea:hover:focus::placeholder {
  color: #cbc6c1;
}

input:hover::placeholder, textarea:hover::placeholder {
  color: #e2dedb;
  font-size: 0.875em;
}

input:hover:focus::-ms-placeholder, textarea:hover::focus:-ms-placeholder {
  color: #cbc6c1;
}

#form {
    margin-top: 100px !important;
    padding-top: 100px !important;
    padding-bottom: 300px !important;
  position: relative;
  width: 800px;
  margin: 0 auto;
}

input {
  font-family: 'Lato', sans-serif;
  font-size: 0.875em;
  width: 800px;
  height: 60px;
  padding: 0px 15px 0px 15px;
  
  background: transparent;
  outline: none;
  color: #726659;
  
  border: solid 1px #b3aca7;
  border-bottom: none;
  
  transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
}

input:hover {
  background: #b3aca7;
  color: #e2dedb;
}

textarea {
  width: 800px;
  max-width: 800px;
  height: 210px;
  max-height: 210px;
  padding: 15px;
  
  background: transparent;
  outline: none;
  
  color: #726659;
  font-family: 'Lato', sans-serif;
  font-size: 0.875em;
  
  border: solid 1px #b3aca7;
  
  transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
}

textarea:hover {
  background: #b3aca7;
  color: #e2dedb;
}

#submit {
  width: 800px;
  
  padding: 0;
  margin: -5px 0px 0px 0px;
  
  font-family: 'Lato', sans-serif;
  font-size: 0.875em;
  color: #b3aca7;
  
  outline:none;
  cursor: pointer;
  
  border: solid 1px #b3aca7;
  border-top: none;
}

#submit:hover {
  color: #e2dedb;
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
        <h1 style="font-size: 5rem;">CONTACT</h1>



      </div>

      <div class="store-content">
        <section>
          <h4 class="section-subtitle">
            The Contact
          </h4>
          <h2 class="section-title">
            Chat with us on Email
          </h2>

          <form id="form" class="topBefore">
                        
                          <input id="name" type="text" placeholder="NAME">
                          <input id="email" type="text" placeholder="E-MAIL">
                          <textarea id="message" type="text" placeholder="MESSAGE"></textarea>
                  <input id="submit" type="submit" value="GO!">
                  
                </form>
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
<script src="asset/js/homeScript.js"></script>
</body>
</html>
