<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbConnection.jsp" %>	
<style>
	table{
		text-align:center;
		display:inline-block;
		margin-top:100px;
	}
</style>

<script>
	function Insert(){
		if(frm.saleno.value==""){
			alert("비번호가 입력되지 않았습니다.");
			frm.saleno.focus();
			return false;	
		}else if(frm.pcode.value==""){
			alert("판매코드가 입력되지 않았습니다.");
			frm.pcode.focus();
			return false;
		}else if(frm.saledate.value==""){
			alert("판매일이 입력되지 않았습니다.");
			frm.amount.focus();
			return false;
		}else if(frm.scode.value==""){
			alert("매장코드가 입력되지 않았습니다.");
			frm.scode.focus();
			return false;
		}else if(frm.amount.value==""){
			alert("수량이 입력되지 않았습니다.");
			frm.amount.focus();
			return false;	
		}else{
			frm.action = "sale_insert_action.jsp";
			frm.submit();
			alert("판매등록이 완료되었습니다.!");
		}
	}
</script>
<div style="text-align:center;">
	<form name="frm" method="post">
	<h2>주문등록</h2>
		<table>		
			<tr>
				<td><b>비번호</b></td>
				<td><input type="text" name="saleno"></td>
			</tr>
			<tr>
				<td><b>상품코드</b></td>
				<td><input type="text" name="pcode"></td>
			</tr>
			
			<tr>
				<td><b>판매날짜</b></td>
				<td><input type="text" name="saledate"></td>
			</tr>			
			<tr>
				<td><b>매장코드</b></td>
				<td><input type="text" name="scode"></td>
			</tr>
			<tr>
				<td><b>판매수량</b></td>
				<td><input type="text" name="amount"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="등록" onclick="Insert()"></td>
				<td><input type="button" value="조회" onclick="location.href='sale_list.jsp'"></td>
			</tr>
		</table>
	</form>
</div>