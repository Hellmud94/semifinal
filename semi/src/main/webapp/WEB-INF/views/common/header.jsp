<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
<style>
	i {
		font-size: 30px;
		color: black;
	}
 
	#header_menu > a {
		color: black;
		text-decoration: none;
		padding-right: 20px;
		
	}
	
	#login >a {
		color: gray;
		text-decoration: none;
	}
</style>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
</head>
<body>
	<table border=0 width="100%">
		<tr>
			<td>
				<a href="${contextPath}/main.jsp"> <i class="fas fa-plus-square">시니어 케어텔</i></a>
			</td>
			<td id="header_menu">
				<a href="${contextPath}/main.jsp">요양원 소개</a>
				<a href="${contextPath}/main.jsp">코로나19</a>
				<a href="${contextPath}/main.jsp">알림마당</a>
				<a href="${contextPath}/main.jsp">면회 예약</a>
				<a href="${contextPath}/main.jsp">고객 센터</a>
			</td>

			<td id="login">
				<a href="#">로그인</a> 
				<a href="#">회원가입</a> 
				<%-- <c:choose>
					<c:when test="${isLogOn == true  && member!= null}">
						<h3>환영합니다. ${member.name }님!</h3>
						<a href="${contextPath}/member/logout.do"><h3>로그아웃</h3></a>
					</c:when>
					<c:otherwise>
						<a href="${contextPath}/#"><h3>로그인</h3></a>
						<a href="${contextPath}/#"><h3>회원가입</h3></a>
					</c:otherwise>
				</c:choose> --%>
			</td>
		</tr>
	</table>


</body>
</html>