<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
		border-collapse: collapse;
		padding: 10px;
}
</style>
<body>
<form action="">
	<h1>회원가입</h1>
	<table border="1" >
		<tr>
			<th>이름</th>
			<td> <input type="text" placeholder="이름 입력" name = "name" id="name"> </td>
		</tr>
		
		<tr>
			<th>아이디</th>
			<td> <input type="text" placeholder="아이디 입력" name = "id" id="id"> </td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td> <input type="password" name = "password" id="password" style="width: 300px;">  </td>
		</tr>
		
		<tr>
			<th>재확인</th>
			<td> <input type="password" name = "passwordCheck" id="passwordCheck" style="width: 300px;"> </td>
		</tr>
		
		<tr>
			<th>성별</th>
			<td>
				<label for="gender_m"> 남자
					<input type="radio" name = "gender" id="gender_m" value="0" checked="checked"> 
				</label>  
				<label for="gender_f"> 여자
					<input type="radio" name = "gender" id="gender_m" value="1"> 
				</label>  
			</td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td> 
				<input type="text" name="email"> @ <input type="text" name="email"> 
				<select name="email">
					<optgroup label="직접입력">
						<option value="naver" selected="selected">naver.com</option>
						<option value="gmail">gmail.com</option>
						<option value="nate">nate.com</option>
					</optgroup>
				</select>
			</td>
		</tr>
		
		<tr>
			<th>휴대폰</th>
			<td> <input type="text" name="phone"> - <input type="text" name="phone"> - <input type="text" name="phone"> </td>
		</tr>
		
		<tr>
			<th>주소</th>
			<td>
				<input type="text"  readonly="readonly"> <input type="button" value="우편번호 검색"> <br> 
				<input type="text" placeholder="주소" style="width: 500px;" readonly="readonly"> <br>
				<input type="text" placeholder="상세주소" style="width: 500px;"> 
				
			</td>
		</tr>
		
		<tr>
			<td align="center" colspan="2"> 
				<input type="submit" onclick="check()" value="회원가입">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
<script>
	function check(){
		$('id').text('');
		$('password').text('');
		$('passwordcheck').text('');
	}
</script>
</body>
</html>