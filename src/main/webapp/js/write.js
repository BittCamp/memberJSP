/**
 * 
 */
$(function(){
	$('#id').change(function(){
		var idChk = $('#idChk').val();
		var id = $('#id').val()
		if(idChk != ''){
			if( id != idChk ){
				alert('중복체크 하세요'); /*애매하게 됨.*/
				idChk = '';
				$('#idChk').val('');
			}	
		}
	});
	
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
			}else if($('#idChk').val()==''){
				alert('중복체크 하세요.');
			}
			 else{
				$('#memberWriteForm').submit();
			}
	   });
});