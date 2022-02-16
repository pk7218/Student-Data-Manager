<%@page import="java.net.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<body>
<nav class="navbar navbar-expand-lg  navbar-dark bg-primary ">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Dashboard</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="StudentData.jsp">Show all Student</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" href="AddStudent.jsp">Add New Student</a>
        </li>
       
      </ul>
      <form class="d-flex" action="SessionDestroy" method="post">
        <input class="btn btn-dark" value="Logout" type="submit">
      </form>
    </div>
  </div>
</nav>
</body>