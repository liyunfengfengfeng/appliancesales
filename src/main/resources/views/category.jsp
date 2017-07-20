<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="">
  <meta name="author" content="">

  <title>所有商品</title>

  <!-- Bootstrap Core CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="../css/style.css">


  <!-- Custom Fonts -->
  <link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../fonts/font-slider.css" type="text/css">

  <!-- jQuery and Modernizr-->
  <script src="../js/jquery-2.1.1.js"></script>

  <!-- Core JavaScript Files -->
  <script src="../js/bootstrap.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
        <script src="../js/html5shiv.js"></script>
        <script src="../js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
 <jsp:include page="top.jsp"/>
  <!--//////////////////////////////////////////////////-->
  <!--///////////////////Category Page//////////////////-->
  <!--//////////////////////////////////////////////////-->
  <div id="page-content" class="single-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <ul class="breadcrumb">
            <li><a href="index.html">主页</a></li>
            <li><a href="category.html">所有商品</a></li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div id="main-content" class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              <div class="products">
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/iphone.png" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$52<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/galaxy-s4.jpg" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$72<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/galaxy-note.jpg" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$19<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span>
                        <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="products">
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/iphone.png" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$18<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/galaxy-s4.jpg" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$14<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/galaxy-note.jpg" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$56<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span>
                        <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="products">
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/iphone.png" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$32<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/galaxy-s4.jpg" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$22<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-xs-12">
                  <div class="product">
                    <div class="image"><a href="product.html"><img src="../images/galaxy-note.jpg" /></a></div>
                    <div class="buttons">
                      <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                      <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                      <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                    </div>
                    <div class="caption">
                      <div class="name">
                        <h3><a href="product.html">6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通</a></h3>
                      </div>
                      <div class="price">$12<span>$98</span></div>
                      <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span>
                        <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row text-center">
            <ul class="pagination">
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
            </ul>
          </div>
        </div>
        <div id="sidebar" class="col-md-4">
          <div class="widget wid-categories">
            <div class="heading">
              <h4>商品类别</h4>
            </div>
            <div class="content">
              <ul>
                <li><a href="#">PC电脑</a></li>
                <li><a href="#">笔记本电脑</a></li>
                <li><a href="#">手机和平板电脑</a></li>
                <li><a href="#">软件设备</a></li>
              </ul>
            </div>
          </div>
          <div class="widget wid-type">
            <div class="heading">
              <h4>类型</h4>
            </div>
            <div class="content">
              <select>
								<option value="EL" selected>数码产品</option>
								<option value="MT">小鼠和轨迹球</option>
								<option value="WC">网络摄像机</option>
								<option value="TA">硬件设施</option>
								<option value="AP">音频部分</option>
							</select>
            </div>
          </div>
          <div class="widget wid-discouts">
            <div class="heading">
                    <h4>折扣</h4>
            </div>
            <div class="content">
              <label class="checkbox"><input type="checkbox" name="discount" checked="">0% - 10% (20)</label>
              <label class="checkbox"><input type="checkbox" name="discount">40% - 50% (5)</label>
              <label class="checkbox"><input type="checkbox" name="discount">30% - 20% (7)</label>
              <label class="checkbox"><input type="checkbox" name="discount">10% - 5% (2)</label>
              <label class="checkbox"><input type="checkbox" name="discount">Other(50)</label>
            </div>
          </div>
          <div class="widget wid-brand">
            <div class="heading">
             <h4>品牌</h4>
            </div>
            <div class="content">
              <label class="checkbox"><input type="checkbox" name="brand">诺基亚</label>
              <label class="checkbox"><input type="checkbox" name="brand">三星</label>
              <label class="checkbox"><input type="checkbox" name="brand">苹果</label>
              <label class="checkbox"><input type="checkbox" name="brand">宏达电子</label>
              <label class="checkbox"><input type="checkbox" name="brand">Oppo</label>
              <label class="checkbox"><input type="checkbox" name="brand">诺曼地</label>
              <label class="checkbox"><input type="checkbox" name="brand">托迈酷客</label>
            </div>
          </div>
          <div class="widget wid-product">
            <div class="heading">
              <h4>最新</h4>
            </div>
            <div class="content">
              <div class="product">
                <a href="#"><img src="../images/galaxy-note.jpg" /></a>
                <div class="wrapper">
                  <h5><a href="#">三星S6</a></h5>
                  <div class="price">$122</div>
                  <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                </div>
              </div>
              <div class="product">
                <a href="#"><img src="../images/galaxy-s4.jpg" /></a>
                <div class="wrapper">
                  <h5><a href="#">三星S7</a></h5>
                  <div class="price">$122</div>
                  <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                </div>
              </div>
              <div class="product">
                <a href="#"><img src="../images/Z1.png" /></a>
                <div class="wrapper">
                  <h5><a href="#">三星S8</a></h5>
                  <div class="price">$122</div>
                  <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="bottom.jsp"/>
</body>

</html>