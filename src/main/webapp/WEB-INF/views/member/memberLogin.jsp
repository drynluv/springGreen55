<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 로그인</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;800&family=Cormorant+Garamond:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
</head>
<body class="home-page-v2 theme-cafe-home">
  <div class="home-shell">
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <main class="sub-page-main">
    <div class="inner">
      <section class="page-hero">
        <p class="page-kicker">Member Access</p>
        <h1 class="page-title">분위기 좋은 카페 기록을<br>로그인으로 시작합니다</h1>
        <p class="page-desc">아이디 저장, 세션 로그인, 마이페이지와 좋아요 기능이 연결될 자리입니다.</p>
      </section>

      <section class="page-grid-2">
        <article class="page-card">
          <h2 class="section-title-sm">로그인</h2>
          <form class="auth-box" method="post" action="${ctp}/member/memberLogin">
            <div class="form-row">
              <label for="mid">아이디</label>
              <input type="text" id="mid" name="mid" placeholder="아이디를 입력하세요">
            </div>
            <div class="form-row">
              <label for="pwd">비밀번호</label>
              <input type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요">
            </div>
            <label class="check-row">
              <input type="checkbox" name="idSave"> 아이디 저장
            </label>
            <div class="button-row">
              <button type="submit" class="button-soft">로그인</button>
              <a href="${ctp}/member/memberJoin" class="button-line">회원가입</a>
            </div>
          </form>
        </article>

        <aside class="page-panel">
          <h2 class="section-title-sm">회원 기능 미리보기</h2>
          <ul class="info-list">
            <li>좋아요한 카페와 최근 검색 조건 보관</li>
            <li>내가 작성한 후기와 커뮤니티 글 모아보기</li>
            <li>대표 회원의 카페 등록과 승인 흐름 연결</li>
            <li>추후 세션 기반 메뉴 분기와 권한 처리 연결</li>
          </ul>
          <div class="hero-note">
            현재는 뷰 화면 중심이며, 로그인 검증과 쿠키 처리는 이후 백엔드에서 연결하면 됩니다.
          </div>
        </aside>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
