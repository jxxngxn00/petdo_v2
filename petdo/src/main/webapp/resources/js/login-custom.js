function displayIdCheckResult(result){
    $('#idCheckResult').text(result);
} // end fo checkId()

function idCheck ( user_id ) {
	$.ajax({
		url : 'idCheck.do',
		data : { user_id : user_id },
		// dataType : '주로 json/xml',
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : displayIdCheckResult,
		error : function(err){
			alert('error');
			console.log(err);
		}
	})
}
// 비밀번호 유효성 검사
function validatePW (el) {
    const $pw = $(el);
    // 기존 blur 이벤트 제거 후 재등록 (중복 방지)
    $pw.off("blur.validatePW").on("blur.validatePW", function () {
        // suppressValidation 플래그가 있으면 경고를 건너뜀
        if ($pw.data('suppressValidation')) {
            $pw.data('suppressValidation', false);
            return;
        }
        const pw = $pw.val();
        const num = pw.search(/[0-9]/);
        const eng = pw.search(/[a-zA-Z]/);
        // 특수문자 정규식 개선
        const spe = pw.search(/[!@#$%^&*(),.?":{}|<>`~'\\/\[\];]/);

        if (pw.length < 8 || pw.length > 20) {
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            $pw.data('suppressValidation', true);
			$pw.val('');
            setTimeout(() => $pw.focus(), 0);
            return false;
        } else if (/\s/.test(pw)) {
            alert("비밀번호는 공백 없이 입력해주세요.");
			$pw.val('');
            $pw.data('suppressValidation', true);
            setTimeout(() => $pw.focus(), 0);
            return false;
        } else if (num < 0 || eng < 0 || spe < 0) {
            alert("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			$pw.val('');
            $pw.data('suppressValidation', true);
            setTimeout(() => $pw.focus(), 0);
            return false;
        } else {
            // 유효성 통과
            console.log("통과");
            return true;
        }
    });
}


// 비밀번호 일치 검사
function checkPasswordMatch() {
    const password = $('#exampleInputPassword').val();
    const confirmPassword = $('#exampleRepeatPassword').val();

    if (password !== confirmPassword) {
        alert("비밀번호가 일치하지 않습니다.");
        return false;
    }
    return true;
}

// 모든 input이 입력되었을 때만 submit 버튼 활성화
function checkFormInputs(formSelector, submitBtnSelector) {
    const $form = $(formSelector);
    const $submitBtn = $(submitBtnSelector);

    function validateInputs() {
        let allFilled = true;
        $form.find('input').each(function() {
            if ($(this).val().trim() === '') {
                allFilled = false;
                return false; // break
            }
        });
        if (allFilled) {
            $submitBtn.prop('disabled', false);
        } else {
            $submitBtn.prop('disabled', true);
        }
    }

    $form.find('input').on('input blur', validateInputs);
    validateInputs();
}



$(function(){
    // 모든 input이 입력되었을 때만 submit 버튼 활성화
	checkFormInputs('.user', '#joinBtn');
	
	//아이디 중복체크
	$('.idCheckBtn').click(function(e){
		e.preventDefault();
		const user_id = $('input[name="user_id"]').val();
		if ( user_id ) {
			idCheck(user_id);
		} else {
			alert(" 아이디를 입력해주세요. ");
		}
	}) // end of click
	
	//비밀번호 유효성체크
	$('#exampleInputPassword').on("focus", 
		function() {
			validatePW(this);
		 }
	)
	
	//비밀번호 일치 체크
	$('#exampleRepeatPassword').on("blur", checkPasswordMatch);
	
	// 모든 input이 입력되었을 때만 submit 버튼 활성화
    checkFormInputs('#joinForm', '#joinBtn');
})