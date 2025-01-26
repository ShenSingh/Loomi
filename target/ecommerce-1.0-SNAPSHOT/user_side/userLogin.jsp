<%--
  Created by IntelliJ IDEA.
  User: gayashanashinshana
  Date: 2025-01-200
  Time: 03:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <script src="https://kit.fontawesome.com/792a5a6c8c.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <style>
      @import url('https://fonts.googleapis.com/css?family=Vibur');

      body {
        background: url("https://res.cloudinary.com/dtk2o5pc4/image/upload/v1470238639/bg1_mg97hp.jpg") no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        overflow: hidden;
        font-family: arial;
        color: #999999;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      .link {
        cursor: pointer;
      }

      .container {
        width: 400px;
        background-color: rgba(255, 255, 255, 0.9);
        box-shadow: 4px 4px 5px rgba(0, 0, 0, 0.5);
        margin: 50px auto;
        padding-top: 10px;
        padding-bottom: 30px;
        position: relative;
        transition: transform 0.5s ease;
        animation: page-down 1s;
      }

      .container.close {
        display: none;
      }

      .container h1 {
        font-family: "Vibur";
        font-size: 50px;
        text-align: center;
        margin: 25px 0;
        color: #b3b3b3;
      }

      .close-button {
        position: absolute;
        top: 5px;
        right: 5px;
      }

      .close-button i {
        color: #b3b3b3;
        padding: 10px;
      }

      .form-set {
        padding: 25px;
        max-width: 320px;
        margin: auto;
      }

      .form-group {
        position: relative;
        margin-bottom: 15px;
        border-bottom: 1px solid #cccccc;
      }

      .form-label {
        position: absolute;
        transition: 0.15s all ease;
      }

      .form-label.on-focus,
      .form-label.filled {
        font-size: 10px;
        top: -10px;
        transition: 0.15s all ease;
      }

      .form-control {
        height: 25px;
        padding: 5px;
        position: relative;
        z-index: 2;
        border: none;
        background-color: transparent;
        width: 100%;
      }

      .form-control:focus {
        outline: -webkit-focus-ring-color auto 0px;
      }

      .btn {
        width: 100%;
        height: 40px;
        border: 1px solid #999999;
        border-radius: 30px;
        background-color: transparent;
        font-size: 16px;
        margin: 15px 0;
        cursor: pointer;
      }

      .btn:focus {
        outline: -webkit-focus-ring-color auto 0px;
      }

      .login-with .title {
        padding-bottom: 5px;
        padding-left: 15px;
        border-bottom: 1px solid #cccccc;
      }

      .login-with .social .icons {
        text-align: center;
      }

      .login-with .social .icon {
        list-style-type: none;
        width: 40px;
        height: 40px;
        border-radius: 40px;
        line-height: 40px;
        color: #ffffff;
        background-color: #b3b3b3;
        display: inline-block;
        vertical-align: middle;
        margin: 20px 5px;
        cursor: pointer;
      }

      .login-with .social .icon i {
        color: #ffffff;
      }

      .other-links div {
        padding-left: 15px;
        cursor: pointer;
        font-size: 12px;
      }

      .other-links div:hover {
        text-decoration: underline;
      }

      @keyframes page-down {
        0% {
          transform: translateY(-200px);
          opacity: 0;
        }
        100% {
          transform: translateY(0);
          opacity: 1;
        }
      }
    </style>


  </head>
  <body>
    <div id="login-page" class="container open">
  <h1>Loomi</h1>
      <form action="${pageContext.request.contextPath}/sign-in-servlet" method="post">
        <div class="form-set">
          <div class="form-group">
            <lable class="form-label">User Name</lable>
            <input type="text" class="form-control" name="email"/>
          </div>
          <div class="form-group">
            <lable class="form-label">Password</lable>
            <input type="password" class="form-control" name="password"/>
          </div>
          <button class="btn">Log in</button>
        </div>
      </form>
  <div class="login-with">
    <div class="title">Login with</div>
    <div class="social">
      <ul class="icons">
        <li class="icon facebook">
          <div class="link" data-close="login-page" data-open="facebook-page"><i class="fa fa-facebook"aria-hidden="true"></i>
          </div>
        </li>
        <li class="icon twitter">
          <div class="link" data-close="login-page" data-open="twitter-page"><i class="fa fa-twitter" aria-hidden="true"></i></div>
        </li>
        <li class="icon pinterest">
          <div class="link" data-close="login-page" data-open="pinterest-page"><i class="fa fa-pinterest-p" aria-hidden="true"></i>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <div class="other-links">
    <div>
      <div class="link" data-close="login-page" data-open="new-account-page">Don’t have an Account?</div>
    </div>
    <div>
      <div class="link" data-close="login-page" data-open="forgot-pass-page">Forgot your password?</div>
    </div>
  </div>
</div>

