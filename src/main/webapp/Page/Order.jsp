<%--
  Created by IntelliJ IDEA.
  User: asd
  Date: 2023/5/28
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
                <li><a href="../Page/catalog.jsp">退出</a></li>

            </ul>

        </div>
    </div>>
</div>
<div class="zhan"></div>
<div id="center" class="wrapper">
    <div class="top">
        <h2 class="title">
            <span class="glyphicon glyphicon-shopping-cart"></span>
            订单
        </h2>
        <div class="clear"></div>
    </div>
    <table class="middle" >
        <thead>
        <tr>
            <th ></th>
            <th class="w39">No.</th>
            <th class="w521">地址</th>
            <th class="w97">数量</th>
            <th class="w67">总价</th>

            <th class="w521">时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var ="order" items="${orders}"  varStatus="status">

            <tr class="bgc">
                <th hidden>${order.orderproduct.product_name}</th>
                <th>${status.count}</th>
                <th class="praduct">
                    <a href="#" class="img-box"><img src="../img/fashion/${order.orderproduct.product_category}/${order.orderproduct.img_path}.jpg" alt=""></a>
                    <div class="text-box">
                        <a href="#">
                            <h5>${order.orderproduct.product_name}</h5><p>${order.orderproduct.product_category}</p>
                        </a>
                        <div class="type">
                            <span>描述信息</span>
                            <br>
                            <span class="grey">${order.orderproduct.product_description}</span>
                        </div>

                    </div>
                </th>
                <th>**********************************</th>
                <th>{order.quantity}</th>
                <th>${order.amount}</th>
                <th>${order.order_time}</th>
            </tr>

        </c:forEach>
        </tbody>
    </table>

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
<script src="js/style.js"></script>
<script src="js/shopcart.js"></script>
</body>
</html>
