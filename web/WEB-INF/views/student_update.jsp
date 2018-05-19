<%-- 
    Document   : student_update
    Created on : 14-May-2018, 8:42:08 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/views/head.jsp" %>
        <title>MCIT - Update Student Form</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/nav.jsp" %>
        <div class="container">
            <div class="mt-5 d-flex align-items-start flex-column">
                <h2 class="align-self-center">Update Student</h2>

                <c:url var="updateAction" value="/student/update" ></c:url>

                <form:form action="${updateAction}" modelAttribute="student">
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
