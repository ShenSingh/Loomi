<%--
  Created by IntelliJ IDEA.
  User: gayashanashinshana
  Date: 2025-01-20
  Time: 03:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="asset/style/userLogin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


  </head>
  <body>
    <div id="login-page" class="container open">
  <h1>Dark Theme</h1>
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
  <div class="form-set">
    <div class="form-group">
      <lable class="form-label">User Name</lable>
      <input type="text" class="form-control"/>
    </div>
    <div class="form-group">
      <lable class="form-label">Password</lable>
      <input type="password" class="form-control"/>
    </div>
    <div class="form-group">
      <lable class="form-label">Password again</lable>
      <input type="password" class="form-control"/>
    </div>
    <div class="form-group">
      <lable class="form-label">E-mail</lable>
      <input type="text" class="form-control"/>
    </div>
    <button class="btn">Create Account</button>
  </div>
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
