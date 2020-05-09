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
    <title>NPC <spring:message code="department"/></title>
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
                            <div><spring:message code="department"/>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="body-tabs body-tabs-layout tabs-animated body-tabs-animated nav">
                    <li class="nav-item">
                        <a role="tab" class="nav-link active" id="tab-0" data-toggle="tab" href="#tab-content-0">
                            <span><spring:message code="department"/></span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a role="tab" class="nav-link" id="tab-2" data-toggle="tab" href="#tab-content-2">
                            <span><spring:message code="job"/></span>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header"><spring:message code="tableDepartment"/>
                                        <div class="btn-actions-pane-right">
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                        data-target=".modal-create-department">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover">
                                            <thead>
                                            <tr>
                                                <th class="text-center"><spring:message
                                                        code="code"/></th>
                                                <th class="text-center"><spring:message
                                                        code="nameDepartment"/></th>
                                                <th class="text-center"><spring:message code="status"/></th>
                                                <th class="text-center"><spring:message code="function"/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${departments}" var="department">
                                                <tr>
                                                    <th class="text-center"
                                                        scope="row">${department.departmentId}</th>
                                                    <td class="text-center">${department.name}</td>
                                                    <c:if test="${department.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="active"/></div>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${not department.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-warning">
                                                                <spring:message code="inactive"/>
                                                            </div>
                                                        </td>
                                                    </c:if>
                                                    <td class="text-center">
                                                        <a href="department/info/${department.departmentId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="department/getId/${department.departmentId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                        <a href="department/delete/${department.departmentId}"
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
                    <div class="tab-pane tabs-animation fade" id="tab-content-2" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header"><spring:message code="tableJob"/>
                                        <div class="btn-actions-pane-right">
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                        data-target=".modal-create-job">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover">
                                            <thead>
                                            <tr>
                                                <th class="text-center"><spring:message
                                                        code="code"/></th>
                                                <th class="text-center"><spring:message
                                                        code="nameJob"/></th>
                                                <th class="text-center"><spring:message code="status"/></th>
                                                <th class="text-center"><spring:message code="function"/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${jobs}" var="job">
                                                <tr>
                                                    <th class="text-center"
                                                        scope="row">${job.jobId}</th>
                                                    <td class="text-center">${job.name}</td>
                                                    <c:if test="${job.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="active"/></div>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${not job.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-warning"><spring:message
                                                                    code="inactive"/></div>
                                                        </td>
                                                    </c:if>
                                                    <td class="text-center">
                                                        <a href="job/info/${job.jobId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="job/getId/${job.jobId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                        <a href="job/delete/${job.jobId}"
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
<script type="text/javascript" src="<c:url value="/resource/assets/scripts/main.js"/>"></script>
</body>
</html>

<div class="modal fade modal-create-department" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <c:url value="/department/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="departmentObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="department"/></h5>
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
                                                code="nameDepartment"/></label>
                                        <form:input type="text"
                                                    placeholder="Name Department..." class="form-control"
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

<div class="modal fade modal-create-job" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <c:url value="/job/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="jobObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="job"/></h5>
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
                                                code="nameJob"/></label>
                                        <form:input type="text"
                                                    placeholder="Name Job..." class="form-control"
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