<%-- 
    Document   : course_update
    Created on : 18-May-2018, 3:52:44 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/views/head.jsp" %>
        <title>MCIT - Update Course Form</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/nav.jsp" %>
        <div class="container">
            <div class="mt-5 d-flex align-items-start flex-column">
                <h2 class="align-self-center">Update Course</h2>

                <c:url var="updateAction" value="/course/update" ></c:url>

                <form:form action="${updateAction}" modelAttribute="course">
                    <table>
                        <tr>
                            <td>
                                <form:label path="id">
                                    <spring:message text="ID"/>
                                </form:label>
                            </td>
                            <td>
                                <form:input path="id" disabled="true" readonly="true" />
                                <form:hidden path="id" />
                            </td> 
                        </tr>
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
            </div>
        </div>
        <%@include file="/WEB-INF/views/libs.jsp" %>
    </body>
</html>
