<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>map</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="./plugins/layui/css/layui.css"  media="all">
  <script type="text/javascript" src="./plugins/openlayers/ol.js"></script>
  <link rel="stylesheet" href="./plugins/openlayers/ol.css" type="text/css" media="screen, projection">
  <script type="text/javascript" src="./plugins/jquery/jquery-3.3.1.min.js"></script>
  <script src="./plugins/layui/layui.js" charset="utf-8"></script>
  <script src="./plugins/echarts/echarts.min.js"></script>
  <script src="./plugins/echarts/ol-extension/olEchart.js"></script>
  <script src="./asserts/js/map.js" charset="utf-8"></script>
  <script src="./asserts/js/init.js" charset="utf-8"></script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
	  <div class="layui-header">
	    <div class="layui-logo">地理信息</div>
	    <!-- 头部区域（可配合layui已有的水平导航） -->
	    <ul class="layui-nav layui-layout-left">
	      <li class="layui-nav-item"><a href="">控制台</a></li>
	      <li class="layui-nav-item"><a href="">商品管理</a></li>
	      <li class="layui-nav-item"><a href="">用户</a></li>
	      <li class="layui-nav-item">
	        <a href="javascript:;">其它系统</a>
	        <dl class="layui-nav-child">
	          <dd><a href="javascript:olmap.test();">邮件管理</a></dd>
	          <dd><a href="">消息管理</a></dd>
	          <dd><a href="">授权管理</a></dd>
	        </dl>
	      </li>
	    </ul>
	    <ul class="layui-nav layui-layout-right">
	      <li class="layui-nav-item">
	        <a href="javascript:;">
	          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">贤心
	        </a>
	        <dl class="layui-nav-child">
	          <dd><a href="">基本资料</a></dd>
	          <dd><a href="">安全设置</a></dd>
	        </dl>
	      </li>
	      <li class="layui-nav-item"><a href="">退了</a></li>
	    </ul>
	  </div>
	  
	  <div class="layui-side layui-bg-black">
	    <div class="layui-side-scroll">
	      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
	      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
	        <li class="layui-nav-item layui-nav-itemed">
	          <a class="" href="javascript:;">所有商品</a>
	          <dl class="layui-nav-child">
	            <dd><a href="javascript:;">列表一</a></dd>
	            <dd><a href="javascript:;">列表二</a></dd>
	            <dd><a href="javascript:;">列表三</a></dd>
	            <dd><a href="">超链接</a></dd>
				  <select id="type">
					  <option value="None">无</option>
					  <option value="Point">点</option>
					  <option value="LineString">线</option>
					  <option value="Polygon">多边形</option>
					  <option value="Circle">圆</option>
					  <option value="Square">正方形</option>
					  <option value="Rectangle">长方形</option>
				  </select>
			  </dl>
	        </li>
	        <li class="layui-nav-item">
	          <a href="javascript:;">解决方案</a>
	          <dl class="layui-nav-child">
	            <dd><a href="javascript:;">列表一</a></dd>
	            <dd><a href="javascript:;">列表二</a></dd>
	            <dd><a href="">超链接</a></dd>
	          </dl>
	        </li>
	        <li class="layui-nav-item"><a href="">云市场</a></li>
	        <li class="layui-nav-item"><a href="">发布商品</a></li>
	      </ul>
	    </div>
	  </div>
	  <div class="layui-body">
	  	<div style="width:100%;height:100%;" id="map"></div>
	  </div>
	  <div class="layui-footer">
	    <!-- 底部固定区域 -->
	    © layui.com - 底部固定区域
	  </div>
	</div>
</body>
</html>
