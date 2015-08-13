<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="model.domain.MemoBean" %> 
<%
 	MemoBean [] list=(MemoBean[])request.getAttribute("list");
 %>
<html>
	<head>
	<link href = "<%=request.getContextPath()%>/css/write.css" rel="stylesheet">
	<title>memo 목록</title>
	
	<c:choose>
		<c:when test="${empty member}">
			<a name="5"><%@include file="../header.jsp"%></a>
		</c:when>
		<c:otherwise>
			<a name="5"><%@include file="../header2.jsp"%></a>
		</c:otherwise>
	</c:choose>
	
	</head>
	<body>
		<div class="container">
			<div class="grid_12">
				<div class="inner_container">
				<%
					if(list==null || list.length==0){
				%>
					<p>등록된 메모가 없습니다</p>
				<%
					}else{
						MemoBean memo = null;
						for(int i = 0; i <list.length ; i++){
					 		memo = list[i];
				%>
				
					<div class="col_1of3">
						<article class="post">
							<img src="http://placehold.it/400x200/efefef"/>
							<div class="details">
								<div class="actions">
									<a href="memo.do?command=read&num=<%=memo.getMemoNum()%>" class="btn btn-secondary btn-round"><span class="icon-search"></span></a>
								</div>
								<h2><%=memo.getTitle() %></h2>
								<p>music</p>
								<div class="intents">
									<span class="icon-heart"></span>
									<span class="count"><%= memo.getWriteday()%></span>
								</div>
							</div>
						</article>
					</div>
			<% 
					} 
				}
			%>	
				</div>
			</div>
		</div>
	</body>
</html>
    
      



