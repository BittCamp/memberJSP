<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="member.dao.MemberDAO , member.dto.MemberDTO , java.util.List" %>
<% 	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = "";
	//DB
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO memberDTO = new MemberDTO();
	memberDTO  = memberDAO.login(id, pwd);
	name = memberDTO.getName();
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% response.setContentType("text/html;charset=UTF-8"); %>
<% if( !name.equals(null)){ %>
	<h3> <%=name %> 님 로그인 </h3>	
<% } else {%> 
	<h3> 아이디 또는 비밀번호가 틀렸으니 다시 로그인 하세요.</h3>	
<% } %>




</body>
</html>