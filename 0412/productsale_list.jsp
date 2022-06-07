<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbConnection.jsp" %>
<style>
table {
	text-align: center;
	border:1px solid black;
	display:inline-block;
}
table td{
	border:1px solid black;
}
</style>
<div style="text-align:center;">
<h2>상품별 판매액</h2>
	<table>
		<tr>
			<td>상품코드</td>
			<td>상품명</td>
			<td>상품별 판매액</td>							
		</tr>
		<%
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(
						"select pr.pcode, pr.name, to_char(sum(sa.amount*pr.cost),'999,999') from tbl_salelist_01 sa join tbl_product_01 pr on(sa.pcode = pr.pcode) join tbl_shop_01 sh on ( sa.scode = sh.scode) group by pr.pcode, pr.name order by pr.pcode");
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>						
		</tr>
		<% }
				stmt.close();
				conn.close();			
		%>
	</table>
</div>