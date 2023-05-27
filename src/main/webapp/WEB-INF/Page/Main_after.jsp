<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asd
  Date: 2023/5/24
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Shop</title>
    <link rel="stylesheet" href="../../fonts/glyphicons/css/glyphicons.css">
    <link rel="stylesheet" href="../../fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/carousel.css">
    <link rel="stylesheet" href="../../css/catalog.css">
</head>
<body>
<div id="header">
    <div id="nav">
        <div class="wrapper">
            <h1 class="logo">网上购物商城</h1>
            <ul class="nav-menu">
                <li><a href="###########">关于我们</a></li>
                <li class="menu-btn">
                    <a href="#">商城 <span class="arrow"></span></a>
                    <ul class="sub-menu">
                        <li><a href="###########">订单详情</a></li>
                        <li><a href="/Shopcar/car">购物车</a></li>
                    </ul>
                </li>

                <li><a href="../../Page/catalog.jsp">退出</a></li>

            </ul>

        </div>
    </div>
</div>
<div class="zhan"></div>
<div id="center" class="wrapper">
    <h2 id="title">
        <span class="glyphicon glyphicon-shopping-cart"></span>
        购物商城
    </h2>
    <div class="carousel">
        <div class="carousel-imgs">
            <div class="carousel-item">
                <div class="carousel-txt">
                    <!--提示-->
                    <h3>Special Offer</h3>
                    <p>飞一边的快捷，非一般的享受。</p>
                    <h5>Voucher: ABC-DEF123X</h5>
                    <!--跳转到商品页面 -->
                    <a href="#">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                        Get it now!
                    </a>
                </div>
                <img src="../../img/fashion/Recommend/3.jpg" alt="">
            </div>
            <div class="carousel-item">
                <div class="carousel-txt">
                    <h3>Special Offer</h3>
                    <p>飞一边的快捷，非一般的享受。</p>
                    <h5>Voucher: ABC-DEF123X</h5>
                    <a href="#">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                        Get it now!
                    </a>
                </div>
                <img src="../../img/fashion/Recommend/.jpg" alt="">
            </div>
            <div class="carousel-item">
                <div class="carousel-txt">
                    <h3>Special Offer</h3>
                    <p>飞一边的快捷，非一般的享受。</p>
                    <h5>Voucher: ABC-DEF123X</h5>
                    <a href="#">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                        Get it now!
                    </a>
                </div>
                <img src="../../img/fashion/Recommend/2.jpg" alt="">
            </div>
        </div>
        <ul class="carousel-btns">
            <li class="selected"></li>
            <li></li>
            <li></li>
            <div class="clear"></div>
        </ul>
    </div>

    <div id="main">
        <div id="side-bar">

            <p class="labels">
                <span>购物商场</span>
                <br>
                <span>2023-13-13</span><br>
                <span>多仓直发，极速配送</span>
                <span>正品行货，精致服务</span>
                <br>
                <span>天天低价，畅选无忧</span>
                <span>品类齐全，轻松购物</span></p>
        </div>
        <!--衣服clothes-->
        <div id="product-list">
           <C:forEach var="productst" items="${products_Book}" varStatus="sta">
               <c:forEach var="product" items="${productst}" varStatus="status">
                    <c:if test="${status.count==1}">
                    <ul class="fall-list">
                        <li>
                            <span class="p-price">$${product.product_price}</span>
                            <a href="/Products/product?name=${product.product_name}" class="product-img" >
                                <img src="../../img/fashion/${product.product_category}/${product.img_path}.jpg" alt="">
                            </a>
                            <div class="product-box">
                                <h3>${product.product_name}</h3>
                                <p>${product.product_description} </p>
                                <div class="btn-box">
                                    <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                                    <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                                    <a href="#" class="glyphicon glyphicon-eye-open"></a>
                                </div>
                            </div>
                        </li>
                    </c:if>

                            <c:if test="${status.count==2}">

                                <li>
                                    <span class="p-price">$${product.product_price}</span>
                                    <a href="/Products/product?name=${product.product_name}" class="product-img">
                                        <img src="../../img/fashion/${product.product_category}/${product.img_path}.jpg" alt="">
                                    </a>
                                    <div class="product-box">
                                        <h3>${product.product_name}</h3>
                                        <p>${product.product_description}</p>
                                        <div class="btn-box">
                                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                                        </div>
                                    </div>
                                </li>
                        </c:if>
                        <c:if test="${status.count==3}" >
                            <li>
                                <span class="p-price">$${product.product_price}</span>
                                <a href="/Products/product?name=${product.product_name}" class="product-img">
                                    <img src="../img/fashion/${product.product_category}/${product.img_path}.jpg" alt="">
                                </a>
                                <div class="product-box">
                                    <h3>${product.product_name}</h3>
                                    <p>${product.product_description}</p>
                                    <div class="btn-box">
                                        <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                                        <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                                        <a href="#" class="glyphicon glyphicon-eye-open"></a>
                                    </div>
                                </div>
                            </li>
                            </ul>
                        </c:if>

                </c:forEach>
           </C:forEach>

        </div>
    </div>
    <div class="clear"></div>
</div>

<div id="footer">
    <div class="wrapper">
        <div class="foot-top">

            <div class="about left">
                <h4>Remind</h4>
                <p> 网络购物，要选择正规、信誉好的商贸企业和电商平台，避免购买不明来源的货品。</p>
            </div>

            <div class="about left">
                <h4>About</h4>
                <p> 无锡生活,帮您到底!</p>
            </div>

            <div class="contact right">
                <h4>CONTACT</h4>
                <ul>
                    <li><span class="glyphicon glyphicon-phone"></span>01&nbsp230&nbsp1958</li>
                    <li><span class="glyphicon glyphicon-envelope"></span>****@0011*00</li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class="copyright">
            <span>© 2023 -</span>
            <a href="#"> Shopping</a>
            <span class="text-right">购物商城</span>
        </div>
    </div>
</div>
<script src="../../js/style.js"></script>
<script src="../../js/catalog.js"></script>
</body>
</html>