<%-- 
    Document   : course_form
    Created on : 18-May-2018, 3:51:57 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/views/head.jsp" %>
        <title>MCIT - Add Course</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/nav.jsp" %>
        <div class="container">
            <div class="mt-5 d-flex align-items-start flex-column">
                <h2 class="align-self-center">Add Course</h2>
                <c:url var="addAction" value="/course/add" ></c:url>

                <form:form action="${addAction}" commandName="course">
                    <table class="align-self-center">
                        <tr>
                            <td>
                                <form:label path="courseName">
                                    <spring:message text="Course Name"/>
                                </form:label>
                            </td>
                            <td>
                                <form:input path="courseName" />
                            </td> 
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="<spring:message text="Submit"/>" />
                            </td>
                        </tr>
                    </table>
                </form:form>
                <a class="mt-5" href="<c:url value='/course_list' />" >List of courses</a>
            </div>
        </div>
        <%@include file="/WEB-INF/views/libs.jsp" %>
    </body>
</html>
