<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<style>
			*{
				margin:0px;
			}
			header{
				padding:30px;
				background-color:none;
				text-align:center;
			}
			nav{
				padding:10px;
				background-color:#3B4890;
			}
			nav div ul li{
				display:inline;
				margin-left:30px;
			}
			nav div ul a{
				text-decoration:none;
				color:white;
			}
			nav div ul a:hover{
				color:blue;
			}
			section{
				padding:20px;
				background-color:none;
				height:600px;
			}
			footer{
				text-align:center;
				padding:10px;
				background-color:none;
			}
			.search {
  				position: absolute;
  				width: 300px;
  				top: 15px;
    			left: 50%;
    			transform: translate(-50%, 0%);
			}

			input {
  				width: 100%;
  				border: 1px solid #bbb;
  				border-radius: 8px;
  				padding: 10px 12px;
  				font-size: 14px;
			}
			.img {
				position: absolute;
				left: 30%;
				top: 15px;
				transform: translate(-50%, 0%);
				}
			textarea {
			width: 100%;
  				border: 1px solid #bbb;
  				border-radius: 8px;
  				padding: 10px 12px;
  				font-size: 14px;
			}
		</style>
		<meta charset="UTF-8">
		<title>INDEX</title>
	</head>
	<body>
		<% String section = request.getParameter("section"); %>
		<header>
		<div class="img"><img src="aasdf.png"></div>
			<div class="search">
			
  				<input type="text" placeholder="검색어 입력">
			</div>
		</header>
		<nav>
			<div>
				<ul>
					<center><li><a href="index.jsp?section=sale_insert.jsp">갤로그</a></li>
					<li><a href="index.jsp?section=sale_list.jsp">시디뉴스</a></li>
					<li><a href="index.jsp?section=shopsale_list.jsp">시디게임</a></li>		
					<li><a href="index.jsp?section=productsale_list.jsp">이벤트</a></li>		
					<li><a href="index.jsp">홈으로</a></li></center>
				</ul>
			</div>
		</nav>
		<section>
			<%if(request.getParameter("section") == null){ %>
				<%@include file ="section.jsp" %>
			<%}else{ %>
				<jsp:include page="<%=section%>"/>
			<%} %>
		</section>
		<footer>
			<h3>Copyright&copy; 2018 All right reserved Hanyang High School.</h3>
		</footer>
	</body>
</html>