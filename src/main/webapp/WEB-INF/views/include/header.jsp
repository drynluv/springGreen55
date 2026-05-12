<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
  :root {
    --bg: #f3ebde;
    --shell: #fbf8f2;
    --panel: rgba(255, 253, 248, 0.96);
    --line: #e7decf;
    --line-soft: rgba(231, 222, 207, 0.72);
    --primary: #6a8755;
    --primary-deep: #4c683c;
    --primary-soft: #edf3e6;
    --text-main: #283026;
    --text-soft: #6f766b;
    --shadow-shell: 0 28px 80px rgba(92, 79, 54, 0.14);
    --shadow-card: 0 18px 38px rgba(96, 95, 72, 0.11);
    --radius-shell: 34px;
    --radius-xl: 30px;
    --radius-lg: 24px;
    --radius-md: 18px;
    --radius-sm: 14px;
  }

  * {
    box-sizing: border-box;
  }

  body.home-page-v2 {
    margin: 0;
    background:
      radial-gradient(circle at 15% 16%, rgba(152, 177, 128, 0.14), transparent 18%),
      radial-gradient(circle at 90% 78%, rgba(158, 185, 132, 0.10), transparent 18%),
      linear-gradient(180deg, #eee4d6 0%, #f4eee4 100%);
    color: var(--text-main);
    font-family: "Pretendard", "Noto Sans KR", sans-serif;
  }

  a {
    color: inherit;
    text-decoration: none;
  }

  img {
    display: block;
    max-width: 100%;
  }

  .home-shell {
    width: min(1538px, calc(100vw - 20px));
    margin: 10px auto;
    overflow: hidden;
    border-radius: var(--radius-shell);
    border: 1px solid rgba(191, 179, 157, 0.38);
    background: var(--shell);
    box-shadow: var(--shadow-shell);
  }

  .home-header {
    display: grid;
    grid-template-columns: 390px 1fr 250px;
    align-items: center;
    gap: 20px;
    height: 82px;
    padding: 0 28px 0 32px;
    background: rgba(255, 255, 255, 0.94);
    border-bottom: 1px solid var(--line-soft);
  }

  .brand-wrap {
    display: flex;
    align-items: center;
    gap: 16px;
    min-width: 0;
  }

  .brand-mark {
    width: 50px;
    height: 50px;
    flex: 0 0 auto;
    border-radius: 50%;
    border: 2px solid var(--primary-deep);
    background: linear-gradient(180deg, #fff, #eef4e8);
    color: var(--primary-deep);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
  }

  .brand-copy {
    display: flex;
    align-items: baseline;
    gap: 14px;
    min-width: 0;
  }

  .brand-copy strong {
    font-size: 28px;
    font-weight: 800;
    letter-spacing: -0.04em;
    color: #284820;
    white-space: nowrap;
  }

  .brand-copy span {
    font-size: 15px;
    color: #8b8f86;
    letter-spacing: -0.02em;
    white-space: nowrap;
  }

  .top-nav {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 52px;
    margin: 0;
    padding: 0;
    list-style: none;
  }

  .top-nav a {
    font-size: 16px;
    font-weight: 700;
    letter-spacing: -0.03em;
    color: #1f221d;
  }

  .top-nav a:hover {
    color: var(--primary-deep);
  }

  .header-tools {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    gap: 12px;
  }

  .header-tools a {
    height: 46px;
    border-radius: 17px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 15px;
    font-weight: 700;
    border: 1px solid rgba(213, 203, 188, 0.92);
    background: rgba(255, 255, 255, 0.94);
    box-shadow: 0 8px 18px rgba(126, 119, 98, 0.06);
  }

  .tool-search {
    width: 46px;
    font-size: 20px;
    color: #31352e;
  }

  .tool-link {
    min-width: 82px;
    padding: 0 18px;
    color: #32362f;
  }

  .tool-accent {
    min-width: 92px;
    padding: 0 18px;
    color: #fff;
    border-color: rgba(81, 105, 61, 0.92);
    background: linear-gradient(180deg, #6e8d58, #587546);
    box-shadow: 0 14px 24px rgba(87, 117, 70, 0.24);
  }

  .panel-card {
    background: var(--panel);
    border: 1px solid var(--line-soft);
    border-radius: 24px;
    box-shadow: var(--shadow-card);
  }

  .section-head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 16px;
    margin-bottom: 18px;
  }

  .section-head h3 {
    margin: 0;
    font-size: 17px;
    font-weight: 800;
    letter-spacing: -0.03em;
    color: #324f2a;
  }

  .section-head a {
    font-size: 13px;
    font-weight: 600;
    color: #8c9286;
  }
</style>

<header class="home-header">
  <a href="${ctp}/" class="brand-wrap">
    <span class="brand-mark"><i class="bi bi-flower1"></i></span>
    <span class="brand-copy">
      <strong>청주카페</strong>
      <span>청주의 모든 카페를 한눈에</span>
    </span>
  </a>

  <jsp:include page="/WEB-INF/views/include/nav.jsp" />

  <div class="header-tools">
	<c:choose>
	  <c:when test="${empty sMid}">
	    <a href="${ctp}/member/memberLogin" class="tool-link">로그인</a>
	    <a href="${ctp}/member/memberJoin" class="tool-link">회원가입</a>
	  </c:when>
	  <c:otherwise>
	    <a href="${ctp}/member/memberLogout" class="tool-link">로그아웃</a>
	    <a href="${ctp}/member/memberMain" class="tool-link">${sNickName}</a>
	  </c:otherwise>
	</c:choose>

  </div>
</header>
