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
    <link rel="stylesheet" href="../fonts/glyphicons/css/glyphicons.css">
    <link rel="stylesheet" href="../fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/carousel.css">
    <link rel="stylesheet" href="../css/catalog.css">
</head>
<body>
<div id="header">
    <div id="top-nav">
        <div class="wrapper">

            <div id="top-menu">
                <ul>

                    <li class="btn login">
                        <a href="login.html">
                            <span class="glyphicon glyphicon-lock"></span>
                            登录
                        </a>
                    </li>
                    <li class="btn register">
                        <a href="register.html">
                            <span class="glyphicon glyphicon-user"></span>
                            注册
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="nav">
        <div class="wrapper">
            <h1 class="logo">网上购物商城</h1>
            <ul class="nav-menu">
                <li><a href="about.html">关于我们</a></li>
                <li class="menu-btn">
                    <a href="#">商城 <span class="arrow"></span></a>
                    <ul class="sub-menu">
                        <li><a href="product.html">商品详情</a></li>
                        <li><a href="shopcart.html">购物车</a></li>
                    </ul>
                </li>

                <li><a href="contact.html">联系我们</a></li>
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
                <img src="../img/3.jpg" alt="">
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
                <img src="../img/1.jpg" alt="">
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
                <img src="../img/2.jpg" alt="">
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

        <div id="product-list">
            <ul class="fall-list">
                <li>
                    <span class="p-price">$101.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\clothes\1.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>品彩短袖连衣裙</h3>
                        <p>品彩碎花短袖连衣裙女夏气质优雅方领温柔中长裙a字裙 </p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="p-price">$144.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\clothes\2.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>李宁067019</h3>
                        <p>李宁（LI-NING）跑步运动套装男背心短裤夏季健身篮球训练衣服饰速干透气吸汗</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="p-price">$109.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\clothes\3.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>卡吉蘭娜</h3>
                        <p>卡吉蘭娜（Kajilanna）新款连衣裙2023夏季女装小个子网纱裙法式温柔风气质套装裙子夏天 杏色上衣+咖色裙子 M 建议体重99-108斤</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="fall-list">
                <li>
                    <span class="p-price">$177.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\book\4.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>渡边淳一·钝感力</h3>
                        <p>渡边淳一·钝感力（帮你玩转人际关系，缓解焦虑情绪，排遣工作压力。马未都、樊登、王俊凯等知名大V书单）</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="p-price">$99.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\book\5.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>行为心理学</h3>
                        <p>行为心理学（微表情 微动作 社交沟通  心理学与生活 读心术）</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="p-price">$172.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\book\7.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>杀死一只知更鸟</h3>
                        <p>杀死一只知更鸟（新）（豆瓣9.2，关于勇气与正义的成长教科书，影响全球5000万家庭的“教养宝典”，奥巴马、贝克汉姆、奥普拉鼎力推荐） [To Kill a Mockingbird]</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="fall-list">
                <li>
                    <span class="p-price">$144.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\book\6.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>素书</h3>
                        <p>素书：感悟传世奇书中的成功智慧</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="p-price">$132.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\clothes\6.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>妍莉芬</h3>
                        <p>妍莉芬（yanlifen）连衣裙女装2023春夏季新款韩版气质套装中长款吊带裙法式裙子夏天 白色上衣+吊带裙 M(建议95-110斤)</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
                <li>
                    <span class="p-price">$132.00</span>
                    <a href="#" class="product-img">
                        <img src="../img\fashion\clothes\7.jpg" alt="">
                    </a>
                    <div class="product-box">
                        <h3>冰丝运动套装男装</h3>
                        <p>安踏（ANTA） 冰丝运动套装男装2023夏季速干透气短袖t恤男休闲跑步健身运动服 -2豆灰色【升级款-口袋有拉链】 L/175</p>
                        <div class="btn-box">
                            <a href="#" class="glyphicon glyphicon-heart"><span class="wash">wash</span></a>

                            <a href="#" class="glyphicon glyphicon-shopping-cart"><span>purchase</span></a>
                            <a href="#" class="glyphicon glyphicon-eye-open"></a>
                        </div>
                    </div>
                </li>
            </ul>
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
<script src="../js/style.js"></script>
<script src="../js/catalog.js"></script>
</body>
</html>