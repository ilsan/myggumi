<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	var iphone;
	var ipad;
	var macbook;
	var iphonecheck = false;
	var ipadcheck = false;
	var macbookcheck = false;
	
	window.onload = function(){
		
		//로그인 이미지 클릭시
		document.getElementById("obj5_img").onclick=function(){
			var display = document.getElementById("sub_login");
			if(display.style.display == 'none' || display.style.display == ''){
				display.style.display = 'block';
				display.style.width = '300px';
				display.style.height = '500px';
				$("#sub_login").css("left", $("#obj5_img").offset().left - ($("#obj5_img").width()/4));
				if(document.getElementById("top_menu").offsetHeight == 160){
					$("#top_menu").stop().animate({height:"0px"},500);
					$("#main_menu").css("display","none");	
				}
			}else{
				display.style.display = 'none';
			}
		}
	}
		
	function Obj1_button_onclick(){		
 		var display = document.getElementById("main_menu");
 		var height = document.getElementById("top_menu").offsetHeight;
 		var button_img = document.getElementById("button_img");
 		
		if(height==0){
			$("#top_menu").stop().animate({height:"160px"},500);
			display.style.display='block';
			button_img.src=	"images/Myggumi_button2.png";
			
		}
		if(height==160){
			$("#top_menu").stop().animate({height:"0px"},500);
			display.style.display='none';
			button_img.src=	"images/Myggumi_button1.png";
			iphonecheck = false;
			ipadcheck = false;
			macbookcheck = false;
			$("#iphone_subUl").css("display","none");
			$("#ipad_subUl").css("display","none");	
			$("#macbook_subUl").css("display","none");
		}
		
		if(display.style.display == 'block'){
			$("#sub_login").css("display","none");
		}
	}
	
	
			$(document).ready(function(){
			//아이폰
			$("#iphone_img").click(function(){
				if(iphonecheck == false){
					iphonecheck = true;
					$("#iphone_subUl").css("display","block");
					iphone = $("#iphone_li").offset();
					$("#iphone_subUl").css("left",iphone.left);
					var width = $("#iphone_li").width();
					width = width - (width/10);
					$("#iphone_subUl").css("width",width);
					if(ipadcheck == true || macbookcheck == true){
						ipadcheck = false;
						macbookcheck = false;
						$("#ipad_subUl").css("display","none");	
						$("#macbook_subUl").css("display","none");
					}
				}else{
					iphonecheck = false;
					$("#iphone_subUl").css("display","none");
				}
			});
			
			//아이패드
			$("#ipad_img").click(function(){
				if(ipadcheck == false){
					ipadcheck = true;
					$("#ipad_subUl").css("display","block");
					ipad = $("#ipad_li").offset();
					$("#ipad_subUl").css("left",ipad.left);
					$("#ipad_subUl").css("width",$("#ipad_li").width());
					var width = $("#ipad_li").width();
					width = width - (width/10);
					$("#ipad_subUl").css("width",width);
					if(iphonecheck == true || macbookcheck == true){
						iphonecheck = false;
						macbookcheck = false;
						$("#iphone_subUl").css("display","none");	
						$("#macbook_subUl").css("display","none");
					}
				}else{
					ipadcheck = false;
					$("#ipad_subUl").css("display","none");	
				}
			});
			
			//맥북
			$("#macbook_img").click(function(){
				if(macbookcheck == false){
					macbookcheck = true;
					$("#macbook_subUl").css("display","block");
					macbook = $("#macbook_li").offset();
					$("#macbook_subUl").css("left",macbook.left);
					$("#macbook_subUl").css("width",$("#macbook_li").width());
					var width = $("#macbook_li").width();
					width = width - (width/10);
					$("#macbook_subUl").css("width",width);
					if(iphonecheck == true || ipadcheck == true){
						iphonecheck = false;
						ipadcheck = false;
						$("#iphone_subUl").css("display","none");	
						$("#ipad_subUl").css("display","none");
					}
				}else{
					macbookcheck = false;
					$("#macbook_subUl").css("display","none");	
				}
			});
			
			//화면 사이즈 변경시 이벤트
			jQuery( window ).resize(function() {
				//아이폰
				iphone = $("#iphone_li").offset();	
				$("#iphone_subUl").css("left",iphone.left);
				$("#iphone_subUl").css("width",$("#iphone_li").width());
				
				//아이패드
				ipad = $("#ipad_li").offset();	
				$("#ipad_subUl").css("left",ipad.left);
				$("#ipad_subUl").css("width",$("#ipad_li").width());
				
				//맥북
				macbook = $("#macbook_li").offset();	
				$("#macbook_subUl").css("left",macbook.left);
				$("#macbook_subUl").css("width",$("#macbook_li").width());
				
				//로그인 창
				$("#sub_login").css("left", $("#obj5_img").offset().left - ($("#obj5_img").width()/4));
			});
		});
