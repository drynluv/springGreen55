<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 일반 회원</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;800&family=Cormorant+Garamond:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
  <style>
    .lounge-note {
      padding: 20px 22px;
      border-radius: 24px;
      background: linear-gradient(135deg, rgba(255, 255, 255, 0.92), rgba(233, 240, 228, 0.9));
      border: 1px solid rgba(97, 114, 84, 0.12);
    }

    .lounge-note strong {
      display: block;
      margin-bottom: 8px;
      font-size: 18px;
    }

    .lounge-note p {
      margin: 0;
      color: var(--text-soft);
      line-height: 1.8;
    }

    .shortcut-grid {
      display: grid;
      gap: 16px;
    }

    .shortcut-card {
      display: block;
      padding: 20px 22px;
      border-radius: 22px;
      border: 1px solid rgba(97, 114, 84, 0.12);
      background: rgba(255, 255, 255, 0.84);
    }

    .shortcut-card strong {
      display: block;
      margin-bottom: 8px;
      font-size: 16px;
    }

    .shortcut-card p {
      margin: 0;
      color: var(--text-soft);
      line-height: 1.7;
    }

    .interest-board {
      display: grid;
      gap: 16px;
    }

    .interest-item {
      padding: 16px 18px;
      border-radius: 20px;
      background: rgba(255, 255, 255, 0.8);
      border: 1px solid rgba(97, 114, 84, 0.12);
    }

    .interest-item strong {
      display: block;
      margin-bottom: 6px;
      font-size: 16px;
    }

    .interest-item span {
      color: var(--text-soft);
      font-size: 14px;
      line-height: 1.8;
    }
  </style>
</head>
<body class="home-page-v2 theme-cafe-home">
  <div class="home-shell">
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <main class="sub-page-main">
    <div class="inner">
      <section class="page-hero">
        <p class="page-kicker">Member Lounge</p>
        <h1 class="page-title">${sNickName}님이 좋아할 카페를<br>더 쉽게 찾는 일반회원 메인</h1>
        <p class="page-desc">둘러보기, 커뮤니티 참여, 찜할 카페 탐색처럼 일반 회원이 자주 쓰는 흐름을 한 번에 이어갈 수 있게 구성했습니다.</p>
        <div class="button-row">
          <a href="${ctp}/cafe/cafeList" class="button-soft">카페 둘러보기</a>
          <a href="${ctp}/community/communityList" class="button-line">커뮤니티 가기</a>
        </div>
      </section>

      <section class="profile-grid">
        <article class="profile-card">
          <h2 class="section-title-sm">내 회원 정보</h2>
          <div class="lounge-note">
            <strong>취향에 맞는 카페를 찾는 일반 회원 화면입니다.</strong>
            <p>찜할 만한 카페를 살펴보고, 커뮤니티에서 다른 회원들의 후기와 추천도 함께 확인해 보세요.</p>
          </div>

          <dl class="key-value" style="margin-top:20px;">
            <dt>아이디</dt><dd>${sMid}</dd>
          </dl>
          <dl class="key-value">
            <dt>닉네임</dt><dd>${sNickName}</dd>
          </dl>
          <dl class="key-value">
            <dt>회원구분</dt><dd>${sMemberType}</dd>
          </dl>
          <dl class="key-value">
            <dt>최근접속</dt><dd>${sLastDate}</dd>
          </dl>
        </article>

        <aside class="profile-card">
          <h2 class="section-title-sm">내 활동 요약</h2>
          <div class="dashboard-grid">
            <div class="stat-card">
              <strong>관심 카페</strong>
              <span>12</span>
            </div>
            <div class="stat-card">
              <strong>후기 체크</strong>
              <span>5</span>
            </div>
            <div class="stat-card">
              <strong>둘러본 지역</strong>
              <span>3</span>
            </div>
          </div>
        </aside>
      </section>

      <section class="page-grid-2" style="margin-top:24px;">
        <article class="page-card">
          <h2 class="section-title-sm">빠른 이동</h2>
          <div class="shortcut-grid">
            <a href="${ctp}/cafe/cafeList" class="shortcut-card">
              <strong>카페 목록 보기</strong>
              <p>지역, 테마별로 카페를 탐색하고 내 취향에 맞는 장소를 찾아보세요.</p>
            </a>
            <a href="${ctp}/community/communityList" class="shortcut-card">
              <strong>커뮤니티 참여</strong>
              <p>추천 글과 후기 게시글을 읽고 다른 회원들의 반응도 함께 확인할 수 있습니다.</p>
            </a>
            <a href="${ctp}/cafe/cafeContent" class="shortcut-card">
              <strong>카페 상세 보기</strong>
              <p>카페 소개, 운영 분위기, 대표 메뉴 같은 상세 화면 흐름을 미리 확인합니다.</p>
            </a>
          </div>
        </article>

        <article class="page-card">
          <h2 class="section-title-sm">관심 포인트</h2>
          <div class="chip-list" style="margin-bottom:18px;">
            <span class="chip">감성 카페</span>
            <span class="chip">브런치</span>
            <span class="chip">청주 시내</span>
            <span class="chip">후기 많은 곳</span>
          </div>
          <div class="interest-board">
            <div class="interest-item">
              <strong>요즘 많이 보는 카테고리</strong>
              <span>브런치와 감성 카페를 먼저 둘러본 뒤, 후기 많은 곳을 비교해 보기 좋은 구성입니다.</span>
            </div>
            <div class="interest-item">
              <strong>커뮤니티에서 많이 보는 글</strong>
              <span>추천 코스, 실제 방문 후기, 조용한 카페 찾기 같은 실사용 중심 게시글이 잘 맞습니다.</span>
            </div>
            <div class="interest-item">
              <strong>다음 이동 추천</strong>
              <span>카페 목록에서 한 곳을 고른 다음 상세 페이지와 커뮤니티 글을 이어서 보는 흐름을 추천합니다.</span>
            </div>
          </div>
        </article>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
