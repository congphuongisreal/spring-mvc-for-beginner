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
    <title>NPC <spring:message code="product"/></title>
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
                            <div><spring:message code="product"/>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="body-tabs body-tabs-layout tabs-animated body-tabs-animated nav">
                    <li class="nav-item">
                        <a role="tab" class="nav-link active" id="tab-0" data-toggle="tab" href="#tab-content-0">
                            <span><spring:message code="product"/></span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a role="tab" class="nav-link" id="tab-2" data-toggle="tab" href="#tab-content-2">
                            <span><spring:message code="typeProduct"/></span>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header"><spring:message code="tableProduct"/>
                                        <div class="btn-actions-pane-right">
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                        data-target=".modal-create-product">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover table-striped">
                                            <thead>
                                            <tr>
                                                <th class="text-center"><spring:message
                                                        code="code"/></th>
                                                <th><spring:message
                                                        code="nameProduct"/></th>
                                                <th class="text-center"><spring:message
                                                        code="unit"/></th>
                                                <th class="text-center"><spring:message
                                                        code="size"/></th>
                                                <th class="text-center"><spring:message
                                                        code="color"/></th>
                                                <th class="text-center"><spring:message
                                                        code="number"/></th>
                                                <th class="text-center"><spring:message
                                                        code="entryPrice"/></th>
                                                <th class="text-center"><spring:message code="status"/></th>
                                                <th class="text-center"><spring:message code="function"/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${products}" var="product">
                                                <tr>
                                                    <th class="text-center"
                                                        scope="row">${product.productId}</th>
                                                    <td class="">
                                                        <div class="widget-content p-0">
                                                            <div class="widget-content-wrapper">
                                                                <div class="widget-content-left mr-3">
                                                                    <div class="widget-content-left">
                                                                        <img width="40" class="rounded-circle"
                                                                             src="<c:url value ="resource/assets/images/avatars/${product.productId}.jpg"/>"
                                                                    </div>
                                                                </div>
                                                                <div class="widget-content-left flex2">
                                                                    <div class="widget-heading"> ${product.name}</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">${product.unit}</td>
                                                    <td class="text-center">${product.size}</td>
                                                    <td class="text-center">${product.color}</td>
                                                    <td class="text-center">${product.number}</td>
                                                    <td class="text-center">${product.entryPrice}</td>
                                                    <c:if test="${product.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-success"><spring:message
                                                                    code="stock"/></div>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${not product.enable}">
                                                        <td class="text-center">
                                                            <div class="badge badge-warning">
                                                                <spring:message code="outStock"/>
                                                            </div>
                                                        </td>
                                                    </c:if>
                                                    <td class="text-center">
                                                        <a href="product/info/${product.productId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-info">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="product/getId/${product.productId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                        <a href="product/delete/${product.productId}"
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
                                    <div class="card-header"><spring:message code="tableTypeProduct"/>
                                        <div class="btn-actions-pane-right">
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                        data-target=".modal-create-type">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                    <i class="fas fa-plus"></i>
                                                </span><spring:message code="addition"/>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="mb-0 table table-hover  table-striped">
                                            <thead>
                                            <tr>
                                                <th class="text-center"><spring:message
                                                        code="code"/></th>
                                                <th class="text-center"><spring:message
                                                        code="nameType"/></th>
                                                <th class="text-center"><spring:message code="function"/></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${types}" var="type">
                                                <tr>
                                                    <th class="text-center"
                                                        scope="row">${type.typeId}</th>
                                                    <td class="text-center">${type.name}</td>
                                                    <td class="text-center">
                                                        <a href="type/info/${type.typeId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-info">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-info-circle"></i>
                                                                </span>
                                                        </a>
                                                        <a href="type/update/${type.typeId}"
                                                           type="submit"
                                                           class="mb-2 mr-2 btn-transition btn btn-outline-primary">
                                                            <span class="btn-icon-wrapper pr-2 pl-2 opacity-7">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                        </a>
                                                        <a href="type/delete/${type.typeId}"
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
<div class="modal fade modal-create-product" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <c:url value="/product/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="productObj" enctype="multipart/form-data">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="product"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-5">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="name"><spring:message
                                            code="nameProduct"/></label>
                                    <form:input type="text"
                                                placeholder="Name Product..." class="form-control"
                                                path="name"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="unit"><spring:message
                                            code="unit"/></label>
                                    <form:input type="text"
                                                placeholder="Unit..." class="form-control"
                                                path="unit"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="number"><spring:message
                                            code="number"/></label>
                                    <form:input type="number"
                                                placeholder="Number..." class="form-control"
                                                path="number"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="size"><spring:message
                                            code="size"/></label>
                                    <form:input type="text"
                                                placeholder="Size..." class="form-control"
                                                path="size"></form:input>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="type.typeId"><spring:message
                                            code="typeProduct"/></label>
                                    <form:input type="text"
                                                placeholder="Type..." class="form-control"
                                                path="type.typeId"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="name"><spring:message
                                            code="color"/></label>
                                    <form:input type="text"
                                                placeholder="Color..." class="form-control"
                                                path="color"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="name"><spring:message
                                            code="price"/></label>
                                    <form:input type="number"
                                                placeholder="Price..." class="form-control"
                                                path="price"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="name"><spring:message
                                            code="entryPrice"/></label>
                                    <form:input type="number"
                                                placeholder="Entry Price..." class="form-control"
                                                path="entryPrice"></form:input>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="productImage"><spring:message
                                            code="productImage"/></label>
                                    <form:input type="file" path="productImage"></form:input>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="position-relative form-group">
                                    <label class="mr-sm-2" for="name"><spring:message
                                            code="note"/></label>
                                    <form:textarea type="text"
                                                   placeholder="Note..." class="form-control"
                                                   path="note"></form:textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        <spring:message code="close"/>
                    </button>
                    <button type="submit" class="btn btn-primary"><spring:message code="addition"/></button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade modal-create-type" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <c:url value="/type/add" var="url"></c:url>
            <form:form method="POST" action="${url}" modelAttribute="typeObj">
                <div class="modal-header">
                    <h5 class="modal-title"><spring:message code="typeProduct"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-lg-12">
                                <div class="form-inline">
                                    <div class="mb-2 mr-sm-2 mb-sm-0 position-relative form-group">
                                        <label class="mr-sm-2" for="name"><spring:message
                                                code="nameType"/></label>
                                        <form:input type="text"
                                                    placeholder="Name Type..." class="form-control"
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