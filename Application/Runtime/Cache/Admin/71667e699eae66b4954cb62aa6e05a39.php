<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
<title>维度</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
 <link rel="stylesheet" type="text/css" href="/weidu/Public/admin/themes/css/bootstrap.min.css" />	
 <link rel="stylesheet" type="text/css" href="/weidu/Public/admin/themes/css/style.css" />	
 <link rel="stylesheet" type="text/css" href="/weidu/Public/admin/themes/css/lines.css" />	
 <link rel="stylesheet" type="text/css" href="/weidu/Public/admin/themes/css/font-awesome.css" />	
 <link rel="stylesheet" type="text/css" href="/weidu/Public/admin/themes/css/custom.css" />	
<!-- jQuery -->
<script type="text/javascript" src="/weidu/Public/admin/themes/js/jquery.min.js"></script>
<script type="text/javascript" src="/weidu/Public/admin/themes/js/metisMenu.min.js"></script>
<script type="text/javascript" src="/weidu/Public/admin/themes/js/custom.js"></script>
<script type="text/javascript" src="/weidu/Public/admin/themes/js/d3.v3.js"></script>
<script type="text/javascript" src="/weidu/Public/admin/themes/js/rickshaw.js"></script>

</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand">维度</a>
				<a href="/weidu/admin.php/Index/destroy" class="dropdown-toggle" style="padding:15px 15px; height:50px; line-height:50px; color:white;font-size:14px;" onclick="if (!confirm('是否确定要退出？')) return false;">退出</a>
            </div>
			
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="/weidu/index.php" class="dropdown-toggle" target="_blank" style="font-size:14px;"><span>查看首页</span></a>
	      		</li>
			    <li class="dropdown">
	        		<a href="/weidu/index.php" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="/weidu/Public/admin/themes/images/logo.png"></a>	        		
	      		</li>
			</ul>
			<!-- 左侧菜单栏 -->
            
			<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href=""><i class="fa fa-laptop nav_icon"></i>网站信息<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">								
								<li>
                                    <a href="/weidu/admin.php/Company/index">公司信息</a>
                                </li>
								<li>
                                    <a href="/weidu/admin.php/Images/index">首页轮播图</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>板块<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/weidu/admin.php/Plate/index">板块管理</a>
                                </li>
								<li>
                                    <a href="/weidu/admin.php/Recruit/index">招聘信息</a>
                                </li>
								<li>
                                    <a href="/weidu/admin.php/Message/index">留言信息</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="/weidu/admin.php/Manager/index"><i class="fa fa-envelope nav_icon"></i>管理员列表<span class="fa arrow"></span></a>                           
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
			
            <!-- /.navbar-static-side -->
        </nav>
		
        <div id="page-wrapper">
		<!-- 中间编辑栏 -->
			
<div class="col-md-12 graphs">
	<div class="xs">
  	 <h3>管理员列表</h3>
	 <a href="/weidu/admin.php/Manager/form" class="btn fb1" style="color:white;">添加管理员</a>
  	<div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
		<div class="panel-body no-padding">
			<table class="table table-striped">
				<thead>
					<tr class="warning">						
						<th>账号名</th>
					    <th>部门</th>
					    <th>操作</th>
					</tr>
				</thead>
				<tbody>
					<?php if(in_array(($_SESSION['uid']), explode(',',"1,2"))): if(is_array($manager_list)): foreach($manager_list as $key=>$manager): if(($manager["user_id"]) != "1"): ?><tr>
						<td><?php echo ($manager[username]); ?></td>
						<td><?php echo ($manager[level]); ?></td>						
						<td>
						  <a href="/weidu/admin.php/Manager/form/id/<?php echo ($manager[user_id]); ?>">编辑</a>
						  <a href="/weidu/admin.php/Manager/delete/id/<?php echo ($manager[user_id]); ?>" onclick="if (!confirm('是否确认删除？')) return false;">删除</a>
						</td>						
					</tr><?php endif; endforeach; endif; endif; ?>
					<?php if(!in_array(($_SESSION['uid']), explode(',',"1,2"))): if(is_array($manager_list)): foreach($manager_list as $key=>$manager): if(($manager["user_id"]) != "1"): ?><tr>
						<td><?php echo ($manager[username]); ?></td>
						<td><?php echo ($manager[level]); ?></td>						
						<td>
						  <?php if(($manager["user_id"]) == $_SESSION['uid']): ?><a href="/weidu/admin.php/Manager/form/id/<?php echo ($manager[user_id]); ?>">编辑</a><?php endif; ?>
						  <!-- <a href="/weidu/admin.php/Manager/delete/id/<?php echo ($manager[user_id]); ?>" onclick="if (!confirm('是否确认删除？')) return false;">删除</a> -->
						</td>						
					</tr><?php endif; endforeach; endif; endif; ?>
				</tbody>
			</table>
		</div>
		<ul class="pagination">
			<?php echo ($page); ?>
		</ul>
	</div>	
  </div>
</div>  

	   </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
	<script type="text/javascript" src="/weidu/Public/admin/themes/js/bootstrap.min.js"></script>

</body>
</html>