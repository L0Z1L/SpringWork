<%--
  Created by IntelliJ IDEA.
  User: asd
  Date: 2023/5/25
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>
    <link rel="stylesheet" href="../fonts/glyphicons/css/glyphicons.css">
    <link rel="stylesheet" href="../fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/product.css">
    <link rel="stylesheet" href="../css/carousel.css">
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

                <li><a href="/Main_products/Product">返回</a></li>
                <li><a href="catalog.jsp">退出</a></li>

            </ul>

        </div>
    </div>>
</div>
<div class="zhan"></div>
<div id="center" class="wrapper">
    <h2 id="title">
        <span class="glyphicon glyphicon-gift"></span>
        ${sessionScope.product.product_name}
    </h2>
    <div id="main">
        <div id="main-left">
            <a class="big-img-box">
                <img src="../img/fashion/${sessionScope.product.product_category}/${sessionScope.product.img_path}.jpg" alt="" class="big-img">
            </a>
            <div class="hr">
					<span class="glyphicon glyphicon-picture">
					</span>
            </div>
            <ul class="small-imgs">
                <li>
                    <a href="#" class="small-img-box">
                        <img src="../img/fashion/${sessionScopeScope.product.product_category}/${sessionScope.product.img_path}.jpg" alt="图1" class="small-img">
                    </a>
                </li>
                <li>
                    <a href="#" class="small-img-box">
                        <img src="../img/fashion/${sessionScope.product.product_category}/${sessionScope.product.img_path}.1.jpg" alt="图2" class="small-img">
                    </a>
                </li>
                <li>
                    <a href="#" class="small-img-box">
                        <img src="../img/fashion/${sessionScope.product.product_category}/${sessionScope.product.img_path}.2.jpg" alt="图3" class="small-img">
                    </a>
                </li>
                <li>
                    <a href="#" class="small-img-box">
                        <img src="#" alt="图4" class="small-img">
                    </a>
                </li>
            </ul>
        </div>
        <div id="main-right">
            <div class="right-top">
                <div class="detail">
                    <h3>
                        <span class="glyphicon glyphicon-list-alt"></span>
                        Product description
                    </h3>
                    <div class="p-body">
                        <p>${sessionScope.product.product_description}</p><br>
                        <p></p>
                    </div>
                    <h3>
                        <span class="glyphicon glyphicon-warning-sign"></span>
                        Important note
                    </h3>
                    <p class="important-note">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi erat massa, ultricies sit amet.</p>
                </div>
                <div class="add">
                    <span class="off">50% Off</span>
                    <h4>${sessionScope.product.product_price}</h4>
                    <p class="price">${sessionScope.product.product_price}</p>
                    <p class="btn-title">Select size</p>
                    <select name="select" id="select-size">
                        <option value="1">Option</option>
                        <option value="2">Option</option>
                        <option value="3">Option</option>
                    </select>
                    <p class="btn-title">Qty</p>
                    <form method="get" action="/Products/addproduct">
                        <input type="text" value="${sessionScope.product_Name}" name="name" hidden>
                        <input type="text" value="${sessionScope.user.userid}" name="userid" hidden>
                        <input type="text" value="${sessionScope.product.product_id}" name="product_id" hidden>
                        <input type="text" value="1" name="quantity">

                        <button  class="butten"><span class="glyphicon glyphicon-shopping-cart"></span>
                            Add to cart</button>
                    </form>
                    <div class="share">
                        <span class="txt">Share</span>
                        <a class="icon icon-facebook-sign"></a>
                        <a class="icon icon-twitter-sign"></a>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="hr">
					<span class="glyphicon glyphicon-briefcase">
					</span>
            </div>
            <div class="right-bottom" id="right-bottom">
                <ul class="btn-box">
                    <li class="active"><span class="glyphicon glyphicon-star"></span>Reviews</li>
                    <li><span class="glyphicon glyphicon-blackboard"></span>Delivery</li>
                </ul>
                <div class="content-box">
                    <div class="active customer js-box">
                        <div class="one-customer">
                            <span class="glyphicon glyphicon-fire"></span>
                            <h5>Customer name</h5>
                            <p class="star">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                                <span class="glyphicon glyphicon-calendar"></span>
                                <span>on 22th June, 2013 </span>
                            </p>
                            <p class="text">Aliquam rutrum, sem at scelerisque tempor, nulla diam pulvinar tortor, id pulvinar massa velit eu purus. Curabitur eu fringilla diam, sed suscipit lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras iaculis enim vel odio imperdiet faucibus. Aliquam erat volutpat.</p>
                        </div>
                        <div class="one-customer">
                            <span class="glyphicon glyphicon-fire"></span>
                            <h5>Customer name</h5>
                            <p class="star">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                                <span class="glyphicon glyphicon-calendar"></span>
                                <span>on 22th June, 2013 </span>
                            </p>
                            <p class="text">Aliquam rutrum, sem at scelerisque tempor, nulla diam pulvinar tortor, id pulvinar massa velit eu purus. Curabitur eu fringilla diam, sed suscipit lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras iaculis enim vel odio imperdiet faucibus. Aliquam erat volutpat.</p>
                        </div>
                    </div>
                    <div class="js-box">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis porta purus, pulvinar mattis nulla tempus ut. Curabitur quis dui orci. Ut nisi dolor, dignissim a aliquet quis, vulputate id dui. Proin ultrices ultrices ligula, dictum varius turpis faucibus non. Curabitur faucibus ultrices nunc, nec aliquet leo tempor cursus. Pellentesque sed felis ipsum. Quisque in lacus sed ante malesuada condimentum et a risus. Morbi accumsan euismod rutrum. Etiam vitae turpis eu est lacinia condimentum a sit amet erat. Sed augue turpis, lobortis ac feugiat eget, cursus ac justo.
                        </p>
                    </div>
                </div>
            </div>
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


<div class="dialog-box">
    <div class="content">
        <div class="dialog-title">
            <span class="dialog-close">X</span>
        </div>
        <div class="dialog-body">
            <img src="img\fashion\female\1.jpg" alt="">
            <span class="dialog-prev">&lt;</span>
            <span class="dialog-next">&gt;</span>
        </div>
        <div class="dialog-btns">
            <span class="prev-btn">next</span>
            <span class="next-btn">previous</span>
            <span class="slide-btn">slideshow</span>
            <span class="download-btn">download</span>
        </div>
    </div>

</div>
<script src="js/style.js"></script>
<script src="js/product.js"></script>
</body>
</html>