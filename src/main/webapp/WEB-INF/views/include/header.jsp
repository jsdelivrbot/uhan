<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
@media only screen and (min-width:1100px){
 *{
		margin:0;
		padding:0;
	}
	.headerWrap{
		width:1073px;
		height:108px;
		margin:0 auto;
		background: url("${pageContext.request.contextPath}/resources/images/gnb_bg.png") no-repeat;
	}
	.headerWrap>.mainLogo{
		height:37px;
		margin-top:33px;
		margin-left:40px;
		float:left;
	}
	.headerWrap>.mainLogo>img{
		width:220px;
	}
	.mainMenu{
		width:750px;
		float:right;
		height:108px;
	}
	.mainMenu > li{
		width:33.24%;
		height:20px;
		float: left; 
		text-align: center;
		margin-top:43px;
		line-height: 20px;
	}
	.mainMenu>li:nth-child(2){
		border-left:1px solid #dcdcdc;
		border-right:1px solid #dcdcdc;
	}
	.mainMenu>li>a{ 
		font-size: 20px;
		height:23px;
		display: inline;
		padding-bottom:32px;
	}
	.mainMenu>li:hover>a{
		border-bottom:4px solid #00B4AE;
	}
	.mainMenu .dropdown{
		display: none;
		height:240px;
		background: #fafafa;
		padding-top:30px;
		margin-top:38px;
	}
	.mainMenu .dropdown:nth-child(2){
		width:248.3px;
		border-left:1px solid #fafafa;
		border-right:1px solid #fafafa;
	}
	.mainMenu .mainSubMenu:not(#lastMainSubMenu){
		height:200px;
		border-right:1px solid #E1F3F2;
	}
	.mainMenu .mainSubMenu>li{
		line-height: 40px;
		width:120px;
		margin:0 auto;
		text-align: left;
	}
	.mainSubMenu li a{
		font-size: 18px;
		width:135px;
		font-weight: 300;
	}
	.mainSubMenu li:hover a{
		color:#00B4AE; 
		/* font-weight: bold; */
	}
	.mobileMenu{
		display: none;
	}
}

@media only screen and (min-width:320px) and (max-width:414px){
 *{
		margin:0;
		padding:0;
	}
	.headerWrap{
		position:relative;
		width:100%;
		height:50px;
		padding:25px 0px 0px 0px;
	}
	.headerWrap .mainLogo img{
		width:180px;
		margin-left: 20px;
	}
	.headerWrap .mainMenu{
		display: none;
	}
	.headerWrap .mobileMenu img{
		position:absolute;
		top:20px;
		right:5px;
		display:inline;
		width:40px;
		height:40px;
	}
}

	
</style>
<script type="text/javascript">
	$(function(){
		$(".mainMenu").mouseover(function(){
			$(".dropdown").css("display","block");
		});
		$(".mainMenu").mouseout(function(){
			$(".dropdown").css("display","none");
		});
		
		$(".mobileMenu").click(function(e){
			e.preventDefault();
		});
		

	});
</script>
</head>
<body>
<div class="headerWrap">
	<a class="mainLogo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
	<a class="mobileMenu" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/mobileMenu.png"></a>
	<ul class="mainMenu">
		<li>
			<a href="info01">병원소개</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="info01">인사말</a></li>
					<li><a href="info02">의료진 소개</a></li>
					<li><a href="info03">병원 둘러보기</a></li>
					<li><a href="info04">진료안내</a></li>
					<li><a href="location">오시는 길</a></li>
				</ul>
			</div>
		</li>
		<li>
			<a href="clinic01_01">진료분야</a>
			<div class="dropdown">
				<ul class="mainSubMenu">
					<li><a href="clinic01_01">비수술 클리닉</a></li>
					<li><a href="clinic02">대상포진 클리닉</a></li>
					<li><a href="clinic03_01">관절통증 클리닉</a></li>
				</ul>
			</div>
		</li>
		<li>
			<a href="notice">병원소식</a>
			<div class="dropdown">
				<ul class="mainSubMenu" id="lastMainSubMenu">
					<li><a href="notice">공지사항</a></li>
					<li><a href="broadcasting">언론보도</a></li>
					<li><a href="comment">시술 후기</a></li>
					<li><a href="advice">진료/비용 상담</a></li>
					<li><a href="freqQuestion">자주하는 질문</a></li>
				</ul>
			</div>
		</li>
	</ul><!-- mainMenu end -->
</div><!-- headerWrap end -->