<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 대표 회원</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;800&family=Cormorant+Garamond:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
  <style>
    .owner-lead {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      min-height: 38px;
      padding: 0 16px;
      border-radius: 999px;
      background: rgba(227, 235, 220, 0.92);
      color: var(--primary-deep);
      font-size: 13px;
      font-weight: 800;
    }

    .owner-grid {
      display: grid;
      gap: 24px;
      grid-template-columns: 1.12fr 0.88fr;
      margin-top: 24px;
    }

    .owner-highlight {
      padding: 22px 24px;
      border-radius: 24px;
      background: linear-gradient(135deg, rgba(237, 243, 230, 0.95), rgba(255, 255, 255, 0.88));
      border: 1px solid rgba(97, 114, 84, 0.14);
    }

    .owner-highlight strong {
      display: block;
      margin-bottom: 8px;
      font-size: 18px;
    }

    .owner-highlight p {
      margin: 0;
      color: var(--text-soft);
      line-height: 1.8;
    }

    .owner-actions {
      display: grid;
      gap: 12px;
    }

    .owner-action {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 16px 18px;
      border: 1px solid rgba(97, 114, 84, 0.12);
      border-radius: 20px;
      background: rgba(255, 255, 255, 0.82);
    }

    .owner-action strong {
      display: block;
      margin-bottom: 4px;
      font-size: 16px;
    }

    .owner-action span {
      color: var(--text-soft);
      font-size: 14px;
    }

    .owner-arrow {
      color: var(--primary-deep);
      font-weight: 800;
      white-space: nowrap;
    }

    .timeline-list {
      margin: 0;
      padding: 0;
      list-style: none;
    }

    .timeline-list li {
      position: relative;
      padding: 0 0 18px 24px;
      border-left: 1px solid rgba(97, 114, 84, 0.18);
      margin-left: 8px;
      color: var(--text-soft);
      line-height: 1.8;
    }

    .timeline-list li:last-child {
      padding-bottom: 0;
      border-left: 0;
    }

    .timeline-list li::before {
      content: "";
      position: absolute;
      left: -7px;
      top: 6px;
      width: 12px;
      height: 12px;
      border-radius: 50%;
      background: linear-gradient(135deg, #7b916d 0%, #4d6246 100%);
    }

    .timeline-list strong {
      display: block;
      color: var(--text-main);
      font-size: 15px;
    }

    @media (max-width: 1024px) {
      .owner-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body class="home-page-v2 theme-cafe-home">
  <div class="home-shell">
  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <main class="sub-page-main">
    <div class="inner">
      <section class="page-hero">
        <p class="page-kicker">Cafe Owner Studio</p>
        <h1 class="page-title">${sNickName}님 카페 운영을 위한<br>대표 회원 전용 메인</h1>
        <p class="page-desc">카페 등록 준비, 승인 상태 확인, 커뮤니티 반응 체크까지 대표 회원이 자주 보는 흐름을 한 화면에 모았습니다.</p>
        <div class="button-row">
          <a href="${ctp}/cafe/cafeInput" class="button-soft">카페 등록하기</a>
          <a href="${ctp}/cafe/cafeList" class="button-line">등록된 카페 보기</a>
        </div>
      </section>

      <section class="dashboard-grid">
        <article class="stat-card">
          <strong>대표 회원 상태</strong>
          <span>ON</span>
        </article>
        <article class="stat-card">
          <strong>카페 등록 진행</strong>
          <span>1</span>
        </article>
        <article class="stat-card">
          <strong>오늘 확인할 항목</strong>
          <span>3</span>
        </article>
      </section>

      <section class="owner-grid">
        <article class="profile-card">
          <h2 class="section-title-sm">대표 회원 정보</h2>
          <div class="owner-highlight">
            <strong>카페 대표 계정으로 로그인 중입니다.</strong>
            <p>카페 등록과 수정, 승인 대기 확인, 소개 문구 점검 같은 운영 작업을 여기서 바로 이어갈 수 있습니다.</p>
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

          <div class="button-row">
            <a href="${ctp}/cafe/cafeInput" class="button-soft">운영 정보 입력</a>
            <a href="${ctp}/community/communityList" class="button-line">커뮤니티 확인</a>
          </div>
        </article>

        <aside class="page-card">
          <h2 class="section-title-sm">운영 체크리스트</h2>
          <div class="chip-list" style="margin-bottom:20px;">
            <span class="chip">카페 소개 문구</span>
            <span class="chip">대표 이미지</span>
            <span class="chip">운영 시간</span>
            <span class="chip">승인 상태</span>
          </div>
          <ul class="plain-list">
            <li>카페 대표 이미지와 소개 문구를 먼저 정리해 두세요.</li>
            <li>운영 시간과 휴무일을 정확하게 입력하면 승인 검토가 빨라집니다.</li>
            <li>등록 후에는 커뮤니티 반응과 후기 흐름을 함께 보는 것이 좋아요.</li>
          </ul>
        </aside>
      </section>

      <section class="page-grid-2" style="margin-top:24px;">
        <article class="page-card">
          <h2 class="section-title-sm">바로가기</h2>
          <div class="owner-actions">
            <a href="${ctp}/cafe/cafeInput" class="owner-action">
              <div>
                <strong>카페 정보 등록</strong>
                <span>카페명, 지역, 테마, 운영시간을 입력합니다.</span>
              </div>
              <span class="owner-arrow">바로가기</span>
            </a>
            <a href="${ctp}/cafe/cafeList" class="owner-action">
              <div>
                <strong>카페 목록 확인</strong>
                <span>등록된 카페 화면과 표시 상태를 확인합니다.</span>
              </div>
              <span class="owner-arrow">목록 보기</span>
            </a>
            <a href="${ctp}/community/communityList" class="owner-action">
              <div>
                <strong>커뮤니티 반응 보기</strong>
                <span>공지, 후기, 추천 글 흐름을 빠르게 살펴봅니다.</span>
              </div>
              <span class="owner-arrow">이동</span>
            </a>
          </div>
        </article>

        <article class="page-card">
          <h2 class="section-title-sm">승인 진행 메모</h2>
          <ul class="timeline-list">
            <li>
              <strong>1. 기본 정보 입력</strong>
              카페 이름, 지역, 운영시간, 테마를 빠짐없이 작성합니다.
            </li>
            <li>
              <strong>2. 소개 이미지 점검</strong>
              방문자가 첫 화면에서 카페 분위기를 이해할 수 있게 대표 이미지를 준비합니다.
            </li>
            <li>
              <strong>3. 등록 후 상태 확인</strong>
              승인 대기나 보완 요청이 생기면 빠르게 수정해서 다시 반영합니다.
            </li>
          </ul>
        </article>
      </section>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