</script>

<style type="text/css">
	
	li{
	list-style: none;
	}
	
	#top_Main{
		width: 100%;
		overflow: auto;
		min-width: 1000px;
		height: 73px;
		padding: 0 10%;
	}
	
	#top_Body_Obj1{
		width: 10%;
		margin-top: 2%;
		float: left;
		height: 21px;
	}
	
	#Obj1_button{
		border: none;
		/* min-width: 77px; */
		background-color: white;
		font-weight: bold;
		font-size: 100%;
		padding: 0;
		height: 100%;
	}
	
	#button_img{
		 height: 100%;
	}
	
	#top_Body_Obj2{
		width: 10%;
		float: left;
		margin-top: 2%;
		
	}
	
		#Obj2_button{
		border: none;
		background-color: white;
		font-size: 100%;
		padding: 0;
	}
	
	#top_Body_Obj3{
		width: 10%;
		float: left;
		margin-top: 2%;
		
	}
	
		#Obj3_button{
		border: none;
		background-color: white;
		font-size: 100%;
		padding: 0;
	}
	
	#top_Body_Obj4{
		width: 20%;
		float: left;
		height: 100%;
		
	}
	
		#obj4_img{
		width: 100%;
		height: 100%;
	}
	
	#top_Body_Obj5{
		width: 60px;
		float: left;
		padding-left: 10%; 
		padding-right: 2%;
		margin-top: 1%;
	}
	
		#obj5_img{
		padding: 0;
	}
	
	#top_Body_Obj6{
		width: 60px;
		float: left;
		padding-right: 2%;
		margin-top: 1%;
	}
	
		#obj6_img{
		padding: 0;
	}
	
		#top_Body_Obj7{
		width: 60px;
		float: left;
		margin-top: 1%;
	}
	
		#obj7_img{
		padding: 0;
	}
	
	#top_menu{
		width: 100%;
		/* height: 1px; */
		padding: 0 20%;
		background-color: #585657;
		overflow: auto;
		min-width: 1000px;
	}
	
	#main_menu{
		height: 100%;
		width: 100%;
		margin: 0;
	}
	#main_ul{
		margin: 0;
 		padding: 0;
		height: 100%; 
		width: 100%; 
		
	}

	#iphone_li, #ipad_li, #macbook_li{
		height: 100%;
		float: left;
		width: 20%;
	}
	#iphone_img, #ipad_img, #macbook_img{
		height: 100%;
		width: 150px;
		
	}
	
	#sub_menu{
		width: 100%;
	}
	
	#iphone_subUl, #ipad_subUl, #macbook_subUl{
		display: none;
		position: absolute;
		margin: 0;
		padding: 0;
	}
	
	.iphone_subLi, .ipad_subLi, .macbook_subLi{
		width: 100%;
		height: 100%;
		/* background-color: #EAEAEA; */
		background-color: #EAEAEA;
		text-align: center;
		color: black; 
		padding-top: 1%;
		padding-bottom: 1%;
	}
	
	a{
		text-decoration: none;
	}

	.sub_a:hover .iphone_subLi{
		background-color: white;
	}
	.sub_a:hover .ipad_subLi{
		background-color: white;
	}
	.sub_a:hover .macbook_subLi{
		background-color: white;
	}
	
	#sub_login{
		display: none;
		margin: 0;
		position: absolute;
	}
	
	#login_top{
		background-color: #6799FF;
		height: 40px;
		width: 90%;
		color: white;
		padding-left: 10%;
		padding-top: 5%;
	}
	
	#login_body{
		width: 90%;
		height: 100px;
		padding: 5%;
	}
	
	#login_body_table{
		width: 100%;
		height: 100px;
		border-collapse: collapse;
	}
	
		#login_body_table td{
			height: 40px;
		}
		#login_body_table input{
			width: 100%;
			height: 100%;
	}
	
	#login_body_2{
		width: 70%;
		padding-left: 20%;
		padding-right: 10%;
		height: 20px;
	}
	
	#login_body_2_span{
		font-size: 12px;
		
	}
	#login_body_2_span a{
		color: #6799FF;
	}
	
	
	#login_body_submit{
		width: 100%;
		height: 40px;
		margin-top: 10px;
	}
	
	#login_submit{
		 width: 100%;
		 height: 100%;
		 border: none;
		 background-color: #6799FF;
		 padding: 0;
		 color: white;
	}
	
	#login_foot{
		width: 100%;
		height: 240px;
	}
	
	#login_foot_1{
		width: 100%;
		height: 120px;
	}
		.login_foot_1_div{
		width: 100%;
		height: 20px;
		background-color: #EAEAEA;
		text-align: center;
		padding-bottom: 20px;
		padding-top: 20px;
		}
	
	#login_foot_2{
		width: 100%;
		height: 120px;
	}
		#login_foot_2_div_1{
		width: 100%;
		height: 40px;
		background-color: #BDBDBD;
		text-align: center;
		padding-top: 20px;
		}
		#login_foot_2_div_2{
		width: 100%;
		height: 40px;
		background-color: #BDBDBD;
		text-align: center;
		padding-bottom: 20px;
		
		}
		
		#login_foot_2_div_2 a{
		color: #6799FF;
		}
		

