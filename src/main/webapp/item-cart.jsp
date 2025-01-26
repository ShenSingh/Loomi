<%@ page import="com.zenveus.ecommerce.entity.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CraveX</title>
    <link rel="stylesheet" href="./asset/style/pro-cartStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mukta:wght@800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

</head>

<body id="menu">
<div class="container1">
</div>

<div class="box-container mt-5">
    <div section="cart">
        <%-- Dynamically load cart items from the session or request attribute --%>
        <%
            // Retrieve cart items from the session
            List<CartItem> cartItems = (List<CartItem>) session.getAttribute("cartItems");

            if (cartItems != null && !cartItems.isEmpty()) {
                for (CartItem item : cartItems) {
        %>
        <article class="product">
            <header>
                <a class="remove" href="javascript:void(0);" onclick="removeSelected('<%= item.getId() %>')">
                    <img src="<%= item.getImage() %>" alt="<%= item.getName() %>">
                    <h3>Remove product</h3>
                </a>
            </header>

            <div class="content">
                <h1><%= item.getName() %></h1>
                <p><%= item.getDescription() != null ? item.getDescription() : "No description available." %></p>
            </div>

            <footer class="content">
                <span class="qt-minus">-</span>
                <span class="qt"><%= item.getQuantity() %></span>
                <span class="qt-plus">+</span>

                <h2 class="full-price">
                    <%= (item.getPrice() - (item.getPrice() * item.getDiscount() / 100)*item.getQuantity()) %>
                </h2>

                <h2 class="price">
                    <%= item.getPrice() - (item.getPrice() * item.getDiscount() / 100) %>
                </h2>
            </footer>
        </article>
        <%
            }
        } else {
        %>
        <p>Your cart is empty!</p>
        <%
            }
        %>

    </div>
</div>
<footer id="site-footer">
    <div class="container clearfix">

        <div class="left">
            <h2 class="subtotal">Subtotal: <span>0.0</span></h2>
            <h3 class="shipping">Shipping(5%): <span></span></h3>
        </div>

        <div class="right">
            <h1 class="total">Total: <span>0.0</span></h1>
            <a class="btn">Checkout</a>
        </div>

    </div>
</footer>

<form id="orderForm" action="save-order-servlet" method="post" style="display: none">
    <input type="hidden" id="username" name="username" value="">
    <input type="hidden" id="productList" name="productList" value="">
    <input type="hidden" id="total" name="total" value="">
</form>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>
    AOS.init();

    // send all the cart items to the cart-item-servlet from the Cart array in local storage
    $(document).ready(function() {
        var cart = JSON.parse(localStorage.getItem("Cart"));
        var cartItems = [];
        for (var i = 0; i < cart.length; i++) {
            var cartItem = {
                "id": cart[i].id,
                "name": cart[i].name,
                "price": cart[i].price,
                "quantity": cart[i].quantity,
                "description": cart[i].description,
                "image": String(cart[i].image),  // Ensure image is a string
                "discount": cart[i].discount
            };
            cartItems.push(cartItem);

        }

        // Sending the cart items in JSON format via AJAX
        $.ajax({
            type: "POST",
            url: "cart-item-servlet",
            contentType: "application/json",  // Set the Content-Type to application/json
            data: JSON.stringify(cartItems),  // Send the data as a JSON array
            success: function(response) {
                // Optionally, you can handle the response here
                console.log(response);
            },
            error: function(xhr, status, error) {
                console.error("Error: ", error);  // Log error if the request fails
            }
        });

    });
    function removeSelected(id) {
        // Retrieve the cart items from the local storage
        var cart = JSON.parse(localStorage.getItem("Cart"));
        // Find the index of the item to remove
        var index = cart.findIndex(item => item.id === id);
        // Remove the item from the cart array
        cart.splice(index, 1);
        // Update the local storage with the new cart array
        localStorage.setItem("Cart", JSON.stringify(cart));
        // Reload the page to reflect the changes
        location.reload();
    }

