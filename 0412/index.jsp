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
				padding:20px;
				background-color:blue;
				text-align:center;
			}
			nav{
				padding:10px;
				background-color:green;
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
				background-color:gray;
				height:600px;
			}
			footer{
				text-align:center;
				padding:20px;
				background-color:orange;
			}
		</style>
		<meta charset="UTF-8">
		<title>INDEX</title>
	</head>
	<body>
		<% String section = request.getParameter("section"); %>
		<header>
			<h2>매장별 커피 판매관리 프로그램 ver 1.0</h2>
		</header>
		<nav>
			<div>
				<ul>
				<li><a href="index.jsp?section=sale_insert.jsp">판매등록</a></li>
				<li><a href="index.jsp?section=sale_list.jsp">판매현황</a></li>
				<li><a href="index.jsp?section=shopsale_list.jsp">매장별판매액</a></li>		
				<li><a href="index.jsp?section=productsale_list.jsp">상품별판매액</a></li>		
				<li><a href="index.jsp">홈으로</a></li>
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