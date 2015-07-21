<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.MemoBean" %>
<html>
	<head>
		<title>memo �Է�</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${empty member}">
				<a name="5"><%@include file="../header.jsp"%></a>
			</c:when>
			<c:otherwise>
				<a name="5"><%@include file="../header2.jsp"%></a>
			</c:otherwise>
		</c:choose>
		<br>	
		<form name="writeForm" method="post" action="memo.do">
			<input type="hidden" name="command" value="write">	
			�ۼ���<input type=text name="member" size="30" value="${member.memberNum}"><br><br>
			����<br><textarea name="title" cols="30" rows="1"></textarea><br>
			�� ��<br><textarea name="content" cols="30" rows="10"></textarea><br>
			<input type=submit value=�۾���> 
			<input type=reset value=�ٽþ���><br>
		</form>
		<br>
		<a href="memo.do">����Ʈ</a>
	</body>
</html>
