<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" scope="request" />
<c:set var="currentPath" value="${pageContext.request.servletPath}" />

<style>
  .admin-sidebar {
    position: sticky;
    top: 24px;
    display: grid;
    gap: 18px;
  }

  .admin-sidebar-card {
    padding: 22px 20px;
    border-radius: 24px;
    background: rgba(255, 253, 248, 0.92);
    border: 1px solid rgba(97, 114, 84, 0.12);
    box-shadow: var(--shadow-card);
  }

  .admin-sidebar-title {
    margin: 0 0 14px;
    font-family: "Cormorant Garamond", serif;
    font-size: 30px;
    line-height: 1.1;
    color: var(--text-main);
  }

  .admin-sidebar-copy {
    margin: 0;
    color: var(--text-soft);
    font-size: 14px;
    line-height: 1.8;
  }

  .admin-nav-list,
  .admin-focus-list {
    margin: 0;
    padding: 0;
    list-style: none;
    display: grid;
    gap: 10px;
  }

  .admin-nav-link {
    display: block;
    padding: 14px 16px;
    border-radius: 18px;
    border: 1px solid rgba(97, 114, 84, 0.12);
    background: rgba(255, 255, 255, 0.84);
    color: var(--text-main);
    font-size: 14px;
    font-weight: 700;
    transition: transform 0.2s ease, border-color 0.2s ease, background 0.2s ease;
  }

  .admin-nav-link:hover {
    transform: translateX(2px);
    border-color: rgba(97, 114, 84, 0.24);
    background: rgba(233, 240, 228, 0.92);
  }

  .admin-nav-link.is-active {
    border-color: rgba(97, 114, 84, 0.26);
    background: linear-gradient(135deg, rgba(233, 240, 228, 0.96), rgba(255, 255, 255, 0.94));
    box-shadow: inset 0 0 0 1px rgba(97, 114, 84, 0.06);
  }

  .admin-nav-link small {
    display: block;
    margin-top: 6px;
    color: var(--text-soft);
    font-size: 12px;
    font-weight: 500;
  }

  .admin-focus-list li {
    padding: 14px 16px;
    border-radius: 18px;
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.9), rgba(233, 240, 228, 0.78));
    border: 1px solid rgba(97, 114, 84, 0.12);
    color: var(--text-soft);
    font-size: 13px;
    line-height: 1.7;
  }

  .admin-focus-list strong {
    display: block;
    margin-bottom: 4px;
    color: var(--text-main);
    font-size: 14px;
  }
</style>

<div class="admin-sidebar">
  <section class="admin-sidebar-card">
    <h2 class="admin-sidebar-title">관리자 메뉴</h2>
    <p class="admin-sidebar-copy">실제 운영 흐름에 맞춰 자주 쓰는 메뉴부터 빠르게 진입할 수 있도록 정리한 사이드바입니다.</p>
  </section>

  <section class="admin-sidebar-card">
    <ul class="admin-nav-list">
      <li>
        <a href="${ctp}/admin/adminMain" class="admin-nav-link${currentPath eq '/admin/adminMain' ? ' is-active' : ''}">
          대시보드
          <small>운영 현황 한눈에 보기</small>
        </a>
      </li>
      <li>
        <a href="${ctp}/admin/memberManage" class="admin-nav-link${currentPath eq '/admin/memberManage' ? ' is-active' : ''}">
          회원관리
          <small>일반회원과 대표회원 관리</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          대표회원관리
          <small>대표 계정과 카페 등록 상태 확인</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          카페승인관리
          <small>승인, 반려, 보완 요청 처리</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          카페전체관리
          <small>등록 카페 전체 운영 관리</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          커뮤니티관리
          <small>공지, 게시글, 신고 처리</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          메인화면관리
          <small>추천 카페와 메인 노출 수정</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          통계관리
          <small>가입, 등록, 인기 지표 확인</small>
        </a>
      </li>
      <li>
        <a href="#" class="admin-nav-link">
          관리자로그
          <small>관리 이력과 변경 기록</small>
        </a>
      </li>
    </ul>
  </section>

  <section class="admin-sidebar-card">
    <h3 class="admin-sidebar-title" style="font-size:24px; margin-bottom:12px;">우선 작업</h3>
    <ul class="admin-focus-list">
      <li>
        <strong>1. 회원관리</strong>
        회원 조회와 구분 필터부터 만들면 관리자 흐름이 가장 빨리 살아납니다.
      </li>
      <li>
        <strong>2. 카페승인관리</strong>
        대표 회원 등록 흐름과 바로 연결되는 핵심 메뉴입니다.
      </li>
      <li>
        <strong>3. 커뮤니티관리</strong>
        공지와 게시글 상태를 다룰 수 있으면 운영 화면 완성도가 올라갑니다.
      </li>
    </ul>
  </section>
</div>
