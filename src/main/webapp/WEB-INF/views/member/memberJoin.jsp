<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 회원가입</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;500;600;700&display=swap" rel="stylesheet">
  <jsp:include page="/WEB-INF/views/include/bs5.jsp" />
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
  <style>
    .theme-cafe-home,
    .theme-cafe-home input,
    .theme-cafe-home button,
    .theme-cafe-home select,
    .theme-cafe-home textarea {
      font-family: "IBM Plex Sans KR", sans-serif;
    }

    .page-kicker,
    .page-title,
    .page-desc,
    .section-title-sm,
    .join-block-title,
    .form-row label,
    .input-help,
    .join-note,
    .button-mini,
    .file-label,
    .option-card,
    .radio-card {
      font-family: "IBM Plex Sans KR", sans-serif;
    }

    .page-kicker {
      letter-spacing: 0.02em;
      font-size: 18px;
    }

    .page-title {
      font-size: 46px;
      line-height: 1.18;
      font-weight: 700;
    }

    .section-title-sm {
      font-size: 30px;
      line-height: 1.2;
      font-weight: 700;
    }

    .join-form {
      display: grid;
      gap: 30px;
    }

    .join-block {
      display: grid;
      gap: 18px;
    }

    .join-block + .join-block {
      padding-top: 28px;
      border-top: 1px solid rgba(97, 114, 84, 0.12);
    }

    .join-block-title {
      margin: 0;
      color: var(--text-main);
      font-size: 20px;
      font-weight: 800;
    }

    .join-stack {
      display: grid;
      gap: 16px;
    }

    .join-line {
      display: grid;
      grid-template-columns: 1fr auto;
      gap: 12px;
      align-items: end;
    }

    .join-line .form-row {
      margin: 0;
    }

    .radio-group,
    .option-group {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }

    .radio-card,
    .option-card {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      min-height: 50px;
      padding: 0 16px;
      border: 1px solid rgba(97, 114, 84, 0.14);
      border-radius: 16px;
      background: rgba(255, 255, 255, 0.84);
      color: var(--text-soft);
      font-size: 14px;
      font-weight: 600;
    }

    .radio-card input,
    .option-card input {
      width: auto;
      margin: 0;
    }

    .button-mini,
    .file-label {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      min-width: 120px;
      height: 52px;
      padding: 0 18px;
      border: 1px solid rgba(97, 114, 84, 0.18);
      border-radius: 16px;
      background: rgba(255, 255, 255, 0.92);
      color: var(--text-main);
      font-size: 14px;
      font-weight: 700;
      cursor: pointer;
    }

    .file-row {
      display: grid;
      grid-template-columns: auto 1fr;
      gap: 14px;
      align-items: center;
    }

    .file-row input[type="file"] {
      width: 100%;
      padding: 14px 16px;
      border: 1px dashed rgba(97, 114, 84, 0.2);
      border-radius: 16px;
      background: rgba(255, 255, 255, 0.86);
      font-family: inherit;
    }

    .input-help {
      margin: 0;
      color: var(--text-soft);
      font-size: 13px;
      line-height: 1.7;
    }

    .join-note {
      padding: 18px 20px;
      border-radius: 18px;
      background: rgba(233, 240, 228, 0.88);
      color: var(--text-soft);
      font-size: 13px;
      line-height: 1.8;
    }

    .join-note strong {
      color: var(--text-main);
    }

    @media (max-width: 860px) {
      .join-line,
      .file-row {
        grid-template-columns: 1fr;
      }

      .button-mini,
      .file-label {
        width: 100%;
      }
    }
  </style>
  
  <script>
  'use strict';
  
  let idCheckFlag = 0;
  let nickCheckFlag = 0;
  let certificationCheckFlag = 0;
  let certificationCheckFlag2 = 0;
  
  	function midCheck()	{
  		let mid = $("#mid").val().trim();
  		
			if(mid == "") {
				alert("아이디를 입력하세요.");
				$("#mid").focus();
				return false;
  		}
			
			$.ajax({
				url : '${ctp}/member/memberIdCheck',
				type : 'post',
				data : { mid : mid },
				success : (res) => {
					if(res != "0") {
						alert("이미 사용중인 아이디입니다.");
						idCheckFlag = 0;
						$("#mid").focus();
					}
					else {
						alert("사용 가능한 아이디입니다.");
						idCheckFlag = 1;
						//$("#mid").prop("readonly", true);
						$("#nickName").focus();
					}
				},
				error : () => {
					idCheckFlag = 0;
					alert("전송오류")
				}
			});
  	}
  	
  	function nickNameCheck() {
  		let nickName = $("#nickName").val().trim();
  		
  		if(nickName == "") {
  			alert("닉네임을 입력하세요.");
  			$("#nickName").focus();
  			return false;
  		}
  		
  		$.ajax({
  			url : '${ctp}/member/memberNickNameCheck',
  			type : 'post',
  			data : { nickName : nickName },
  			success : (res) => {
  				if(res != "0") {
  					alert("이미 사용중인 닉네임입니다.");
  					nickCheckFlag = 0;
  					$("#nickName").focus();
  				}
  				else {
  					alert("사용 가능한 닉네임입니다.");
  					nickCheckFlag = 1;
  					//$("#nickName").prop("readonly", true);
  					$("#pwd").focus();
  				}
  			},
  			error : () => {
  				nickCheckFlag = 0;
  				alert("전송오류")
  			}
  		});
  	}
  	
  	function joinCheck() {
  		let mid = $("#mid").val().trim();
  		let nickName = $("#nickName").val().trim();
  		let pwd = $("#pwd").val().trim();
  		let pwdCheck = $("#pwdCheck").val().trim();
			let name = $("#name").val().trim();
			let email1 = $("#email1").val().trim();
			let email2 = $("#email2").val().trim();
  		
			if(mid == "") {
		    alert("아이디를 입력하세요.");
		    $("#mid").focus();
		    return false;
		  }

		  if(idCheckFlag != 1) {
		    alert("아이디 중복확인을 해주세요.");
		    return false;
		  }

		  if(nickName == "") {
		    alert("닉네임을 입력하세요.");
		    $("#nickName").focus();
		    return false;
		  }

		  if(nickCheckFlag != 1) {
		    alert("닉네임 중복확인을 해주세요.");
		    return false;
		  }
		
			if(pwd == "") {
				alert("비밀번호를 입력하세요.");
				$("#pwd").focus();
				return false;
			} 
			
			if(pwdCheck == "") {
				alert("비밀번호 확인을 입력하세요.");
				$("#pwdCheck").focus();
				return false;
			}
			
			if(pwd != pwdCheck) {
				alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.")
				$("#pwdCheck").focus();
				return false;
			}
			
			if(name == "") {
				alert("성명을 입력하세요.");
				$("#name").focus();
				return false;
			}
			
			if(email1 == "") {
			  alert("이메일을 입력하세요.");
			  $("#email1").focus();
			  return false;
			}

			if($("#emailSelect").val() == "") {
			  alert("이메일 도메인을 선택하세요.");
			  $("#emailSelect").focus();
			  return false;
			}

			if(email2 == "") {
			  alert("이메일 도메인을 입력하세요.");
			  $("#email2").focus();
			  return false;
			}

			let email = email1 + "@" + email2;
			$("#email").val(email);

			if(certificationCheckFlag != 1 || certificationCheckFlag2 != 1) {
			  alert("이메일 인증을 완료해 주세요.");
			  return false;
			}

			return true;
  	}
  	
  	function emailCertification() {
			if($("#email1").val() == "") {
				alert("이메일을 입력하세요.");
				$("#email1").focus();
				return false;
			}
		
			if($("#emailSelect").val() == "") {
			  alert("이메일 도메인을 선택하세요.");
			  $("#emailSelect").focus();
			  return false;
			}

			if($("#email2").val().trim() == "") {
			  alert("이메일 도메인을 입력하세요.");
			  $("#email2").focus();
			  return false;
			}

			let email = $("#email1").val()+'@'+$("#email2").val();
			
			let spin= '<div class="text-center"><div class="spinner-border text-info"></div>  메일을 발송중이니 잠시만 기다려 주세요~!  <div class="spinner-border text-info"></div></div>';
			$("#demoSpinner").html(spin);
		
			$.ajax({
	    		url  : '${ctp}/member/memberEmailCheck',
	    		type : 'post',
	    		data : {email : email},
	    		success: (res) => {
	    			if(res != '0') {
	    				alert("인증번호가 발송되었습니다.\n메일확인후 인증번호를 입력해 주세요.");
	    				
    			    let str = '<div class="join-line" id="certificationForm" style="margin-top:12px;">';
    			    str += '<div class="form-row">';
    			    str += '<input type="text" name="checkKey" id="checkKey" maxlength="8" placeholder="인증번호 입력란">';
    			    str += '</div>';
    			    str += '<button type="button" onclick="emailCertificationCheck()" id="certificationCheckBtn" class="button-mini">인증번호확인</button>';
    			    str += '</div>';
    			    
	    				$("#demoSpinner").html(str);
	    				certificationCheckFlag2 = 1;
	    			}
	    			
	/* 	    			if(res != '0') {
	    				alert("인증번호가 발송되었습니다.\n메일확인후 인증번호를 입력해 주세요.");
	    				let str = '<div class="input-group" id="certificationForm">';
	    				str += '<div class="input-group-text">인증번호 입력란</div>';
	    				str += '<input type="text" name="checkKey" id="checkKey" class="form-control"/>';
	    				str += '<input type="button" value="인증번호확인" onclick="emailCertificationCheck()" class="btn btn-secondary btn-sm" />';
	    				str += '</div>';
	    				$("#demoSpinner").html(str);
	    			} */
	    			else alert("인증확인버튼을 다시 눌러주세요!");
	    		},
	    		error : () => alert("전송오류")
	    	});
		}
	
		//인증번호 확인하기
		function emailCertificationCheck() {
			let checkKey = $("#checkKey").val();
			if(checkKey.trim() == "") {
				alert("전송받은 메일에서 인증받은 키를 입력하세요~");
				$("#checkKey").focus();
				return false;
			}
			
			$.ajax({
				url : '${ctp}/member/memberCertificationCheck',
				type : 'post',
				data : {checkKey : checkKey},
				success : (res) => {
					if(res != '0') {
						//$("#certificationForm").hide();
						//$("#certificationBtn").hide();
						$("#email1").prop("readonly", true);
						$("#email2").prop("readonly", true);
						$("#emailSelect").prop("disabled", true);
						$("#email").val($("#email1").val().trim() + "@" + $("#email2").val().trim());
						$("#checkKey").prop("readonly", true);
						$("#certificationCheckBtn").hide();
						//$("#addContent").show();
						alert("인증번호가 확인되었습니다. \n 계속 진행해 주세요.");
						certificationCheckFlag = 1;
					}
					else alert('인증번호 오류 메일을 통해서 발급받은 인증번호를 확인하세요!');
				},
				error : () => alert("전송오류")
			});
		}
		
