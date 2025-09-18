<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Add Font Awesome CDN in the <head> section -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<%
    if (session.getAttribute("login") == null) {
        response.sendRedirect("loginOpen.do");
    } else {
    	response.sendRedirect("main.do");
    }
%>