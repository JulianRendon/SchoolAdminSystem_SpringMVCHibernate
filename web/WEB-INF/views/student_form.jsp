<%-- 
    Document   : student_form
    Created on : 30-Apr-2018, 5:39:20 PM
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
        <title>Add Student Form</title>
    </head>
    <body>
        <h1>Add Student</h1>
    <c:url var="addAction" value="/student/add" ></c:url>

    <form:form action="${addAction}" commandName="student">
        <table>
            <tr>
                <td>
            <form:label path="firstName">
                <spring:message text="First Name"/>
            </form:label>
            </td>
            <td>
            <form:input path="firstName" />
            </td> 
            </tr>
            <tr>
                <td>
            <form:label path="lastName">
                <spring:message text="Last Name"/>
            </form:label>
            </td>
            <td>
            <form:input path="lastName" />
            </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="<spring:message text="Add Student"/>" />
                </td>
            </tr>
        </table>	
    </form:form>
</body>
</html>
