<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>청주카페 | 관리자</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;800&family=Cormorant+Garamond:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${ctp}/resources/css/themeCafe.css">
  <style>
    .admin-layout {
      display: grid;
      grid-template-columns: 280px minmax(0, 1fr);
      gap: 24px;
      align-items: start;
    }

    .admin-sidebar-slot {
      min-height: 100%;
    }

    .admin-panel-stack {
      display: grid;
      gap: 24px;
    }

    .admin-hero-top {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 18px;
    }

    .admin-badge {
      display: inline-flex;
      align-items: center;
      min-height: 38px;
      padding: 0 16px;
      border-radius: 999px;
      background: rgba(227, 235, 220, 0.92);
      color: var(--primary-deep);
      font-size: 13px;
      font-weight: 800;
    }

    .admin-menu-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 18px;
    }

    .admin-menu-card {
      display: block;
      padding: 24px;
      border-radius: 24px;
      background: rgba(255, 253, 248, 0.92);
      border: 1px solid rgba(97, 114, 84, 0.12);
      box-shadow: var(--shadow-card);
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .admin-menu-card:hover {
      transform: translateY(-2px);
      box-shadow: 0 20px 34px rgba(96, 95, 72, 0.12);
    }

    .admin-menu-card strong {
      display: block;
      margin-bottom: 10px;
      font-size: 20px;
      color: var(--text-main);
    }

    .admin-menu-card p {
      margin: 0;
      color: var(--text-soft);
      line-height: 1.8;
      font-size: 14px;
    }

    .admin-menu-meta {
      margin-top: 16px;
      color: var(--primary-deep);
      font-size: 13px;
      font-weight: 800;
    }

    .admin-section-head {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 18px;
    }

    .admin-section-head p {
      margin: 0;
      color: var(--text-soft);
      font-size: 14px;
    }

    .admin-quick-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 18px;
    }

    .admin-quick-card {
      padding: 22px 24px;
      border-radius: 24px;
      background: linear-gradient(135deg, rgba(255, 255, 255, 0.92), rgba(233, 240, 228, 0.84));
      border: 1px solid rgba(97, 114, 84, 0.12);
    }

    .admin-quick-card strong {
      display: block;
      margin-bottom: 8px;
      font-size: 18px;
    }

    .admin-quick-card p {
      margin: 0;
      color: var(--text-soft);
      line-height: 1.8;
      font-size: 14px;
    }

    .admin-route-list {
      margin: 0;
      padding: 0;
      list-style: none;
      display: grid;
      gap: 12px;
    }

    .admin-route-list li {
      padding: 16px 18px;
      border-radius: 18px;
      background: rgba(255, 255, 255, 0.8);
      border: 1px solid rgba(97, 114, 84, 0.12);
      color: var(--text-soft);
      line-height: 1.7;
    }

    .admin-route-list strong {
      display: block;
      margin-bottom: 4px;
      color: var(--text-main);
      font-size: 15px;
    }

    @media (max-width: 1180px) {
      .admin-layout,
      .admin-menu-grid,
      .admin-quick-grid {
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
      <div class="admin-layout">
        <aside class="admin-sidebar-slot">
          <jsp:include page="/WEB-INF/views/admin/adminSidebar.jsp" />
        </aside>

        <div class="admin-panel-stack">
          <section class="page-hero">
            <div class="admin-hero-top">
              <div>
                <p class="page-kicker">Admin Dashboard</p>
                <h1 class="page-title">관리자 업무를 메뉴 중심으로<br>바로 시작하는 운영 메인</h1>
              </div>
              <span class="admin-badge">admin 전용 화면</span>
            </div>
            <p class="page-desc">회원, 대표 회원, 카페 승인, 커뮤니티 관리처럼 실제 운영 흐름에 맞춰 관리자 메뉴를 다시 정리했습니다. 지금은 구조 개편 중심으로 잡아두었고, 다음 단계에서 각 메뉴별 상세 화면을 붙이면 됩니다.</p>
          </section>

          <section class="dashboard-grid">
            <article class="stat-card">
              <strong>핵심 메뉴 수</strong>
              <span>9</span>
            </article>
            <article class="stat-card">
              <strong>우선 구현 권장</strong>
              <span>4</span>
            </article>
            <article class="stat-card">
              <strong>현재 시작 지점</strong>
              <span>ADM</span>
            </article>
          </section>

          <section class="page-card">
            <div class="admin-section-head">
              <div>
                <h2 class="section-title-sm">관리자 메뉴 구조</h2>
                <p>실제 프로젝트 흐름에 맞는 메뉴를 우선순위와 함께 배치했습니다.</p>
              </div>
            </div>

            <div class="admin-menu-grid">
              <a href="${ctp}/admin/adminMain" class="admin-menu-card">
                <strong>대시보드</strong>
                <p>오늘 가입 회원, 승인 대기 카페, 최근 활동, 빠른 작업 진입점을 한 화면에서 봅니다.</p>
                <div class="admin-menu-meta">우선순위 1</div>
              </a>

              <a href="${ctp}/admin/memberManage" class="admin-menu-card">
                <strong>회원관리</strong>
                <p>일반회원과 대표회원 전체 조회, 검색, 활동 상태 확인, 탈퇴 신청 관리에 사용합니다.</p>
                <div class="admin-menu-meta">우선순위 1</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>대표회원관리</strong>
                <p>대표 회원만 따로 모아서 카페 등록 여부, 승인 상태, 보완 요청 흐름을 확인합니다.</p>
                <div class="admin-menu-meta">우선순위 2</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>카페승인관리</strong>
                <p>대표가 등록한 카페의 승인, 반려, 보완 요청 처리를 담당하는 핵심 메뉴입니다.</p>
                <div class="admin-menu-meta">우선순위 1</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>카페전체관리</strong>
                <p>등록된 카페 전체 목록과 노출 상태, 운영 상태, 상세 정보를 종합적으로 관리합니다.</p>
                <div class="admin-menu-meta">우선순위 2</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>커뮤니티관리</strong>
                <p>공지 등록, 게시글 점검, 숨김 처리, 신고 대응 같은 커뮤니티 운영 작업을 맡습니다.</p>
                <div class="admin-menu-meta">우선순위 1</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>메인화면관리</strong>
                <p>추천 카페, 배너 문구, 메인 노출 순서처럼 사용자 첫 화면을 구성하는 항목입니다.</p>
                <div class="admin-menu-meta">우선순위 3</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>통계관리</strong>
                <p>회원 증가 추이, 카페 등록 추이, 인기 카페, 활동량 같은 운영 지표를 확인합니다.</p>
                <div class="admin-menu-meta">우선순위 3</div>
              </a>

              <a href="#" class="admin-menu-card">
                <strong>관리자로그</strong>
                <p>누가 언제 승인했고 어떤 상태를 바꿨는지 기록해 운영 이력을 남기는 메뉴입니다.</p>
                <div class="admin-menu-meta">우선순위 3</div>
              </a>
            </div>
          </section>

          <section class="page-grid-2">
            <article class="page-card">
              <div class="admin-section-head">
                <div>
                  <h2 class="section-title-sm">먼저 만들 메뉴</h2>
                  <p>처음부터 전부 만들기보다 운영 핵심부터 만드는 게 좋습니다.</p>
                </div>
              </div>

              <ul class="admin-route-list">
                <li>
                  <strong>1. 대시보드</strong>
                  관리자 첫 화면으로 현재 상태를 빠르게 파악할 수 있어야 합니다.
                </li>
                <li>
                  <strong>2. 회원관리</strong>
                  회원 구분, 활동 상태, 탈퇴 상태를 관리할 수 있어야 이후 작업이 편해집니다.
                </li>
                <li>
                  <strong>3. 카페승인관리</strong>
                  대표 회원이 등록한 카페를 승인하는 흐름이 이 프로젝트 핵심입니다.
                </li>
                <li>
                  <strong>4. 커뮤니티관리</strong>
                  공지와 게시글 상태 관리를 붙이면 운영자 화면의 완성도가 확 올라갑니다.
                </li>
              </ul>
            </article>

            <article class="page-card">
              <div class="admin-section-head">
                <div>
                  <h2 class="section-title-sm">메뉴별 핵심 기능</h2>
                  <p>상세 페이지를 만들 때 바로 들어갈 수 있게 핵심 작업만 뽑았습니다.</p>
                </div>
              </div>

              <div class="admin-quick-grid">
                <div class="admin-quick-card">
                  <strong>회원관리</strong>
                  <p>전체 회원 목록, 검색, 회원구분 필터, 탈퇴신청 상태, 상세 보기.</p>
                </div>
                <div class="admin-quick-card">
                  <strong>카페승인관리</strong>
                  <p>승인 대기 목록, 카페 상세 보기, 승인, 반려, 보완 요청 처리.</p>
                </div>
                <div class="admin-quick-card">
                  <strong>커뮤니티관리</strong>
                  <p>공지 등록, 게시글 숨김, 신고 처리, 최신 글 목록 확인.</p>
                </div>
                <div class="admin-quick-card">
                  <strong>메인화면관리</strong>
                  <p>추천 카페 고정, 메인 문구 수정, 배너 노출 순서 변경.</p>
                </div>
              </div>
            </article>
          </section>
        </div>
      </div>
    </div>
  </main>

  <jsp:include page="/WEB-INF/views/include/footer.jsp" />
  </div>
</body>
</html>
