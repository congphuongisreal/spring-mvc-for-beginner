<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="string" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>NPC Login</title>
    <link rel="stylesheet" href="<c:url value="/resource/css/styles.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resource/css/mycss.css"/>"/>
</head>
<body class="bg-sliver">
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header">
                                <h3 class="text-center font-weight-light my-4">
                                    <spring:message code="login"/>
                                </h3>
                                <c:if test="${not empty invalid}">
                                    <h6 style="color:red;text-align: center;">${invalid}</h6>
                                </c:if>
                            </div>
                            <div class="card-body">
                                <form name="loginForm"
                                      action="<c:url value="/j_spring_security_check"/>" method="post">
                                    <div class="form-group">
                                        <label class="small mb-1" for="email">Email</label>
                                        <input class="form-control py-4" id="email" type="email"
                                               name="j_username" placeholder="Email..."/>
                                    </div>
                                    <div class="form-group">
                                        <label class="small mb-1" for="password"><spring:message code="password"/></label>
                                        <input class="form-control py-4" id="password" type="password"
                                               name="j_password" placeholder="<spring:message code="password"/>..."/>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox control-left">
                                            <input class="custom-control-input" id="rememberPasswordCheck"
                                                   type="checkbox"/>
                                            <label class="custom-control-label" for="rememberPasswordCheck">
                                                <spring:message code="rememberPassword"/>
                                            </label>
                                        </div>
                                        <ul class="navbar-nav text-center">
                                            <li class="nav-item dropdown">
                                                <a class="change-languages dropdown-toggle" href="javascript:;"
                                                   id="navbar-primary_dropdown_1" role="button" data-toggle="dropdown"
                                                   aria-haspopup="true" aria-expanded="false"><spring:message code="languages"/></a>
                                                <div class="dropdown-menu dropdown-menu-right"
                                                     aria-labelledby="navbar-primary_dropdown_1">
                                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/login?lang=vi"><spring:message code="vietNam"/></a>
                                                    <div class="dropdown-item" class="dropdown-divider"></div>
                                                    <a class="dropdown-item"
                                                       href="${pageContext.request.contextPath}/login?lang=en"><spring:message code="english"/></a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary btn-center"><spring:message code="login"/></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid">
            <div class="text-center">
                <small class="text-uppercase text-muted font-weight-bold">@Coppyright Design by NPC</small>
            </div>
        </div>
    </footer>
</div>
<script src="<c:url value="resource/scripts/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="resource/scripts/jquery.min.js"/> " type="text/javascript"></script>
<script src="<c:url value="resource/scripts/bootstrap.min.js" />" type="text/javascript"></script>
</body>
</html>