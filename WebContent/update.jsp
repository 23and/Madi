<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="resultContent" class="model.domain.MemoBean" scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>����</title>
		<script>
			function checkValid() {
			    var f = window.document.updateForm;
			
				if ( f.title.value == "" ) {
					alert( "������ �Է��� �ּ���." );
					return false;
				}
				return true;
			}
		</script>
	</head>
	<body>
	<form name=updateForm method=post action="memo.do" onSubmit='return checkValid()'>
	    <input type="hidden" value="update" name="command">
	    <input type='hidden' name='num' value="<%=resultContent.getMemoNum()%>">
		�ۼ��� <input type=text name="member" size="30" value="<%=resultContent.getMemberNum()%>"><br>
		�� ��<input type=text name="title" size="50" value="<%=resultContent.getTitle()%>"><br>
	       �� ��<textarea name="content" cols="50" rows="10"><%=resultContent.getContent()%></textarea><br>
		<input type="submit" value="�����ϱ�"> <input type="reset" value="�ٽþ���"><br>
	</form>
	
	<a href="memo.do">����Ʈ�� ���ư���</a>
	
	
	</body>
</html>