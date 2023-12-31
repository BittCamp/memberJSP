<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.dao.MemberDAO" import="member.dto.MemberDTO"%>
<% 	
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name"); 
	String id = request.getParameter("id"); 
	String pwd = request.getParameter("pwd"); 
	int gender = Integer.parseInt(request.getParameter("gender")); 
	String email1 = request.getParameter("email1"); 
	String email2 = request.getParameter("email2"); 
	String tel1 = request.getParameter("tel1"); 
	String tel2 = request.getParameter("tel2"); 
	String tel3 = request.getParameter("tel3"); 
	String zipcode = request.getParameter("zipcode"); 
	String addr1 = request.getParameter("addr1"); 
	String addr2 = request.getParameter("addr2"); 
	
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO memberDTO = new MemberDTO();
	
	memberDTO.setName(name);
	memberDTO.setId(id);
	memberDTO.setPwd(pwd);
	if(gender ==0){
		memberDTO.setGender("남");
	}else{
		memberDTO.setGender("여");
	}
	
	memberDTO.setEmail1(email1);
	memberDTO.setEmail2(email2);
	memberDTO.setTel1(tel1);
	memberDTO.setTel2(tel2);
	memberDTO.setTel3(tel3);
	memberDTO.setZipcode(zipcode);
	memberDTO.setAddr1(addr1);
	memberDTO.setAddr2(addr2);
	
	memberDAO.write(memberDTO);
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% response.setContentType("text/html;charset=UTF-8"); %>

<h3>회원가입 성공</h3>
<input type="button" onclick="location.href='loginForm.jsp'" value="로그인으로 이동">
</body>
</html>