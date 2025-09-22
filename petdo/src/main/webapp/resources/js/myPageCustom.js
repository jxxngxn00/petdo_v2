function checkPwd() {
    const user_pwd = $('input[name="user_pwd_curr"]').val();
	const user_id = $('input[name="user_id"]').val();
	//console.log("user_id: " + user_id);
    //console.log("user_pwd: " + user_pwd);	
	
    if(!user_pwd) {
        alert('현재 비밀번호를 입력해주세요.');
        $('input[name="user_pwd_curr"]').focus();
        return;
    }
    
    // ajax로 서버에 비밀번호 확인 요청
	$.ajax({
		url: 'checkPwd.do',
		data : JSON.stringify({
			user_id : user_id,
			user_pwd : user_pwd
		}),
		contentType: 'application/json; charset=UTF-8',
        type: 'post',
        dataType: 'text',
        success: function(result) {
			//console.log(result);
            if(result === "true") {
                // 비밀번호가 일치할 경우
                $('input[name="user_pwd_curr"]').prop('readonly', true);
                alert('회원정보 수정이 가능합니다.');
				$('input[type="password"]').prop('disabled', false);
				return;
            } else {
                // 비밀번호가 일치하지 않을 경우
                alert('현재 비밀번호가 일치하지 않습니다. 다시 시도해주세요.');
                $('input[name="user_pwd_curr"]').val('').focus();
				return;
            }
        },
        error: function(err) {
            alert('error');
            console.log(err);
        }
	})
	return;
}

function validatePwd(el) {
	const $el = $(el);
	// ajax로 비밀번호 유효 controller 호출
	$.ajax({
		url: 'validatePwd.do',
		data : JSON.stringify({
			user_pwd : $el.val()
		}),
		contentType: 'application/json; charset=UTF-8',
	    type: 'post',
	    dataType: 'text',
	    success: function(result) {
			//console.log(result);
	        if(result === "false") {
                $(".validatePwdResult").text("영문, 숫자, 특수문자를 혼합하여 8~20자리 이내로 입력해주세요.");
                $el.data('suppressValidation', true);
                setTimeout(() => $el.focus(), 0);
				return;
	        } else {
				$(".validatePwdResult")
					.text("✅");
				return;
	        }
	    },
	    error: function(err) {
	        alert('error');
	        console.log(err);
	    }
	})
	return;
}

function checkAllInputsAndToggleButtons(formSelector, btnSelectors) {
    const $form = $(formSelector);
    const $btns = $(btnSelectors.join(','));

    function validateInputs() {
        let allFilled = true;
        $form.find('input').each(function() {
            if ($(this).val().trim() === '') {
                allFilled = false;
                return false; // break
            }
        });
        $btns.prop('disabled', !allFilled);
    }

    $form.find('input').on('input blur', validateInputs);
    validateInputs();
}

$(function(){
	const frm = $('#infoFrm');

	$('.checkPwd').on('click', function(e) {
		e.preventDefault();
        checkPwd();
    });
	
	$('input[name="user_pwd"]').on('keyup', function(e) {
		e.preventDefault();
        validatePwd(this);
    });

	// 모든 input이 입력되었을 때만 수정, 탈퇴 버튼 활성화
	checkAllInputsAndToggleButtons('#infoFrm', ['#modify', '#delete']);
	
	//수정버튼 클릭시
	$('#modify').click(function(e){
		e.preventDefault();
		frm.attr('action','modify.do');		
		const res=confirm("회원 정보를 수정합니다.");
		if(res) {
			frm.submit();﻿
		}
	});
	
	//탈퇴버튼 클릭시
	$('#delete').click(function(e){
		e.preventDefault();
		frm.attr('action','delete.do');
		const res=confirm("petdo를 탈퇴하시겠습니까?");
		if(res) {
			frm.submit();﻿
		}
	});//end of click

})//end of function