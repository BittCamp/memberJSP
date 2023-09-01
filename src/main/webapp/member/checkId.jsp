<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.dao.MemberDAO" %> <!--  둘중에 편한거 써라.-->
<%-- <%@ page import="member.dao.MemberDAO" %> --%>
<% 
	String id = request.getParameter("id");
	// DB에 가서 실제 값이 있는지 확인. 필요한 jar파일부터 먼저 받아와야되. ojdbc11.jar랑 롬복가져와라.
	//DB
	MemberDAO memberDAO = new MemberDAO();
	boolean exist = memberDAO.isExistId(id); 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="checkId.jsp">
<% if(exist) { %>
	<h3><%=id %>는 이미 사용중입니다.</h3>
	아이디  <input type="text" name="id" >
	<input type="submit" value="중복체크">
<% }else{ %>
	<h3> <%=id %>는 사용가능 합니다. </h3>
	<input type="button" value="사용하기" onclick = "checkIdClose('<%=id %>')">
<% } %> 

<script type="text/javascript">
function checkIdClose(id) {
	opener.document.getElementById("id").value = id;
	window.close();
	opener.document.getElementById("pwd").focus();
}


</script>
</form>
</body>
</html>