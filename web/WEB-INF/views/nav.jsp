<%-- 
    Document   : nav
    Created on : 15-May-2018, 1:28:54 PM
    Author     : Julian
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<nav class="navbar navbar-expand-lg sticky-top navbar-light bg-white">
    <a class="navbar-brand" href="http://www.montrealcollege.ca" target="_blank">
        <img src="<c:url value="/resources/images/logo_mc.jpg" />" class="d-inline-block align-top img-fluid" alt="school-logo">
        <!--Montreal College of Information Technology-->
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="<c:url value='/'></c:url>">Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="<c:url value='/student_form'></c:url>">Students</a>
            <a class="nav-item nav-link" href="<c:url value='/course_form'></c:url>">Courses</a>
            <a class="nav-item nav-link" href="#">Marks</a>
        </div>
    </div>
</nav>