/* 		function fCheck() {
			let email = $("#email1").val()+'@'+$("#email2").val();
			let tel = $("#tel1").val()+'-'+$("#tel2").val()+'-'+$("#tel3").val();
			let address = $("#sample6_postcode").val()+'/'+$("#sample6_address").val()+'/'+$("#sample6_detailAddress").val();
			
			// 정규식을 통한 유효성 검사
			
			$("#email").val(email);
			$("#tel").val(tel);
			$("#address").val(address);
			
			
			if(certificationCheckFlag != 1 || idCheckFlag != 1 || nickCheckFlag != 1 || certificationCheckFlag2 != 1) {
				alert("아이디/닉네임/인증번호확인 버튼은 꼭 눌러주세요");
				return false;
			}
			
			document.joinForm.submit();
		} */
  	
		function emailDomainCheck() {
		  let domain = $("#emailSelect").val();

		  if(domain == "") {
		    $("#email2").val("");
		    $("#email2").prop("readonly", true);
		  }
		  else if(domain == "direct") {
		    $("#email2").val("");
		    $("#email2").prop("readonly", false);
		    $("#email2").focus();
		  }
		  else {
		    $("#email2").val(domain);
		    $("#email2").prop("readonly", true);
		  }
		}

		
  </script>
  
</head>
<body class="home-page-v2 theme-cafe-home">
  <div class="home-shell">
  <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <main class="sub-page-main">
    <div class="inner">
      <section class="page-hero">
        <p class="page-kicker">Member Join</p>
        <h1 class="page-title">회원 정보를 입력하고<br>청주카페를 시작해보세요</h1>
        <p class="page-desc">
          `MemberVO` 기준으로 가입 화면을 다시 정리했습니다.
          실제 저장용 필드만 맞추고, 비밀번호 확인처럼 검사용 항목만 보조로 추가했습니다.
        </p>
      </section>

      <section class="page-card">
        <h2 class="section-title-sm">회원가입 입력폼</h2>

        <form class="join-form" name="join-form" id="join-form" method="post" action="${ctp}/member/memberJoin" enctype="multipart/form-data" onsubmit="return joinCheck()">
          <div class="join-block">
            <h3 class="join-block-title">기본 계정 정보</h3>
            <div class="join-stack">
              <div class="join-line">
                <div class="form-row">
                  <label for="mid">아이디</label>
                  <input type="text" id="mid" name="mid" maxlength="30" placeholder="영문/숫자 조합 4~30자">
                </div>
                <button type="button" class="button-mini" onclick="midCheck()">아이디 중복확인</button>
              </div>

              <div class="join-line">
                <div class="form-row">
                  <label for="nickName">닉네임</label>
                  <input type="text" id="nickName" name="nickName" maxlength="20" placeholder="사용할 닉네임을 입력하세요">
                </div>
                <button type="button" class="button-mini" onclick="nickNameCheck()">닉네임 중복확인</button>
              </div>

              <div class="form-row">
                <label for="pwd">비밀번호</label>
                <input type="password" id="pwd" name="pwd" maxlength="100" placeholder="비밀번호를 입력하세요">
                <p class="input-help">저장 시 SHA256 또는 BCrypt 방식으로 암호화 처리할 예정입니다.</p>
              </div>

              <div class="form-row">
                <label for="pwdCheck">비밀번호 확인</label>
                <input type="password" id="pwdCheck" name="pwdCheck" maxlength="100" placeholder="비밀번호를 한 번 더 입력하세요">
              </div>
            </div>
          </div>

          <div class="join-block">
            <h3 class="join-block-title">개인 정보</h3>
            <div class="join-stack">
              <div class="form-row">
                <label for="name">성명</label>
                <input type="text" id="name" name="name" maxlength="20" placeholder="성명을 입력하세요">
              </div>

              <div class="form-row">
                <label>성별</label>
                <div class="radio-group">
                  <label class="radio-card"><input type="radio" name="gender" value="남자" checked> 남자</label>
                  <label class="radio-card"><input type="radio" name="gender" value="여자"> 여자</label>
                </div>
              </div>

              <div class="form-row">
                <label for="birthday">생년월일</label>
                <input type="date" id="birthday" name="birthday">
              </div>

              <div class="form-row">
                <label for="tel">전화번호</label>
                <input type="text" id="tel" name="tel" maxlength="15" placeholder="010-1234-5678">
              </div>

              <div class="form-row">
                <label for="address">주소</label>
                <div class="join-line">
                  <input type="text" id="address" name="address" maxlength="100" placeholder="주소를 입력하세요">
                  <button type="button" class="button-mini">주소검색</button>
                </div>
              </div>

              <div class="form-row">
                <label for="email1">이메일</label>
                <div class="join-line">
                <input type="text" id="email1" name="email1" maxlength="30" placeholder="이메일 아이디">
               	<select id="emailSelect" onchange="emailDomainCheck()">
               		<option value="">도메인 선택</option>
               		<option value="naver.com">naver.com</option>
						      <option value="gmail.com">gmail.com</option>
						      <option value="daum.net">daum.net</option>
						      <option value="nate.com">nate.com</option>
						      <option value="direct">직접입력</option>
               	</select>
              	</div>
              	<div class="join-line" style="margin-top:12px;">
							    <input type="text" id="email2" maxlength="30" placeholder="도메인 입력" readonly>
							  	<button type="button" onclick="emailCertification()" id="certificationBtn" class="button-mini">인증번호받기</button>
							  </div>
							  
							  <div id="demoSpinner" class="input-help" style="margin-top:12px;"></div>
							  
							  <input type="hidden" id="email" name="email">
              </div>
              	

              <div class="form-row">
                <label for="photo">회원 프로필</label>
                <div class="file-row">
                  <label for="photo" class="file-label">사진 선택</label>
                  <input type="file" id="fName" name="fName" accept=".jpg,.jpeg,.png,.gif">
                </div>
                <p class="input-help">업로드하지 않으면 기본 이미지 `noimage.jpg`를 사용합니다.</p>
              </div>
            </div>
          </div>

          <div class="join-block">
            <h3 class="join-block-title">회원 유형 설정</h3>
            <div class="join-stack">
              <div class="form-row">
                <label>회원 유형</label>
                <div class="option-group">
                  <label class="option-card"><input type="radio" name="memberType" value="일반" checked> 일반 회원</label>
                  <label class="option-card"><input type="radio" name="memberType" value="대표"> 대표 회원</label>
                </div>
              </div>

              <div class="join-note">
                <strong>VO/DB 기준 안내</strong><br>
                가입 화면에는 `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`,
                `email`, `photo`, `memberType`만 입력받도록 구성했습니다.
                `idx`, `userDel`, `visitCnt`, `startDate`, `lastDate`는 시스템에서 처리하는 값입니다.
              </div>
            </div>
          </div>

          <div class="button-row">
            <button type="submit" class="button-soft">회원가입</button>
            <button type="reset" class="button-line">다시 입력</button>
            <a href="${ctp}/member/memberLogin" class="button-line">로그인으로 이동</a>
          </div>
        </form>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
