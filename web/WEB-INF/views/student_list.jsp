<%-- 
    Document   : student_list
    Created on : 30-Apr-2018, 5:39:55 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Students</title>
    </head>
    <body>
        <h1>List Students</h1>
        <c:if test="${!empty listStudents}">
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Command</th>
                </tr>
                <c:forEach items="${listStudents}" var="student">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.firstName}</td>
                        <td>${student.lastName}</td>
                        <td><a href="<c:url value='/remove/${student.id}' />" >Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
            <br>
        </c:if>
        <a href="<c:url value='/student_form' />" >Add Student Form</a>
    </body>
</html>