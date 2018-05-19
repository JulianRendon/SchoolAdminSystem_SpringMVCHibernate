<%-- 
    Document   : course_list
    Created on : 18-May-2018, 3:52:20 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/views/head.jsp" %>
        <title>MCIT - All Courses</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/nav.jsp" %>
        <div class="container">
            <div class="mt-5 d-flex align-items-start flex-column">
                <h2 class="align-self-center">List of courses</h2>

                <c:if test="${!empty listCourses}">
                    <table class="my-table table table-responsive table-hover">
                        <thead>
                            <tr class="text-white">
                                <th>ID</th>
                                <th>Course Name</th>
                                <th class="text-center" colspan="2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listCourses}" var="course">
                                <tr>
                                    <th scope="row">${course.id}</th>
                                    <td>${course.courseName}</td>

                                    <td class="text-center"><a href="<c:url value='/course/update/${course.id}' />" title="update"><i class="fa fa-pencil-alt fa-fw" aria-hidden="true"></i></a></td>
                                    <td class="text-center"><a href="<c:url value='/course/remove/${course.id}' />" title="delete"><i class="fa fa-trash-alt fa-fw" aria-hidden="true"></i></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br>
                </c:if>
                <a href="<c:url value='/course_form' />" >Add Course Form</a>
            </div>
        </div>
        <%@include file="/WEB-INF/views/libs.jsp" %>
    </body>
</html>
