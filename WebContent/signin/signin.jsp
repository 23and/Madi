<%@page import="model.domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<title>ȸ������</title>

<script>
function msub() {
	if (document.f.password2.length == 0) {
		alert("�н����带 �ѹ� �� �����ּ���!");
		document.f.password2.focus();
		return false;
	}
	if ((document.f.password.value) != (document.f.password2.value)) {
		alert("�н����尡 ��ġ���� �ʽ��ϴ�.!");
		document.f.password.focus();
		return false;
	}	
	return true;
}
</script>

<body>
		<form method="post" action="<%=request.getContextPath()%>/member.do" name="f">
    		<input type="hidden" value="signup" name="command">
				<h2>ȸ������</h2>
				
				<label for="email">Email address</label>
				
				<input type="email" name="email" placeholder="Email address" required autofocus>
				<input type="hidden" id="reEamil" name="reEamil" value=""><br>
				
				<label for="password">Password</label>
				<input type="password" name="password" placeholder="Password" required><br>
				
				<label for="password2">Password  Confirm</label>
				<input type="password" name="password2" placeholder="Password  Confirm" required><br>
				
				<label for="name">Name</label> 
				<input type="text" name="name" placeholder="Name" required><br>
				
				<label for="phone">Phone Number</label> 
				<input type="text" name="phone" placeholder="Phone Number" required><br>
				
				<label for="local">Local</label> 
				<input type="text" name="local" placeholder="Local" required><br>
				
				<button type="submit" onclick="return msub()">Sign in</button>
				<button type="reset">Reset</button>
		</form>
</body>
</html>