<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- forEach태그 : Java의 for문과 같은기능
	var: 변수명(생략가능)
	begin: 시작값
	end: 마지막값
	step: 증가값(생략시 1씩 증가)
	 -->
	 
	 <c:forEach var="i" begin="1" end="10" step = "1" >
	 	${i}
	 </c:forEach>
	 
	 <!-- forEach 태그 두번째 구조
	 	var:변수명
	 	items: 배열 또는 리스트 값
	  -->
	  <%
	   	ArrayList<String> list = new ArrayList<>();
	  	list.add("라면");
	  	list.add("햄버거");
	  	list.add("피자");
	  	list.add("족발");
	  	
	  	request.setAttribute("list", list);
	  %>
	  <c:forEach var= "food" items = "${list}">
	  ${food}
	  </c:forEach>
	  
</body>
</html>