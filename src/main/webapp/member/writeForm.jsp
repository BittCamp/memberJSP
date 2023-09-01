<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- [ 김찬영  2023-09-1 오후 12:33:40 ]s -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: collapse;
}
#memberWriteForm div{
	font-size: 8pt;
	font-weight:bold;
	color: red;
}
</style>
</head>
<body>
<form id="memberWriteForm" method="post" action ="write.jsp">
	<h3>회원가입</h3>
	<table border="1" cellpadding="7">
		<tr>
			<th width="100">이름</th>
			<td>
				<input type="text" name="name" id="name" placeholder="이름입력">
				<div id="nameDiv"></div>
			</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" name="id" id="id" size="30" placeholder="아이디 입력">
				<input type="button" value="중복체크" onclick="checkId()">
				<div id="idDiv"></div>
			</td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="pwd" id="pwd" size="40">
				<div id="pwdDiv"></div>
			</td>
		</tr>
		
		<tr>
			<th>재확인</th>
			<td>
				<input type="password" name="repwd" id="repwd" size="40">
			</td>
		</tr>
		
		<tr>
			<th>성별</th>
			<td>
				<input type="radio" name="gender" id="gender" value="0" checked="checked"/>
				<label for="gender_m">남자</label>
				<input type="radio" name="gender" id="gender" value="1"/>
				<label for="gender_f">여자</label>
			</td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td>
				<input type="email" name="email1" id="email1" style="width: 120px;">
				@
				<input type="email" name="email2" id="email2" style="width: 120px;">
				<select name="email3" id ="email3" style="width:120px;"> <!--  자바스크립트로 하면 onchange="change()" 이런 이벤트 넣어줘야됨 그러나 제이쿼리라 아이디만넣어주면됨-->
					<option value="직접입력" selected>직접입력</option> 
					<option value="naver.com">naver.com</option> 
					<option value="gmail.com">gmail.com</option> 
					<option value="nate.com">nate.com</option> 
				</select>
			</td>	
		</tr>
		
				
		<tr>
			<th>휴대폰</th>
			<td>
				<select name="tel1" id="tel1" style="width: 60px;">
					<option value="010">010</option>			
					<option value="011">011</option>			
					<option value="019">019</option>			
				</select>
				-
				<input type="tel" name="tel2" id="tel2" style="width: 50px;">
				-
				<input type="tel" name="tel3" id="tel3" style="width: 50px;">	
			</td>	
		</tr>
		
		<tr>
			<th>주소</th>
			<td>
				<input type="text" name="zipcode" id="zipcode" readonly>
				<input type="button" value="우편번호검색" id="checkPostBtn"><br><!-- 자바스크립트에선 onclick="checkPost()"이런식으로 해줘야됨.  -->
				<input type="text" name="addr1" id="addr1" style="width: 400px;" placeholder="주소" readonly/> <br>
				<input type="text" name="addr2" id="addr2" style="width: 400px;" placeholder="상세주소"/> 
			</td>	
		</tr>
		
		<tr>
			<th colspan="2">
				<button type="button" id="writeBtn" >회원가입</button>	
				<input type="hidden" id="idChk" name="idChk" >
				<input type="hidden" id="idChk1" name="idChk1" >
				<button type="reset">다시작성</button>
			</th>
		</tr>
	</table>	
</form>

<script type="text/javascript">
function checkId() {
	//var id = document.폼이름.name속성명.value;
	//var id = document.getElementById('id명').value;
	var id = document.getElementById('id').value;
	
	if(id == "")
		document.getElementById("idDiv").innerText = "먼저 아이디를 입력하세요";
	else 
		window.open("checkId.jsp?id="+ id,"checkId", "width=400 height=150 top=300 left=900"); /* + id자바스크립트구역이라 구분자 +id 써줘야됨.  "checkId.jsp?id= " 여기 공백이 들어갔어서 오류가 나왔다. */
	
	
	
}



</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="../js/write.js"></script><!--http://localhost:8080/memberJSP/js/write.js  --><!--/js/write.js  -->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- api상ㅇ하려면 무조선 써야됨 -->
<script type="text/javascript" src="../js/post.js">
<script type="text/javascript">
/*$(function(){ //이거를 ../js/write.js 로 넘겼다.
	$('#email3').change(function(){
		var email3 = $('#email3').val();
		$('#email2').val(email3);
		
		if(email3 == '직접입력'){
			$('#email2').val('');
		}//if
	});
	
  	$('#writeBtn').click(function(){
		$('#nameDiv').empty();
		$('#idDiv').empty();
		$('#pwdDiv').empty();
			if($('#name').val()==''){
				$('#nameDiv').text('이름을 입력하세요.');
				$('#name').focus();
			}else if($('#id').val()==''){
				$('#idDiv').text('아이디를 입력하세요.');
				$('#id').focus();
			}else if($('#pwd').val()==''){
				$('#pwdDiv').text('비밀번호를 입력하세요.');
				$('#pwd').focus();
			}else if($('#pwd').val() != $('#repwd').val()){
				$('#pwdDiv').text('비밀번호를 맞지않습니다.');
				$('#pwd').focus();
			}else{
				$('#memberWriteForm').submit();
			}
	   });
});*/
</script>
</body>
</html>