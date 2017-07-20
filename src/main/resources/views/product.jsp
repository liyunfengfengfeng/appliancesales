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

  <title>Product</title>

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

  <script src="../js/photo-gallery.js"></script>

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
  <!--///////////////////Product Page///////////////////-->
  <!--//////////////////////////////////////////////////-->
  <div id="page-content" class="single-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="category.html">Category</a></li>
            <li><a href="#">Samsung Galaxy</a></li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div id="main-content" class="col-md-8">
          <div class="product">
            <div class="col-md-6">
              <div class="image">
                <img src="${product.icon}" />
                <div class="image-more">
                  <ul class="row">
                    <li class="col-lg-3 col-sm-3 col-xs-4">
                      <a href="#"><img class="img-responsive" src="../images/galaxy-note.jpg"></a>
                    </li>
                    <li class="col-lg-3 col-sm-3 col-xs-4">
                      <a href="#"><img class="img-responsive" src="../images/galaxy-note-2.jpg"></a>
                    </li>
                    <li class="col-lg-3 col-sm-3 col-xs-4">
                      <a href="#"><img class="img-responsive" src="../images/galaxy-note-3.jpg"></a>
                    </li>
                    <li class="col-lg-3 col-sm-3 col-xs-4">
                      <a href="#"><img class="img-responsive" src="../images/galaxy-note-4.jpg"></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="caption">
                <div class="name">
                  <h3>${product.name }</h3>
                </div>
                <div class="info">
                  <ul>
                    <li>type: ${product.type}</li>
                    <li>ID: ${product.id}</li>
                  </ul>
                </div>
                <div class="price">${product.favorablePrice}<span>${product.originalPrice}</span></div>
                <div class="options">
                 	 可选选项
                  <select>
										<option value="" selected>----请选择----</option>
										<option value="red">红色</option>
										<option value="black">黑色</option>
									</select>
                </div>
                <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                  <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                <!-- <div class="well"><label>Qty: </label> <input class="form-inline quantity" type="text" value="1"><a href="/appliancesales/shoppingcar/addProductToCar?id=${product.id}" class="btn btn-2 ">ADD</a></div> -->
                <div class="share well">
                  <strong style="margin-right: 13px;">Share :</strong>
                  <a href="#" class="share-btn" target="_blank">
										<i class="fa fa-twitter"></i>
									</a>
                  <a href="#" class="share-btn" target="_blank">
										<i class="fa fa-facebook"></i>
									</a>
                  <a href="#" class="share-btn" target="_blank">
										<i class="fa fa-linkedin"></i>
									</a>
                </div>
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="product-desc">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#description">描述</a></li>
              <li><a href="#review">留言</a></li>
            </ul>
            <div class="tab-content">
              <div id="description" class="tab-pane fade in active">
                <h4>产品描述</h4>
                <p>产品参数：
				证书编号：2016011606893750证书状态：有效产品名称：TD-LTE 数字移动电话机3C规格型号：A1661（电源适配器可选：A1443 输出：5VDC 1A）
				产品名称：Apple/苹果 
				iPhone 7 Plu...Apple型号: iPhone 7 Plus机身颜色: 黑色 金色 玫瑰金色 银色 亮黑色运行内存RAM: 不详存储容量: 128G
				B网络模式: 蜂窝网络和无线连接</p>
                <h4>爱心包裹贫困儿童关爱行动</h4>
                <p>该商品参与了公益宝贝计划，卖家承诺每笔成交将为爱心包裹贫困儿童关爱行动捐赠0.02元。该商品已累积捐赠4033笔。
					善款用途简介：爱心包裹项目关爱贫困地区或灾区儿童，美术包让他们的童年不再是单调的黑白色，温暖包让他们的冬天不再瑟瑟发抖。爱心包裹
					项目关爱贫困地区或灾区儿童，美术包让他们的童年不再是单调的黑白色，温暖包让他们的冬天不再瑟瑟发抖。100元1个美术包，200元1个温暖包。
					项目因专业、透明深受150万公众好评，每分钟就有一名儿童得到关爱。
					小包裹大爱心，中国扶贫基金会邀您一起将爱心打包，给他们一个多彩童年。<a href="https://cfpa.tmall.com/p/rd924694.htm?spm=a220o.1000855.0.0.4732a2bd2amuev"><span style="color: red;">了解详情</span></a></s></p>
              </div>
              <div id="review" class="tab-pane fade">
                <div class="review-text">
                  <p>如果您对我们的产品或服务有任何意见和建议请及时告诉我们,
						我们将尽快给您满意的答复 !</p>
                </div>
                <div class="review-form">
                  <h4>留言板</h4>
                  <form name="form1" id="ff" method="post" action="/appliancesales/messageBoard/leaveMessage">
                    <label>
									<span>您的名字:</span>
									<input type="text"  name="name" id="name" required>
									</label>
                    <label>
									<span>您的建议:</span>
									<textarea name="userMessage" id="message"></textarea>
									</label>
                    <div class="text-right">
                      <input class="btn btn-default" type="reset" name="reset" value="重置">
                      <input class="btn btn-default" type="submit" name="Submit" value="提交">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="product-related">
            <div class="heading">
              <h2>相关产品</h2>
            </div>
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
                      <h3><a href="product.html">Apple/苹果 iPhone 6 32G 全网通4G智能手机正品</a></h3>
                    </div>
                    <div class="price">$122<span>$98</span></div>
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
                    <div class="price">$122<span>$98</span></div>
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
                      <h3><a href="product.html">Samsung/三星 SM-G9280S6Edge+plus国行曲屏</a></div>
                    <div class="price">$122<span>$98</span></div>
                    <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span>
                      <span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="clear"></div>
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
  <!-- IMG-thumb -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->

  <script>
    $(document).ready(function () {
      $(".nav-tabs a").click(function () {
        $(this).tab('show');
      });
      $('.nav-tabs a').on('shown.bs.tab', function (event) {
        var x = $(event.target).text(); // active tab
        var y = $(event.relatedTarget).text(); // previous tab
        $(".act span").text(x);
        $(".prev span").text(y);
      });
    });
  </script>
</body>

</html>