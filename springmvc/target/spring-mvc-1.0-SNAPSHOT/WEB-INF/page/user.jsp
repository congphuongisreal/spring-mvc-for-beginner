<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>NPC <spring:message code="user"/></title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"/>
    <link rel="stylesheet" href="<c:url value="/resource/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resource/css/mycss.css"/>"/>
</head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <%@ include file="menu.jsp" %>
    <div class="app-main">
        <%@ include file="navbar.jsp" %>
        <div class="app-main__outer">
            <div class="app-main__inner">
                <div class="app-page-title">
                    <div class="page-title-wrapper">
                        <div class="page-title-heading">
                            <div class="page-title-icon">
                                <i class="fas fa-users icon-gradient bg-plum-plate"></i>
                            </div>
                            <div><spring:message code="user"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-card mb-3 card">
                    <div class="no-gutters row">
                        <div class="col-md-4">
                            <div class="widget-content">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-right ml-0 mr-3">
                                        <div class="widget-numbers text-success">1896</div>
                                    </div>
                                    <div class="widget-content-left">
                                        <div class="widget-heading">Total Orders</div>
                                        <div class="widget-subheading">Last year expenses</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="widget-content">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-right ml-0 mr-3">
                                        <div class="widget-numbers text-warning">$ 14M</div>
                                    </div>
                                    <div class="widget-content-left">
                                        <div class="widget-heading">Products Sold</div>
                                        <div class="widget-subheading">Total revenue streams</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="widget-content">
                                <div class="widget-content-wrapper">
                                    <div class="widget-content-right ml-0 mr-3">
                                        <div class="widget-numbers text-danger">45.9%</div>
                                    </div>
                                    <div class="widget-content-left">
                                        <div class="widget-heading">Followers</div>
                                        <div class="widget-subheading">People Interested</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="divider mt-0" style="margin-bottom: 30px;"></div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="main-card mb-3 card">
                            <div class="card-body">
                                <h5 class="card-title"><spring:message code="tableUser"/></h5>
                                <div class="row">
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover">
                                            <thead>
                                            <tr>
                                                <th class="text-center"><spring:message code="code"/></th>
                                                <th class="text-center"><spring:message code="userName"/></th>
                                                <th class="text-center"><spring:message code="name"/></th>
                                                <th class="text-center"><spring:message code="email"/></th>
                                                <th class="text-center"><spring:message code="status"/></th>
                                                <th class="text-center"><spring:message code="function"/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${users}" var="user">
                                                <tr>
                                                    <th class="text-center" scope="row">${user.userId}</th>
                                                    <td class="text-center">${user.nameUser}</td>
                                                    <td class="text-center">${user.name}</td>
                                                    <td class="text-center">${user.email}</td>
                                                    <td class="text-center">${user.dob}</td>
                                                    <c:if test="${user.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="active"/></div>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${not user.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="inactive"/></div>
                                                        </td>
                                                    </c:if>
                                                    <td class="text-center">
                                                        <a href="user/info/${user.userId}" type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="user/update/${user.userId}" type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pl-2 pr-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resource/assets/scripts/main.js"/>"></script>
</body>
</html>
