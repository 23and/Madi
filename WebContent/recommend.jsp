<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="resultContent" class="model.domain.MemoBean" scope="request" /> 
<jsp:useBean id="resultMusic" class="model.domain.MusicBean" scope="request" /> 

<html>
	<head>
		<title>��õ</title>
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
		<br>���� ��õ<br>
		<a href="memo.do">����Ʈ</a>
		<form name=updateMusic method=post action="memo.do">
			<input type="hidden" name = "command" value= "save">
			<input type="hidden" name = "member" value= "<%= resultContent.getMemberNum() %>">
			<input type="hidden" name = "title" value= "<%= resultContent.getTitle() %>">
			<input type="hidden" name = "content" value= "<%= resultContent.getContent() %>">
			<input type="hidden" name = "hashTag1" value= "<%= resultContent.getHashTag1() %>">
			<input type="hidden" name = "hashTag2" value= "<%= resultContent.getHashTag2() %>">
			<input type="hidden" name = "hashTag3" value= "<%= resultContent.getHashTag3() %>">
			<input type="hidden" name = "musicNum" value= "<%= resultMusic.getMusicNum() %>">
			<input type="submit" value ="save">
		</form>
		�뷡���� <%= resultMusic.getTitle() %><!-- bean��ü���� title �����°� -->
		���� <%= resultMusic.getSinger() %>
		<audio src="<%= resultMusic.getUrl() %>" controls aoutoplay></audio>  
	</body>
</html>