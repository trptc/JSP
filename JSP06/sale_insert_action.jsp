<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbConnection.jsp" %>
<%	
	PreparedStatement stmt = conn.prepareStatement("insert into tbl_salelist_01 values(?,?,?,?,?)");	
	stmt.setInt(1,Integer.parseInt(request.getParameter("saleno")));
	stmt.setString(2,request.getParameter("pcode"));
	stmt.setString(3,request.getParameter("saledate"));
	stmt.setString(4,request.getParameter("scode"));	
	stmt.setInt(5,Integer.parseInt(request.getParameter("amount")));	
	stmt.executeUpdate();
	stmt.close();	
	conn.close();	
	response.sendRedirect("index.jsp?section=sale_list.jsp");
%>