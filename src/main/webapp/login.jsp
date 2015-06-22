<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>login</h1>
        <html:errors/>
        ${error}
        <html:form action="/login">
            <label>ID:<html:text property="id"  /></label>
            <label>password:<html:password property="password" /></label>
            <html:submit value="Login"/>
        </html:form>
    </body>
</html:html>
