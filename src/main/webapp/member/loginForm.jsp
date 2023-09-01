<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="loginForm" method="post" action="login.jsp" >
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" id="id" ></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" id="pwd" ></td>
		</tr>
		<tr> 
			<td colspan="2" align="center"> 
				<input type="submit" value="로그인"> 
				<input type="button" value="회원가입">  
			</td>
		 </tr>
	</table>
</form>
	  
	
	
</body>
</html>