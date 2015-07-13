<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html:html>
    <head> <c:set var="ctx" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="${ctx}/webjars/bootstrap/3.3.1/css/bootstrap.min.css"  />
        <link type="text/css" rel="stylesheet" href="${ctx}/css/common.css"  />
        <script type="text/javascript" src="${ctx}/webjars/jquery/2.1.1/jquery.js" ></script>
        <title>${param.title}</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${ctx}">Struts sample</a>
                </div>
                
                <c:if test="${user ne null}">
                <div class="navbar-form navbar-right">
                    <html:link action="/logout" styleClass="btn btn-default">ログアウト</html:link>
                </div>
                </c:if>
            </div>
        </nav>
        
        <div class="container" id="main_content">
            <html:errors/>
           ${param.content}
        </div>
        
        <footer class="footer">
           <div class="container">
                <p class="text-muted text-right">2015</p>
           </div>
        </footer>
    </body>
</html:html>
