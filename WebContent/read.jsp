<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="resultContent" class="model.domain.MemoBean" scope="request" />
<html>
	<head>
		<title>�� ����</title>
		<script language=javascript>
		function sendUpdate(){
				document.requestForm.command.value ="updateForm";
				document.requestForm.submit();
		}	
		
		function sendDelete(){
					document.requestForm.command.value ="delete";
					document.requestForm.submit();			
		}	
		</script>
	</head>
	<body>
	�ۼ���  <%= resultContent.getWriteday() %><br>
	��õ�뷡 <%= resultContent.getMusicNum() %><br>
	�� �� <%= resultContent.getTitle()  %><br>
	�� ��<%= resultContent.getContent()%><br><br>
	
	<!-- ������ �ʿ��� �����͵��� hidden���� ���ܳ��� �� �����ͷ� �����ش�. -->
	<form name="requestForm" method=post action="memo.do">
		<input type=hidden name=num value="<%=resultContent.getMemoNum()%>">
		<input type=hidden name="command" value="">
		<input type=button value="�����ϱ�" onClick="sendUpdate()">
		<input type=button value="�����ϱ�" onClick="sendDelete()">
	</form>
	<br>
	<a href="memo.do">����Ʈ�� ���ư���</a>&gt;</span></div>
	</body>
</html>