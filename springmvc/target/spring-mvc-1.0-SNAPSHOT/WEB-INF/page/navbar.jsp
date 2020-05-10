<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<div class="app-sidebar sidebar-shadow bg-dark sidebar-text-light">
    <div class="app-header__logo">
        <div class="logo-src"></div>
        <div class="header__pane ml-auto">
            <div>
                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic"
                        data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                </button>
            </div>
        </div>
    </div>
    <div class="app-header__mobile-menu">
        <div>
            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
            </button>
        </div>
    </div>
    <div class="app-header__menu">
            <span>
                <button type="button"
                        class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                    <span class="btn-icon-wrapper">
                        <i class="fa fa-ellipsis-v fa-w-6"></i>
                    </span>
                </button>
            </span>
    </div>
    <div class="scrollbar-sidebar">
        <div class="app-sidebar__inner">
            <ul class="vertical-nav-menu">
                <li class="app-sidebar__heading">Core</li>
                <li>
                    <a href="<c:url value="/home"/>" ${active}>
                        <i class="metismenu-icon fas fa-tachometer-alt"></i>
                        <spring:message code="dashboard"/>
                    </a>
                </li>
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <li>
                        <a href="#">
                            <i class="metismenu-icon fas fa-cubes"></i>
                            <spring:message code="product"/>
                            <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                        </a>
                        <ul>
                            <li>
                                <a href="<c:url value="/product" />" ${active_product}>
                                    <i class="metismenu-icon"></i><spring:message code="product"/>
                                </a>
                            </li>
                            <li>v
                                <a href="<c:url value="/invoice" />" ${active_invoice}>
                                    <i class="metismenu-icon fas fa-shopcart"></i>
                                    <spring:message code="invoice"/>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<c:url value="/customer" /> " ${active_customer}>
                            <i class="metismenu-icon fas fa-users">
                            </i><spring:message code="customer"/>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/provider" /> "${active_provider}>
                            <i class="metismenu-icon fas fa-handshake">
                            </i><spring:message code="provider"/>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="metismenu-icon fas fa-user-tie"></i>
                            <spring:message code="employee"/>
                            <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                        </a>
                        <ul>
                            <li>
                                <a href="<c:url value="/department" /> "${active_department}>
                                    <i class="metismenu-icon">
                                    </i><spring:message code="department"/>
                                </a>
                            </li>
                            <li>
                                <a href="<c:url value="/employee" />" ${active_employee}>
                                    <i class="metismenu-icon">
                                    </i><spring:message code="employee"/>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<c:url value="/error" />" ${active_report}>
                            <i class="metismenu-icon fas fa-chart-bar"></i>
                            <spring:message code="report"/>
                        </a>
                    </li>
                    <li class="app-sidebar__heading"><spring:message code="administration"/></li>
                    <li>
                        <a href="<c:url value="/user" />" ${active_user}>
                            <i class="metismenu-icon fas fa-user-alt"></i><spring:message code="user"/>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/error" /> ${active_settings}">
                            <i class="metismenu-icon fas fa-cogs">
                            </i><spring:message code="settings"/>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/error" /> "${active_activity}>
                            <i class="metismenu-icon fas fa-images">
                            </i><spring:message code="activity"/>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/logout"/>">
                        <i class="metismenu-icon fas fa-sign-out-alt">
                        </i><spring:message code="logout"/>
                        </a>
                    </li>
                </security:authorize>
            </ul>
        </div>
    </div>
</div>