<div id="facebook-page" class="container close">
  <div class='close-button'>
    <div class="link" data-close="facebook-page" data-open="login-page">
      <i class='fa fa-close' aria-hidden='true'></i>
    </div>
  </div>
  <h1>Facebook</h1>
  <div class="form-set">
    <div class="form-group">
      <lable class="form-label">User Name</lable>
      <input type="text" class="form-control"/>
    </div>
    <div class="form-group">
      <lable class="form-label">Password</lable>
      <input type="password" class="form-control"/>
    </div>
    <button class="btn">Log in</button>
  </div>
</div>

<div id="twitter-page" class="container close">
  <div class='close-button'>
    <div class="link" data-close="twitter-page" data-open="login-page">
      <i class='fa fa-close' aria-hidden='true'></i>
    </div>
  </div>
  <h1>Twitter</h1>
  <div class="form-set">
    <div class="form-group">
      <lable class="form-label">User Name</lable>
      <input type="text" class="form-control"/>
    </div>
    <div class="form-group">
      <lable class="form-label">Password</lable>
      <input type="password" class="form-control"/>
    </div>
    <button class="btn">Log in</button>
  </div>
</div>

<div id="pinterest-page" class="container close">
  <div class='close-button'>
    <div class="link" data-close="pinterest-page" data-open="login-page">
      <i class='fa fa-close' aria-hidden='true'></i>
    </div>
  </div>
  <h1>Pinterest</h1>
  <div class="form-set">
    <div class="form-group">
      <lable class="form-label">User Name</lable>
      <input type="text" class="form-control"/>
    </div>
    <div class="form-group">
      <lable class="form-label">Password</lable>
      <input type="password" class="form-control"/>
    </div>
    <button class="btn">Log in</button>
  </div>
</div>

<div id="new-account-page" class="container close">
  <div class='close-button'>
    <div class="link" data-close="new-account-page" data-open="login-page">
      <i class='fa fa-close' aria-hidden='true'></i>
    </div>
  </div>
  <h1>New Account</h1>

  <form action="${pageContext.request.contextPath}/register-servlet" method="post">
    <div class="form-set">
      <div class="form-group">
        <lable class="form-label">User Name</lable>
        <input type="text" class="form-control" name="username"/>
      </div>
      <div class="form-group">
        <lable class="form-label">Password</lable>
        <input type="password" class="form-control" name="password"/>
      </div>
      <div class="form-group">
        <lable class="form-label">E-mail</lable>
        <input type="text" class="form-control" name="email"/>
      </div>
      <button class="btn">Create Account</button>
    </div>
  </form>
</div>

<div id="forgot-pass-page" class="container close">
  <div class='close-button'>
    <div class="link" data-close="forgot-pass-page" data-open="login-page">
      <i class='fa fa-close' aria-hidden='true'></i>
    </div>
  </div>
  <h1>Forgot password?</h1>
  <div class="form-set">
    <div class="form-group">
      <lable class="form-label">E-mail</lable>
      <input type="text" class="form-control"/>
    </div>
    <button class="btn">Send</button>
  </div>
</div>

<script>

  <% if (request.getAttribute("message") != null) { %>
  // Clear the input fields
  document.querySelector('input[name="username"]').value = '';
  document.querySelector('input[name="email"]').value = '';
  document.querySelector('input[name="password"]').value = '';

  // Display the alert
  Swal.fire({
    icon: 'info',
    title: 'Message',
    text: '<%= request.getAttribute("message") %>'
  });
  <% } %>

  document.addEventListener("DOMContentLoaded", function () {
    function onFocus() {
        this.run = this.init();
    }

    onFocus.prototype.init = function () {
        this.addFocusClass();
        this.keyUpObserve();
        this.clickLink();
    };

    onFocus.prototype.addFocusClass = function () {
        var formControls = document.querySelectorAll(".form-control");
        formControls.forEach(function (input) {
            input.addEventListener("focus", function () {
                var label = input.previousElementSibling;
                if (label) {
                    label.classList.add("on-focus");
                }
            });
            input.addEventListener("focusout", function () {
                var labels = document.querySelectorAll(".form-label");
                labels.forEach(function (label) {
                    label.classList.remove("on-focus");
                });
            });
        });
    };

    onFocus.prototype.keyUpObserve = function () {
        var formControls = document.querySelectorAll(".form-control");
        formControls.forEach(function (input) {
            input.addEventListener("keyup", function () {
                var label = input.previousElementSibling;
                if (input.value.length > 0) {
                    label.classList.add("filled");
                } else {
                    label.classList.remove("filled");
                }
            });
        });
    };

    onFocus.prototype.clickLink = function () {
        var links = document.querySelectorAll(".link");
        links.forEach(function (link) {
            link.addEventListener("click", function () {
                var open = document.getElementById(link.dataset.open);
                var close = document.getElementById(link.dataset.close);

                close.style.opacity = 0;
                close.style.top = "100px";
                setTimeout(function () {
                    close.classList.remove("open");
                    close.classList.add("close");
                    close.removeAttribute("style");

                    open.classList.remove("close");
                    open.classList.add("open");
                }, 500);
            });
        });
    };
    var run = new onFocus();
});


</script>
  </body>
</html>
