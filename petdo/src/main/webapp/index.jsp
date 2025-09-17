<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("login") == null) {
        response.sendRedirect("loginOpen.do");
    } else {
    	response.sendRedirect("main.do");
    }
%>