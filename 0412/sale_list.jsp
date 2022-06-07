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
<h2>판매현황</h2>
	<table>
		<tr>
			<td>비번호</td>
			<td>상품코드</td>
			<td>판매날짜</td>
			<td>매장코드</td>
			<td>상품명</td>									
			<td>판매수량</td>									
			<td>총판매액</td>									
		</tr>
		<%
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(
						"select sa.saleno, sa.pcode, to_char(sa.saledate,'yyyy-mm-dd'), sh.scode, pr.name, sa.amount, to_char((sa.amount*pr.cost),'999,999') from tbl_salelist_01 sa join tbl_product_01 pr on(sa.pcode = pr.pcode) join tbl_shop_01 sh on ( sa.scode = sh.scode) order by sa.saleno");
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>								
			<td><%=rs.getString(6)%></td>								
			<td><%=rs.getString(7)%></td>								
		</tr>
		<% }
				stmt.close();
				conn.close();			
		%>
	</table>
</div>