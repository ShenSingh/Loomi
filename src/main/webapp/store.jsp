<%@ page import="com.zenveus.ecommerce.entity.Category" %>
<%@ page import="com.zenveus.ecommerce.entity.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="asset/style/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loomi | Store</title>
    <link rel="stylesheet" href="./asset/style/homeStyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.css">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>
<div id="nav" style="z-index: 99999!important;">

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
                <i class="fas fa-shopping-cart" onclick="function goToProCart() {
                    window.location.href = 'item-cart.jsp';
                }
                goToProCart()"></i>
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
                <h1 style="font-size: 5rem;" onclick="loadProducts()">STORE</h1>
                <div class="searchProduct">
                    <label for="search"></label>
                    <input type="text" id="search" name="search" placeholder="search your style">
                    <button class="searchPro-btn" type="submit" id="searchPro-btn" onclick="loadProducts()">
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

                        <%
                            List<Item> items = (List<Item>) session.getAttribute("menu_items");
                            if (items != null) {
                                for (Item item : items) {
                        %>

                        <div class="bs-card">
                            <div class="bs-card-img" id="bs-img-1"  style="
                                background-image: url('data:image/jpeg;base64,<%= new String(item.getImage()) %>');
                                "></div>
                            <div class="bs-card-body">
                                <div class="bs-card-header">
                                    <a href="#" class="bs-card-title"><%= item.getName()%></a>
                                </div>
                                <div class="bs-cloth-data">
                                    <span class="bs-card-material para-font"><%= item.getDescription()%> </span>
                                    <span class="bs-card-size para-font">Sizes: S, M, L, XL</span>
                                </div>
                                <div class="bs-cloth-footer">
                                <span class="price">
                                  <%= item.getPrice()%>
                                </span>
                                    <button class="bs-card-btn"
                                            onclick="addToCart('<%= item.getId() %>', '<%= item.getName() %>', <%= item.getPrice() %>, 'data:image/jpeg;base64,<%= new String(item.getImage()) %>', '<%= item.getDescription() %>', <%= item.getDiscount() %>)">
                                        BUY NOW
                                    </button>
                                </div>
                            </div>
                        </div>


                        <%
                                }
                            }
                        %>



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
        <form action="load-items-to-store" method="post" id="loadItemsForm"style="display: none">
            <button type="submit" id="loadItemsButton"></button>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/locomotive-scroll@3.5.4/dist/locomotive-scroll.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js" integrity="sha512-cOH8ndwGgPo+K7pTvMrqYbmI8u8k6Sho3js0gOqVWTmQMlLIi6TbqGWRTpf1ga8ci9H3iPsvDLr4X7xwhC/+DQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/ScrollTrigger.min.js" integrity="sha512-AMl4wfwAmDM1lsQvVBBRHYENn1FR8cfOTpt8QVbb/P55mYOdahHD4LmHM1W55pNe3j/3od8ELzPf/8eNkkjISQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="asset/js/homeScript.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
    AOS.init();
    function loadProducts(){
        console.log('clicked');
        $('#loadItemsButton').click();
    }

    // Function to handle adding items to the cart
    function addToCart(itemId, itemName, itemPrice, itemImage, itemDescription, itemDiscount) {
        // Retrieve the existing cart from localStorage or initialize an empty array
        let cart = JSON.parse(localStorage.getItem('Cart')) || [];

        // Check if the item already exists in the cart
        const existingItem = cart.find(item => item.id === itemId);

        if (existingItem) {
            // If the item is already in the cart, increase the quantity
            existingItem.quantity += 1;

            // Show a styled success notification
            toastr.success(`Increased quantity of ${itemName} in your cart!`);
        } else {
            // Otherwise, add a new item to the cart
            cart.push({
                id: itemId,
                name: itemName,
                price: itemPrice,
                image: itemImage,
                quantity: 1, // Default quantity is 1
                description: itemDescription,
                discount: itemDiscount
            });

            // Show a styled success notification
            toastr.success(`${itemName} has been added to your cart!`);
        }

        // Save the updated cart back to localStorage
        localStorage.setItem('Cart', JSON.stringify(cart));
    }

</script>
</body>
</html>