</style>
</head>
<body>
	<div id="top_Main">
			
			<div id="top_Body_Obj1">
				<button id="Obj1_button" onclick="Obj1_button_onclick()">쇼핑하기<img src="images/Myggumi_button1.png" id="button_img">
				</button>
			</div>
			  
			<div id="top_Body_Obj2">
				<button id="Obj2_button">스마트컬렉션</button>
			</div>
			
			<div id="top_Body_Obj3">
				<button id="Obj3_button">럭키꾸미박스</button>
			</div>
			
			<!-- 메인로그 -->
			<div id="top_Body_Obj4">
				<img alt="" src="images/Myggumi.png" id="obj4_img" onclick="location.href='<%=request.getContextPath()%>/'">
			</div>
			
			<!-- 로그인관련 -->
			<div id="top_Body_Obj5">
				<img alt="" src="images/Myggumi_img1.png" id="obj5_img">
			</div>
			
			<!-- 장바구니 -->
			<div id="top_Body_Obj6">
				<img alt="" src="images/Myggumi_img2.png" id="obj6_img">
			</div>
			
			<!-- 검색 -->
			<div id="top_Body_Obj7">
				<img alt="" src="images/Myggumi_img3.png" id="obj7_img">
			</div>
	</div><!-- top_Main -->
	<div id="top_menu">
		<div id="main_menu" style="display: none;">
			<ul id="main_ul">
				<li id="iphone_li">
					<img src="images/Myggumi_iphone.png" id="iphone_img">
				</li>
				
				<li id="ipad_li">
					<img src="images/Myggumi_ipad.png" id="ipad_img">
				</li>
				
				<li id="macbook_li">
					<img src="images/Myggumi_macbook.png" id="macbook_img">
				</li>
			</ul>
		</div><!-- main_menu  -->
	</div><!-- top_menu -->
	
	<div id="sub_menu">
		<ul id="iphone_subUl">
			<a href="#" class="sub_a"><li class="iphone_subLi">전체보기</li></a>
			<a href="#" class="sub_a"><li class="iphone_subLi">아이폰x</li></a>
			<a href="#" class="sub_a"><li class="iphone_subLi">아이폰8/8s</li></a>
			<a href="#" class="sub_a"><li class="iphone_subLi">아이폰7/7s</li></a>
		</ul>
		
		<ul id="ipad_subUl">
			<a href="#" class="sub_a"><li class="ipad_subLi">테스트1</li></a>
			<a href="#" class="sub_a"><li class="ipad_subLi">테스트2</li></a>
			<a href="#" class="sub_a"><li class="ipad_subLi">테스트3</li></a>
			<a href="#" class="sub_a"><li class="ipad_subLi">테스트4</li></a>
		</ul>
		
		<ul id="macbook_subUl">
			<a href="#" class="sub_a"><li class="macbook_subLi">테스트1</li></a>
			<a href="#" class="sub_a"><li class="macbook_subLi">테스트2</li></a>
			<a href="#" class="sub_a"><li class="macbook_subLi">테스트3</li></a>
			<a href="#" class="sub_a"><li class="macbook_subLi">테스트4</li></a>
		</ul>
	</div>
	
	<div id="sub_login">
		<div id="login_top">
			로그인
		</div>
		<form action="login" method="post">
			<div id="login_body">
			
				<table id="login_body_table">
					<tr>
						<td>
							<input name="id" placeholder="ID">
						</td>
					</tr>
					<tr>
						<td>
							<input name="pwd" placeholder="Password" type="password">
						</td>
					</tr>
							
				</table>
			</div>
			
			<div id="login_body_2">
				<span id="login_body_2_span">
					<a href="#">아이디찾기</a>|
					<a href="#">패스워드찾기</a>|
					<a href="#">주문조회</a>
				</span>
			</div>
			<div id="login_body_submit">
				<input type="submit" value="로그인하기" id="login_submit">
			</div>
		</form>
		<div id="login_foot">
			<div id="login_foot_1">
				<div class="login_foot_1_div"><a href="#">최근 본 상품</a></div>
				<div class="login_foot_1_div"><a href="#">고객 지원센터</a></div>
			</div>
			<div id="login_foot_2">
				<div id="login_foot_2_div_1">아직 마이꾸미 회원이 아니세요?</div>
				<div id="login_foot_2_div_2"><a href="join">회원가입하기</a></div>
			</div>
		</div>
	</div>
</body>
