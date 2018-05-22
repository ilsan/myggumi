<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	
	function loofFont(){
		$("#top_animation").animate({fontSize:"25px"},3000)
		.animate({fontSize:"35px"},3000, loofFont);
	}
</script>
<style type="text/css">
	#main{
		width: 100%;
		min-width: 1600px;
	}
	#main_top{
		width: 100%;
		background-color: #ebcdd5;
		height: 400px;
		padding-top: 50px; 
		text-align: center;
	}
	#top_animation{
		display: inline-block;
		color: white;
		font-size: 35px;
		line-height: 40px; 
		font-weight: bold;
		min-width: 1600px;
	}
	
	#main_top p{
		display: inline-block;
		color: white;
		font-size: 20px;
		font-weight: bold;
		min-width: 1600px;
	}
	
	#main_recommend{
		background-color: #e8e8e8;
		margin: 0px;
		width: 100%;
		height: 750px;
	}
	
	#main_recommend h2{
		font-size: 42px;
		text-align: center;
		margin: 0px; 
	}
	
	.font{
		padding-top: 50px;
		padding-bottom: 50px;
		height: 50px; 
	}
	
	.recommend_item_left{
		float: left;
		background-color: white;
		margin-top: 50px;
		margin-bottom: 50px;
		margin-left: 10%;
		width: 300px;
		height: 500px;
	}
	
	.recommend_item_center{
		float: left;
		background-color: white;
		margin-top: 50px;
		margin-bottom: 50px;
		margin-left: 11%;
		margin-right: 11%; 
		width: 300px;
		height: 500px;
	}
	
	.recommend_item_right{
		float: left;
		background-color: white;
		margin-top: 50px;
		margin-bottom: 50px;
		margin-right: 10%;
		width: 300px;
		height: 500px;
	}
	
	.item_img{
		margin-bottom: 20px; 
	}
	
	.item_state{
		height: 30px;
		text-align: center;
		margin-bottom: 20px;
	}
	
	.item_name{
		text-align: center;
		width: 300px;
		white-space: nowrap;
		overflow: hidden;
		font-size: 14px;
		margin-top: 0px;
		margin-bottom: 20px;
		height: 18px;
		color: #333;				
	}
	/* 세일 아닌 상품의 가격 적을때 사용할 클래스*/
	.item_price{
		text-align: center;
		font-size: 14px;
		margin-top: 0px;
		margin-bottom: 40px;
		height: 18px;
		color: #333;
	}
	/* 세일 상품의 가격 적을때 사용할 클래스 margin_px차이*/
	.item_price_sale{
		text-align: center;
		font-size: 14px;
		margin-top: 0px;
		margin-bottom: 10px;
		height: 18px;
		color: #333;
	}
	/* 세일 가격 적는 클래스*/
	.item_sale_price{
		text-align: center;
		height: 20px;
		font-size: 14px;
		margin-bottom: 10px;
		margin-top: 0px;
		color: #f5738f;
	}
	.item_color{
		height: 34px;
		text-align: center;
		
	}
	
	.item_hover{
		width: 300px;
		height: 500px;
	}
	.item_hover:hover { 
		display: block;
		outline: 1px solid black; 
	}
	
	#main_new{
		background-color: #f4f4f4;
		margin: 0px;
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	
	#main_new h2{
		font-size: 42px;
		text-align: center;
		margin: 0px; 
	}
	
	#main_hot{
		background-color: #F6F6F6;
		margin: 0px;
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	
	#main_hot h2{
		font-size: 42px;
		text-align: center;
		margin: 0px; 
	}
	
	.item_left{
		float: left;
		background-color: white;
		margin-bottom: 10px;
		margin-left: 10%;
		width: 300px;
		height: 500px;
	}
	
	.item_center{
		float: left;
		background-color: white;
		margin-bottom: 10px;
		margin-left: 11%;
		margin-right: 11%; 
		width: 300px;
		height: 500px;
	}
	
	.item_right{
		float: left;
		background-color: white;
		margin-bottom: 10px;
		margin-right: 10%;
		width: 300px;
		height: 500px;
	}
</style>
</head>

<div id="main">
	<div id="main_top">
		<a href="#"	>
			<h2 id="top_animation">
				iPhone8 (RED) 출시기념
				<br>
				레드 아이템 20% off
			</h2>
			<p>
				지금 진행 중인 기획전 바로가기
			</p>
		</a>
	</div>
	<div id="main_recommend">
		<div class="font">
			<h2>추천 제품</h2>
		</div>
		<c:forEach var="i" items="${recommendItemList}" varStatus="j">
		<c:if test="${j.index==0 }">
		<div class="recommend_item_left">
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<%-- <img alt="" src="${tag1 ne '' ? tag1 : ''} "> --%>
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png" > <!-- 엑박안뜨게  -->
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		
		<c:if test="${j.index==1 }">
		<div class="recommend_item_center">
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		
		<c:if test="${j.index==2 }">
		<div class="recommend_item_right"> 
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		</c:forEach>
	</div>
	
	<!-- 신규제품 -->
	<div id="main_new">
		<div class="font">
			<h2>신규 제품</h2>
		</div>
		<c:forEach var="i" items="${newItemList}" varStatus="j">
		<c:if test="${j.index % 3 == 0 }">
		<div class="item_left">
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		
		<c:if test="${j.index % 3 == 1 }">
		<div class="item_center">
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		
		<c:if test="${j.index % 3 == 2 }">
		<div class="item_right"> 
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		</c:forEach>
	</div>
	
	<!-- 인기 제품 -->
	<div id="main_hot">
		<div class="font">
			<h2>인기 제품</h2>
		</div>
		<c:forEach var="i" items="${hotItemList}" varStatus="j">
		<c:if test="${j.index % 3 == 0 }">
		<div class="item_left">
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		
		<c:if test="${j.index % 3 == 1 }">
		<div class="item_center">
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		
		<c:if test="${j.index % 3 == 2 }">
		<div class="item_right"> 
		<a href="#" class="item_hover">
			<div class="item_img">
				<!-- 300x300px -->
				<img alt="" src="${i.itemImg}">  
			</div>
			<div class="item_state">
			<!-- 30x50 px -->
				<img alt="" src="images/mainpage/sale.png">
				<img alt="" src="images/mainpage/new.png">
				<img alt="" src="images/mainpage/hot.png">
			</div>
			<p class="item_name">
				${i.itemName }
			</p>
			<c:if test="${empty i.itemSalePrice}">
			<p class="item_price">
				${i.itemPrice }
			</p>
			</c:if>
			<c:if test="${!empty i.itemSalePrice}">
			<p class="item_price_sale">
				560,000원
			</p>
			<p class="item_sale_price">
				한정 세일 500,000원
			</p>
			</c:if>
			<div class="item_color">
			<!-- 10x10 px -->
			<c:if test="${!empty i.itemColor}">
				<img alt="" src="images/mainpage/color_red.png">
			 </c:if>
			</div>
		</a>
		</div>
		</c:if>
		</c:forEach>
	</div>			
</div>
