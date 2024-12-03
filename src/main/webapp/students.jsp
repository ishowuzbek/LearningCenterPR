<%@ page import="org.example.learningcenterpr.entity.Module" %>
<%@ page import="org.example.learningcenterpr.repos.ModuleRepo" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.learningcenterpr.repos.GroupRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Groups" %>
<%@ page import="org.example.learningcenterpr.repos.StudentRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Student" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/3/2024
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Students</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
  int groupId = Integer.parseInt(request.getParameter("groupId"));
  List<Student> students = StudentRepo.getStudents();
%>
<div class="container mt-5">
  <h1 class="text-center mb-4">Students</h1>
  <table class="table table-bordered table-striped">
    <thead class="table-dark">
    <tr>
      <th>№</th>
      <th>Student Name</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
      int i=1;
      for (Student student : students) {
        if (student.getGroups().getId()==groupId){
    %>
    <tr>
      <td><%=i++%></td>
      <td><%=student.getName()%></td>
      <td>
        <form action="/payments">
          <input type="hidden" name="studentId" value="<%=student.getId()%>">
          <button class="btn btn-success btn-sm">My payments</button>
        </form>
      </td>
    </tr>
    <%
        }
      }
    %>
    </tbody>
  </table>
</div>
</body>
</html>
