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
    <title>NPC <spring:message code="role"/></title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"/>
    <link rel="stylesheet" href="<c:url value="/resource/main.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resource/css/mycss.css"/>"/>
</head>
<body>
<div class="app-container app-theme-white body-tabs-line fixed-sidebar fixed-header">
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
                            <div><spring:message code="role"/>
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
                <ul class="body-tabs body-tabs-layout tabs-animated body-tabs-animated nav">
                    <li class="nav-item">
                        <a role="tab" class="nav-link active" id="tab-0" data-toggle="tab" href="#tab-content-0">
                            <span><spring:message code="role"/></span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a role="tab" class="nav-link" id="tab-2" data-toggle="tab" href="#tab-content-2">
                            <span><spring:message code="roleDetail"/></span>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body">
                                        <h5 class="card-title"><spring:message code="tableRole"/></h5>
                                        <div class="row">
                                            <div class="col-md-9">
                                                <div class="position-relative form-group">
                                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                                            data-target=".modal-create-role">
                                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                                    <i class="fas fa-plus"></i>
                                                            </span><spring:message code="addition"/>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="mb-0 table table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center"><spring:message
                                                                code="code"/></th>
                                                        <th class="text-center"><spring:message
                                                                code="nameRole"/></th>
                                                        <th class="text-center"><spring:message code="status"/></th>
                                                        <th class="text-center"><spring:message code="function"/></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${roles}" var="role">
                                                        <tr>
                                                            <th class="text-center"
                                                                scope="row">${role.roleId}</th>
                                                            <td class="text-center">${role.name}</td>
                                                            <c:if test="${role.enable}">
                                                                <td class="text-center">
                                                                    <div class="badge badge-success"><spring:message
                                                                            code="active"/></div>
                                                                </td>
                                                            </c:if>
                                                            <c:if test="${not role.enable}">
                                                                <td class="text-center">
                                                                    <div class="badge badge-warning">
                                                                        <spring:message code="inactive"/>
                                                                    </div>
                                                                </td>
                                                            </c:if>
                                                            <td class="text-center">
                                                                <a href="role/info/${role.roleId}"
                                                                   type="submit"
                                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                                </a>
                                                                <a href="role/update/${role.roleId}"
                                                                   type="submit"
                                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                </a>
                                                                <a href="role/delete/${role.roleId}"
                                                                   type="submit"
                                                                   class="mb-2 mr-2 btn-transition btn btn-outline-danger">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-trash"></i>
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
                    <div class="tab-pane tabs-animation fade" id="tab-content-2" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-body">
                                        <h5 class="card-title"><spring:message code="tableRoleDetail"/></h5>
                                        <div class="row">
                                            <div class="col-md-9">
                                                <div class="position-relative form-group">
                                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                                            data-target=".modal-create-detail">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="mb-0 table table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center"><spring:message
                                                                code="code"/></th>
                                                        <th class="text-center"><spring:message
                                                                code="nameRoleDetail"/></th>
                                                        <th class="text-center"><spring:message
                                                                code="action"/></th>
                                                        <th class="text-center"><spring:message code="status"/></th>
                                                        <th class="text-center"><spring:message code="function"/></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${roleDetails}" var="roleDetail">
                                                        <tr>
                                                            <th class="text-center"
                                                                scope="row">${roleDetail.roleDetailId}</th>
                                                            <td class="text-center">${roleDetail.name}</td>
                                                            <td class="text-center">${roleDetail.action}</td>
                                                            <c:if test="${roleDetail.enable}">
                                                                <td class="text-center">
                                                                    <div class="badge badge-success"><spring:message
                                                                            code="active"/></div>
                                                                </td>
                                                            </c:if>
                                                            <c:if test="${not roleDetail.enable}">
                                                                <td class="text-center">
                                                                    <div class="badge badge-warning"><spring:message
                                                                            code="inactive"/></div>
                                                                </td>
                                                            </c:if>
                                                            <td class="text-center">
                                                                <a href="roleDetail/info/${roleDetail.roleDetailId}"
                                                                   type="submit"
                                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                                </a>
                                                                <a href="roleDetail/update/${roleDetail.roleDetailId}"
                                                                   type="submit"
                                                                   class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                </a>
                                                                <a href="roleDetail/delete/${roleDetail.roleDetailId}"
                                                                   type="submit"
                                                                   class="mb-2 mr-2 btn-transition btn btn-outline-danger">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-trash"></i>
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
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resource/assets/scripts/main.js"/>"></script>
</body>
</html>

<div class="modal fade modal-create-role" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <c:url value="/role/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="roleObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="role"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-md-7">
                                <div class="form-inline">
                                    <div class="mb-2 mr-sm-2 mb-sm-0 position-relative form-group">
                                        <label class="mr-sm-2" for="name"><spring:message
                                                code="nameRole"/></label>
                                        <form:input type="text"
                                                    placeholder="Name Role..." class="form-control"
                                                    path="name"></form:input>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        <spring:message code="close"/></button>
                    <button type="submit" class="btn btn-primary"><spring:message code="addition"/></button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade modal-create-detail" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <c:url value="/detail/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="roleDetailObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="roleDetail"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="name"><spring:message
                                            code="nameRoleDetail"/></label>
                                    <form:input type="text"
                                                placeholder="Name Role Detail..." class="form-control"
                                                path="name"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative form-group">
                                    <label for="name"><spring:message
                                            code="action"/></label>
                                    <form:input type="text"
                                                placeholder="Action..." class="form-control"
                                                path="action"></form:input>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        <spring:message code="close"/></button>
                    <button type="submit" class="btn btn-primary"><spring:message code="addition"/></button>
                </div>
            </form:form>
        </div>
    </div>
</div>