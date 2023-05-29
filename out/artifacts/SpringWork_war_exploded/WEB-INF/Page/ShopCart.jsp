<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asd
  Date: 2023/5/25
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../../fonts/glyphicons/css/glyphicons.css">
    <link rel="stylesheet" href="../../fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../../css/shopcart.css">
    <link rel="stylesheet" href="../../css/carousel.css">

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
                        <li><a href="/Order/orders">订单详情</a></li>
                        <li><a href="/Shopcar/car">购物车</a></li>
                    </ul>
                </li>

                <li><a href="/Main_products/Product">返回</a></li>
                <li><a href="../../Page/catalog.jsp">退出</a></li>

            </ul>

        </div>
    </div>
</div>
<div class="zhan"></div>
<div id="center" class="wrapper">
    <div class="top">
        <h2 class="title">
            <span class="glyphicon glyphicon-shopping-cart"></span>
            购物车
        </h2>
        <div class="clear"></div>
    </div>
    <table class="middle">
        <thead>
        <tr>
        <th class="w31"><input type="checkbox" class="checkbox"></th>
        <th class="w39">No.</th>
        <th class="w521"></th>
        <th class="w67">数量</th>
        <th class="w97">价格</th>
        <th class="w97">优惠</th>
        <th class="w97">总价</th>
        </tr>
        </thead>
        <tbody>


            <c:forEach var ="shop" items="${requestScope.carts}"  varStatus="status">

            <tr class="bgc">
                    <th><input type="checkbox" class="checkbox"></th>
                    <th hidden>${shop.cart_id}</th>
                    <th>${status.count}</th>
                    <th class="praduct">
                        <a href="#" class="img-box"><img src="../../img/fashion/${shop.cartproduct.product_category}/${shop.cartproduct.img_path}.jpg" alt=""></a>
                        <div class="text-box">
                            <a href="#">
                                <h5>${shop.cartproduct.product_name}</h5><p>${shop.cartproduct.product_category}</p>
                            </a>
                            <div class="type">
                                <span>描述信息</span>
                                <br>
                                <span class="grey">${shop.cartproduct.product_description}</span>
                            </div>

                        </div>
                    </th>
                <th><input  type="text" class="text"  readonly="readonly" value="${shop.quantity}">
                    <br>
                    <a href="/Shopcar/update/${shop.cart_id}/-1"><button>-</button></a>
                    <a href="/Shopcar/update/${shop.cart_id}/1"><button>+</button></a>
                </th>
                <th><input  class="text"  readonly="readonly"   type="text" value="${shop.cartproduct.product_price}"></th>
                <th>$0.00</th>
                <th>$<input  class="text" readonly="readonly" type="text" value="${shop.cartproduct.product_price*shop.quantity}"></th>
            </tr>

            </c:forEach>

        </tbody>
    </table>
    <div class="bottom">

        <table class="price">
            <tr>
                <td>商品价格：</td>
                <td class="strong">$<input id="price" readonly="readonly"  value="00"/></td>
            </tr>
            <tr>
                <td>快递费：</td>
                <td class="strong">$0.00</td>
            </tr>
            <tr>
                <td>总价:</td>
                <td class="strong">$<input id ="allprice" readonly="readonly"  value="
					00"/></td>
            </tr>
        </table>
        <div class="buy">
            <p  id="Total">0</p>
            <form id = "postBuys" action="/Shopcar/test" method="post">
            <button id="buybutton" style="pointer-events:none; "><span class="glyphicon glyphicon-arrow-right"></span>Proceed to Payment</button>
            </form>
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
<script src="../../js/shopcart.js"></script>

</body>
</html>
