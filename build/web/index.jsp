<%-- 
    Document   : index
    Created on : 18-Oct-2023, 22:24:39
    Author     : ASUS
--%>
<%@page import="model.DummyTBL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Integer" %>>
<jsp:useBean id="list" scope="session" class="java.util.ArrayList"/>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix = "my" uri = "/WEB-INF/tlds/mytag" %> 
<%
    int start = (int)request.getAttribute("start");
    int end = (int)request.getAttribute("end");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
    <table border="1" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="dum" items="${list}" begin="${start}" end="${end}">
                 <tr>
                    <td><c:out value="${dum.id}"/> </td>
                    <td><c:out value="${dum.name}"/> </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <my:Pager pageIndex="992" pageSize="4" />
    </body>
</html>
