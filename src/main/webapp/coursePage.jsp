<%@ page import="org.example.learningcenterpr.repos.CourseRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Course" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/3/2024
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Course Table</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
  CourseRepo courseRepo = new CourseRepo();
  List<Course> courses = courseRepo.findAll();
%>
<div class="container mt-5">
  <h1 class="text-center mb-4">Courses</h1>
  <table class="table table-bordered table-striped">
    <thead class="table-dark">
    <tr>
      <th>№</th>
      <th>Course Name</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>

      <%
        int i=1;
        for (Course courS : courses) {
          %>
      <tr>
      <td><%=i++%></td>
      <td><%=courS.getName()%></td>
      <td>
        <form action="/module">
          <input type="hidden" name="courseId" value="<%=courS.getId()%>">
          <button class="btn btn-primary btn-sm">Show</button>
        </form>
      </td>
      </tr>
      <%
        }
      %>
    </tbody>
  </table>
  <form action="report.jsp">
    <button class="btn-btn-dark-secondary">Report</button>
  </form>
</div>
</body>
</html>
