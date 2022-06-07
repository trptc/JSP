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
	<div id="write_area">
                <form name="frm" method="post">
                <h1>글쓰기</h1>
                    <div id="in_title">
                        <textarea name="title" id="utitle" rows="1" cols="40" placeholder="제목" maxlength="100" required></textarea>
                    </div>
 
                    <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="ucontent" placeholder="내용" rows="10" required></textarea>
                    </div>
 
                      <input type="file" name="SelectFile" />
 
 
                    <div class="bt_se">
                        <button type="submit">글 작성</button>
		</table>
	</form>
</div>