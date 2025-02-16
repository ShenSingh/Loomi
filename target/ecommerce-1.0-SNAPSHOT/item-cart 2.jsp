<%--
  Created by IntelliJ IDEA.
  User: gayashanashinshana
  Date: 2025-01-26
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cart</title>
    <link rel="stylesheet" href="asset/style/pro-cartStyle.css">
</head>
<body>
<div class="container">

    <section id="cart">
        <article class="product">
            <header>
                <a class="remove">
                    <img src="http://www.astudio.si/preview/blockedwp/wp-content/uploads/2012/08/1.jpg" alt="">

                    <h3>hjgfdsasdefghjkloiuytrewq</h3>
                </a>
            </header>

            <div class="content">

                <h1>Lorem ipsum</h1>

                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

                <div title="You have selected this product to be shipped in the color yellow." style="top: 0" class="color yellow"></div>
                <div style="top: 43px" class="type small">XXL</div>
            </div>

            <footer class="content">
                <span class="qt-minus">-</span>
                <span class="qt">2</span>
                <span class="qt-plus">+</span>

                <h2 class="full-price">
                    29.98€
                </h2>

                <h2 class="price">
                    14.99€
                </h2>
            </footer>
        </article>

        <article class="product">
            <header>
                <a class="remove">
                    <img src="http://www.astudio.si/preview/blockedwp/wp-content/uploads/2012/08/3.jpg" alt="">

                    <h3>Remove product</h3>
                </a>
            </header>

            <div class="content">

                <h1>Lorem ipsum dolor</h1>

                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

                <div title="You have selected this product to be shipped in the color red." style="top: 0" class="color red"></div>
                <div title="You have selected this product to be shipped sized Small."  style="top: 43px" class="type small">Small</div>
            </div>

            <footer class="content">

                <span class="qt-minus">-</span>
                <span class="qt">1</span>
                <span class="qt-plus">+</span>

                <h2 class="full-price">
                    79.99€
                </h2>

                <h2 class="price">
                    79.99€
                </h2>
            </footer>
        </article>

        <article class="product">
            <header>
                <a class="remove">
                    <img src="http://www.astudio.si/preview/blockedwp/wp-content/uploads/2012/08/5.jpg" alt="">

                    <h3>Remove product</h3>
                </a>
            </header>

            <div class="content">

                <h1>Lorem ipsum dolor ipsdu</h1>

                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, numquam quis perspiciatis ea ad omnis provident laborum dolore in atque.

                <div title="You have selected this product to be shipped in the color blue." style="top: 0" class="color blue"></div>
                <div style="top: 43px" class="type small">Large</div>
            </div>

            <footer class="content">

                <span class="qt-minus">-</span>
                <span class="qt">3</span>
                <span class="qt-plus">+</span>

                <h2 class="full-price">
                    53.99€
                </h2>

                <h2 class="price">
                    17.99€
                </h2>
            </footer>
        </article>

    </section>

</div>

<footer id="site-footer">
    <div class="container clearfix">

        <div class="left">
            <h2 class="subtotal">Subtotal: <span>163.96</span>€</h2>
            <h3 class="tax">Taxes (5%): <span>8.2</span>€</h3>
            <h3 class="shipping">Shipping: <span>5.00</span>€</h3>
        </div>

        <div class="right">
            <h1 class="total">Total: <span>177.16</span>€</h1>
            <a class="btn">Checkout</a>
        </div>

    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    var check = false;

    function changeVal(el) {
        var qt = parseFloat(el.parent().children(".qt").html());
        var price = parseFloat(el.parent().children(".price").html());
        var eq = Math.round(price * qt * 100) / 100;

        el.parent().children(".full-price").html( eq + "€" );

        changeTotal();
    }

    function changeTotal() {

        var price = 0;

        $(".full-price").each(function(index){
            price += parseFloat($(".full-price").eq(index).html());
        });

        price = Math.round(price * 100) / 100;
        var tax = Math.round(price * 0.05 * 100) / 100
        var shipping = parseFloat($(".shipping span").html());
        var fullPrice = Math.round((price + tax + shipping) *100) / 100;

        if(price == 0) {
            fullPrice = 0;
        }

        $(".subtotal span").html(price);
        $(".tax span").html(tax);
        $(".total span").html(fullPrice);
    }

    $(document).ready(function(){

        $(".remove").click(function(){
            var el = $(this);
            el.parent().parent().addClass("removed");
            window.setTimeout(
                function(){
                    el.parent().parent().slideUp('fast', function() {
                        el.parent().parent().remove();
                        if($(".product").length == 0) {
                            if(check) {
                                $("#cart").html("<h1>The shop does not function, yet!</h1><p>If you liked my shopping cart, please take a second and heart this Pen on <a href='https://codepen.io/ziga-miklic/pen/xhpob'>CodePen</a>. Thank you!</p>");
                            } else {
                                $("#cart").html("<h1>No products!</h1>");
                            }
                        }
                        changeTotal();
                    });
                }, 200);
        });

        $(".qt-plus").click(function(){
            $(this).parent().children(".qt").html(parseInt($(this).parent().children(".qt").html()) + 1);

            $(this).parent().children(".full-price").addClass("added");

            var el = $(this);
            window.setTimeout(function(){el.parent().children(".full-price").removeClass("added"); changeVal(el);}, 150);
        });

        $(".qt-minus").click(function(){

            child = $(this).parent().children(".qt");

            if(parseInt(child.html()) > 1) {
                child.html(parseInt(child.html()) - 1);
            }

            $(this).parent().children(".full-price").addClass("minused");

            var el = $(this);
            window.setTimeout(function(){el.parent().children(".full-price").removeClass("minused"); changeVal(el);}, 150);
        });

        window.setTimeout(function(){$(".is-open").removeClass("is-open")}, 1200);

        $(".btn").click(function(){
            check = true;
            $(".remove").click();
        });
    });
</script>

</body>
</html>