</script>

<script>
    AOS.init();

    var check = false;

    // Function to update the full price of each item based on quantity
    function changeVal(el) {
        var qt = parseFloat(el.closest('.product').find(".qt").html());
        var price = parseFloat(el.closest('.product').find(".price").html());
        var eq = Math.round(price * qt * 100) / 100;
        el.closest('.product').find(".full-price").html(eq);

        changeTotal(); // Recalculate total after changing quantity
    }

    // Function to update the subtotal, tax, and total
    function changeTotal() {
        var subtotal = 0;

        // Calculate subtotal from all item prices
        $(".full-price").each(function() {
            subtotal += parseFloat($(this).html());
        });

        subtotal = Math.round(subtotal * 100) / 100;
        var tax = Math.round(subtotal * 0.05 * 100) / 100;  // Tax is 5% of the subtotal
        var shipping = 5.0;  // Default shipping cost
        var fullPrice = Math.round((subtotal + tax + shipping) * 100) / 100;

        // If subtotal is 0, set fullPrice to 0 as well
        if (subtotal === 0) {
            fullPrice = 0;
        }

        // Update the UI with the new totals
        $(".subtotal span").html(subtotal.toFixed(2));
        $(".tax span").html(tax.toFixed(2));
        $(".total span").html(fullPrice.toFixed(2));
    }

    // Event listener for removing items from the cart
    $(document).ready(function() {
        // Call changeVal for all products on page load
        $(".product").each(function () {
            const el = $(this).find(".qt-plus"); // Target an element within each product to pass to changeVal
            changeVal(el); // Recalculate values for each product
        });

        $(".remove").click(function() {
            var el = $(this);
            el.closest(".product").addClass("removed");
            setTimeout(function() {
                el.closest(".product").slideUp('fast', function() {
                    $(this).remove();
                    if ($(".product").length === 0) {
                        if (check) {
                            $("#cart").html("<h1>The shop does not function, yet!</h1><p>If you liked my shopping cart, please take a second and heart this Pen on <a href='https://codepen.io/ziga-miklic/pen/xhpob'>CodePen</a>. Thank you!</p>");
                        } else {
                            $("#cart").html("<h1>No products!</h1>");
                        }
                    }
                    changeTotal(); // Recalculate total after item removal
                });
            }, 200);
        });

        // Increase the quantity of the product
        $(".qt-plus").click(function() {
            var qtyElement = $(this).parent().find(".qt");
            qtyElement.html(parseInt(qtyElement.html()) + 1);
            $(this).parent().find(".full-price").addClass("added");

            var el = $(this);
            setTimeout(function() {
                el.parent().find(".full-price").removeClass("added");
                changeVal(el); // Recalculate price after increasing quantity
            }, 150);
        });

        // Decrease the quantity of the product
        $(".qt-minus").click(function() {
            var qtyElement = $(this).parent().find(".qt");
            if (parseInt(qtyElement.html()) > 1) {
                qtyElement.html(parseInt(qtyElement.html()) - 1);
            }
            $(this).parent().find(".full-price").addClass("minused");

            var el = $(this);
            setTimeout(function() {
                el.parent().find(".full-price").removeClass("minused");
                changeVal(el); // Recalculate price after decreasing quantity
            }, 150);
        });

        // Close the cart after a short timeout
        setTimeout(function() {
            $(".is-open").removeClass("is-open");
        }, 1200);

        $(".btn").click(function () {
            var username = "admin";
            var cart = JSON.parse(localStorage.getItem("Cart"));
            var total = $(".total span").text();

            // Populate the hidden form fields
            $("#username").val(username);
            $("#productList").val(JSON.stringify(cart));
            $("#total").val(total);

            // Submit the form
            $("#orderForm").submit();
            setTimeout(function() {
                $(".remove").click();
            }, 2000);
        });

    });
</script>

</body>
</html>