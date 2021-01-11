<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="keywords" content="<?php echo ($company["keyword"]); ?>" />
    <title>
	<?php if(($plate_one["plate_name"]) != ""): echo ($plate_one["plate_name"]); ?>
	<?php else: ?>
	<?php echo ($company["company_name"]); endif; ?>
	</title>
   <!--fonts-->
	<link rel="stylesheet" href="/weidu/Public/home/css/font-awesome.min.css" />
	<!--css-->
	<link rel="stylesheet" href="/weidu/Public/home/css/layout.css" />
	<link rel="stylesheet" href="/weidu/Public/home/css/style.css" />
	<link rel="stylesheet" href="/weidu/Public/home/css/mui.css" />
	
	<!--js-->
	<script type="text/javascript" src="/weidu/Public/home/js/jquery-2.1.4.js" ></script>
	<script type="text/javascript" src="/weidu/Public/home/js/mui.min.js" ></script>   
</head>
<body>
	<header class="page-header head">
		<div class="left menu toggle"><img src="/weidu/Public/home/img/menue.png" alt="" /></div>
		<div class="mindel logo"><a href="/weidu/index.php"><img src="/weidu/<?php echo ($company["logo"]); ?>" alt="" /></a></div>
		<div class="right search"><img src="/weidu/Public/home/img/serch.png" alt="" /></div>
		<div class="navigation">
			<nav>
				<ul id="nav">
					<?php if(is_array($plate_menu)): foreach($plate_menu as $key=>$plate): ?><li><a href="/weidu/index.php/Plate/index/id/<?php echo ($plate["plate_id"]); ?>"><p><span class="english"><?php echo ($plate["introduce"]); ?></span></br><?php echo ($plate["plate_name"]); ?></p></a></li><?php endforeach; endif; ?>
				</ul>
			</nav>
			<div class="nav_bg"></div>
		</div>
		<div id="search">
			<!--添加内容--搜索分界线-->
			<i class="s_line"></i>
			<div class="searchbgm"></div>
			<p class="search_bg"></p>
			<a class="search_text">
				<input type="text" name="search_text" id="search_text" placeholder="请输入关键字" value=""/>				
				<label for="" class="search-icon"><input type="submit" id="" value="" />
					<!--<img src="/weidu/Public/home/img/search_btn.png" alt="" class="search_btn"/>-->
					<!--修改搜索图标-->
					<em class="mui-icon mui-icon-search"></em>
				</label>
				<span class="btn left"><span>全部</span><em class="mui-icon small" sheck="false"><img src="/weidu/Public/home/img/trangel.png"></em></span>
				<input type="hidden" name="plate" value=""/>
			</a>
			<ul class="s_list">
				<?php if(is_array($plate_menu)): foreach($plate_menu as $key=>$plate): ?><li><a href="#"><?php echo ($plate["plate_name"]); ?></a></li><?php endforeach; endif; ?>
			</ul>
			<div class="search_box">
				<!--搜索中-->				
				<ul class="search_item search_ing">
					<?php if(is_array($plate_menu)): foreach($plate_menu as $key=>$plate): ?><li><a href="#"><?php echo ($plate["plate_name"]); ?></a></li><?php endforeach; endif; ?>
				</ul>
				
				<!--搜索成功-->				
					<ul class="search_success" style="display:none;">
						<li>
							<a href="#" class="sHeight" id="text" data="1">
								<span class="mui-icon search_textimg left"><img src="/weidu/Public/home/img/lingzhi.png" alt="" /></span>
								<div class="search_words">
									<h4>长白山灵芝</h4>
									<p class="search_describ">
										灵芝作为拥有数千年药用历史的中国传统珍惜药材，具备很高的药用价值，经过灵芝作为拥有数千年药用历史的中国传统珍惜药材，具备很高的药用价值，经过
									</p>
								</div>
								<span class="mui-icon  right_icon">文章</span>
							</a>							
						</li>												
					</ul>
					<ul class="search_point" style="display:none;">
						<li class="cur"></li>
						<li></li>
					</ul>
				
				</div>			
			</div>
		</div>
	</header>
	<script>
	$(window).ready(function(){	
			//导航
			$(".toggle").click(
				function(){
					if ($("html").hasClass("toggled")){
						$(".navigation nav").removeClass("back_img1");
						$(".navigation nav").addClass("back_img"+Math.ceil(Math.random()*1));
						//添加内容--添加点击后的切换按钮（关闭按钮）
						$(this).find('img').attr('src','/weidu/Public/home/img/menue.png');
					}else{
						$(this).find('img').attr('src','/weidu/Public/home/img/close.png');
					}
					$("html").toggleClass("toggled");					
				}
			);
			$(".navigation nav").addClass("back_img"+Math.ceil(Math.random()*1));
			$(".search").click(
				function(){
					if ($("html").hasClass("searched")){
						$("#search div.searchbgm").addClass("s_bgm"+Math.ceil(Math.random()*1));
						//添加内容--添加点击后的切换按钮（关闭按钮）
						$(this).find('img').attr('src','/weidu/Public/home/img/serch.png');
					}else{
						$(this).find('img').attr('src','/weidu/Public/home/img/close.png');
					}
					$("html").toggleClass("searched");
				}
			);
			$("#search div.searchbgm").addClass("s_bgm"+Math.ceil(Math.random()*1));
			$('.btn').click(function(){
				if($(this).find('img').attr('sheck')=="false"){
					$(this).find('img').attr('src','/weidu/Public/home/img/trangel.png');
					$('.s_list').css('display','none');
					$(this).find('img').attr('sheck','true');
				}else{
					$(this).find('img').attr('src','/weidu/Public/home/img/trangel_on.png');
					$('.s_list').css('display','block');
					$(this).find('img').attr('sheck','false');
				}
			});
			$('.s_list li,.search_ing li').click(function(){
				$('.btn span').text($(this).text());
				$('input[name="plate"]').attr("value",$(this).text());
				$('.s_list').css('display','none');
				$('.btn').find('img').attr('src','/weidu/Public/home/img/trangel.png');
				$('.btn').find('img').attr('sheck','false');
			});
			var sHeight=$('.search_textimg ').height();
			var swWeidth=$(window).width()*0.6;
			$('.search_content').css('width',swWeidth+'px');
			$('.search_success li').css('width',swWeidth+'px');
			var num=('.search_point li').length;
			var fousL = true;
			var t=0;
			var index=$('.search_point li').index(this);
			var clone=$(".search_success li").first().clone();
            $("search_success").append(clone);
            var i=0;
            var size=$(".search_success li").size();
            var sHeight=$('.search_textimg ').height();
			var swWeidth=$(window).width()*0.6;
//            鼠标滑过圆点
            <!-- $(".search_point li").hover(function () { -->
                <!-- var index=$(this).index(); -->
                <!-- i=index; -->
                <!-- $(".search_success").stop().animate({left:-i*swWeidth}, 500); -->
                <!-- $(this).addClass("cur").siblings().removeClass("cur"); -->
            <!-- }); -->
            
            //添加内容--网页头部向下滑动时消失，向上滑动时出现
		$(function(){
            var oTop1 = $(document).scrollTop(); 

            $(window).scroll(function(){
                var oTop2 = $(document).scrollTop(); 

                if(oTop2 > oTop1){
                    $(".head").addClass("T_hide").removeClass("T_show");
                }else {
                      $(".head").addClass("T_show").removeClass("T_hide");
                }
                oTop1 = $(document).scrollTop();
              });
        });
		})
	</script>
	<!--首页js-->
	<script>
	$(window).ready(function(){		
		var hsize=$(window).height();
		var wsize=$(window).width();
		$(".flex_height").css("height",hsize + "px");
		if(wsize>768){$(' nav ul li').height((hsize-80)*0.34);}
		var $interval = 10000; 
		var $fade_speed = 2000; 
		$("#banner ul li").css({"position":"relative","overflow":"hidden"});
		$("#banner ul li").hide().css({"position":"absolute","top":0,"left":0});
		$("#banner ul li:first").addClass("active").show();
		setInterval(function(){
			var $active = $("#banner ul li.active");
			var $next = $active.next("li").length?$active.next("li"):$("#banner ul li:first");
			$active.fadeOut($fade_speed).removeClass("active");
			$next.fadeIn($fade_speed).addClass("active");
		},$interval);	
		
	})
	$(document).on("click",".search-icon",function(){
		var plate = $('input[name="plate"]').val();
		var search_text = $('input[name="search_text"]').val();		
		<!-- alert(search_text); -->
		$.ajax({
		   type: "POST",
		   url: "/weidu/index.php/plate/search",
		   data: {"plate":plate,"search_text":search_text},
		   dataType: "json",
		   success: function(result){							
				var show = result.show;
				var search_list = result.search_list;				
				
				var html = ''; 
				for(var i=0;i<search_list.length;i++){						
					html += '<a href="/weidu/index.php/Index/view/id/'+search_list[i].plate_id+'" class="sHeight" id="text" data="1">';
					html += '<span class="mui-icon search_textimg left"><img src="/weidu/'+search_list[i].img_url+'" alt="" /></span>';
					html += '<div class="search_words">';
					html += '<h4>'+search_list[i].plate_name+'</h4>';
					html += '<p class="search_describ">'+search_list[i].introduce+'</p>';
					html += '</div>';
					html += '<span class="mui-icon right_icon"><span>'+search_list[i].parent_name+'</span></span>';
					html += '</a>';
				}
				$(".search_item").hide();	
				$(".search_success").css('display','block'); ;	
				$(".search_point").css('display','block'); ;	
				$(".search_success li").html(html);
				$(".search_point").html(show);
				$(document).on("click",".search_point a",function(){
					var url = $(this).attr('href');
					var show = result.show;
					var search_list = result.search_list;
					$.ajax({
					   type: "POST",
					   url: "/weidu/index.php/plate/search",
					   data: {"plate":plate,"search_text":search_text,"url":url},
					   dataType: "json",
					   success: function(result){							
							var show = result.show;
							var search_list = result.search_list;				
							
							var html = ''; 
							for(var i=0;i<search_list.length;i++){						
								html += '<a href="/weidu/index.php/Index/view/id/'+search_list[i].plate_id+'" class="sHeight" id="text" data="1">';
								html += '<span class="mui-icon search_textimg left"><img src="/weidu/'+search_list[i].img_url+'" alt="" /></span>';
								html += '<div class="search_words">';
								html += '<h4>'+search_list[i].plate_name+'</h4>';
								html += '<p class="search_describ">'+search_list[i].introduce+'</p>';
								html += '</div>';
								html += '<span class="mui-icon right_icon"><span>'+search_list[i].parent_name+'</span></span>';
								html += '</a>';
							}
							$(".search_item").hide();		
							$(".search_success li").html(html);
							$(".search_point").html(show);
					   }
				    });
					return false;
				})
				
		   }
		});
	})
	</script>

	<div id="banner">
		<ul>
		<?php if(is_array($image_list)): foreach($image_list as $key=>$image): ?><li><div class="flex_height" style="width:100%;height:100%;background: url(/weidu/Public/<?php echo ($image["img_url"]); ?>);no-repeat 50% 50%;background-size: cover;"></div></li><?php endforeach; endif; ?>					
		</ul>		
		<div id="logo"><img src="<?php echo ($company["logo"]); ?>" alt="" /></div>
	</div>