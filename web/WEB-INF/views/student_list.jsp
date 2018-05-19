<%-- 
    Document   : student_list
    Created on : 30-Apr-2018, 5:39:55 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/views/head.jsp" %>
        <title>MCIT - All Students</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/nav.jsp" %>
        <div class="container">
            <div class="mt-5 d-flex align-items-start flex-column">
                <h2 class="align-self-center">List of students</h2>

                <c:if test="${!empty listStudents}">
                    <table class="my-table table table-responsive table-hover">
                        <thead>
                            <tr class="text-white">
                                <th>ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th class="text-center" colspan="2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listStudents}" var="student">
                                <tr>
                                    <th scope="row">${student.id}</th>
                                    <td>${student.firstName}</td>
                                    <td>${student.lastName}</td>
                                    <td class="text-center"><a href="<c:url value='/student/update/${student.id}' />" title="update"><i class="fa fa-pencil-alt fa-fw" aria-hidden="true"></i></a></td>
                                    <td class="text-center"><a href="<c:url value='/student/remove/${student.id}' />" title="delete"><i class="fa fa-trash-alt fa-fw" aria-hidden="true"></i></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br>
                </c:if>
                <a href="<c:url value='/student_form' />" >Add Student Form</a>
            </div>
        </div>
        <%@include file="/WEB-INF/views/libs.jsp" %>
    </body>
</html>