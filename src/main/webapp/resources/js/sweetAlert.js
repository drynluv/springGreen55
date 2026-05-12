'use strict';

$(function() {

	// alert button
	$("#success1").click(function() {
		Swal.fire({
			title: '이곳은 제목이 실행됨',
			text: '내용이 실행됩니다.',
			icon: 'success'
		});
  });

	$("#success2").click(function() {
		Swal.fire('이곳은 제목이 실행됨','내용이 실행됩니다.','success');
  });
  
	$("#error").click(function() {
		Swal.fire('이곳은 제목이 실행됨','내용이 실행됩니다.','error');
  });
  
	$("#warning").click(function() {
		Swal.fire('이곳은 제목이 실행됨','내용이 실행됩니다.','warning');
  });
  
	$("#info").click(function() {
		Swal.fire('이곳은 제목이 실행됨','내용이 실행됩니다.','info');
  });
  
	$("#question").click(function() {
		Swal.fire('이곳은 제목이 실행됨','내용이 실행됩니다.','question');
  });
  
  
  // confirm button
  $("#confirm1").click(function() {
	  Swal.fire({
			title: '이곳은 제목이 실행됨',
			text: '내용이 실행됩니다.',
			icon: 'info',
			
			showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			confirmButtonText: '승인', // confirm 버튼 텍스트 지정
   		cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		});
  });
  
  $("#confirm2").click(function() {
	  Swal.fire({
			title: '이곳은 제목이 실행됨',
			text: '내용이 실행됩니다.',
			icon: 'warning',
			
			showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			confirmButtonText: '승인', // confirm 버튼 텍스트 지정
   		cancelButtonText: '취소', // cancel 버튼 텍스트 지정
   		confirmButtonColor: '#55e', // confrim 버튼 색깔 지정
   		cancelButtonColor: '#e55', // cancel 버튼 색깔 지정
		});
  });
  
  $("#confirm3").click(function() {
	  Swal.fire({
			title: '이곳은 제목이 실행됨',
			text: '내용이 실행됩니다.',
			icon: 'info',
			
			showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			confirmButtonText: '승인', // confirm 버튼 텍스트 지정
   		cancelButtonText: '취소', // cancel 버튼 텍스트 지정
   		
   		reverseButtons: true, // 버튼 순서 거꾸로
		});
  });
  
  $("#confirm4").click(function() {
		Swal.fire({
		  title: "자료를 저장할까요?",
		  icon: 'question',
		  // 'Yes'는 기본값으로 항상 true이다.
		  showDenyButton: true,		// 아니오
		  showCancelButton: true,	// 취소
		  confirmButtonText: "Save",
		  denyButtonText: `Don't save`
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
		  if (result.isConfirmed) {
		    Swal.fire("Saved!", "", "success");
		  } else if (result.isDenied) {
		    Swal.fire("Changes are not saved", "", "info");
		  }
		});
	});
	
  $("#confirm5").click(function() {
	  Swal.fire({
			title: '이곳은 제목이 실행됨',
			text: '내용이 실행됩니다.',
			icon: 'warning',
			
			showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			confirmButtonText: '승인', // confirm 버튼 텍스트 지정
   		cancelButtonText: '취소', // cancel 버튼 텍스트 지정
   		confirmButtonColor: '#55e', // confrim 버튼 색깔 지정
   		cancelButtonColor: '#e55', // cancel 버튼 색깔 지정
		}).then(res => {
			if(res.isConfirmed) {
				Swal.fire('승인이 완료되었습니다.','로그인 하세요', 'success');
			}
			else {
				Swal.fire('승인 실패~~','다시 인증처리 하세요', 'error');
			}
		});
  });
  
});

