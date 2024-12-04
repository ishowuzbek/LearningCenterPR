<%@ page import="org.example.learningcenterpr.entity.Module" %>
<%@ page import="org.example.learningcenterpr.repos.ModuleRepo" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.learningcenterpr.repos.GroupRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Groups" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/3/2024
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Groups</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
    int moduleId = Integer.parseInt(request.getParameter("moduleId"));
    GroupRepo groupRepo= new GroupRepo();
    List<Groups> groups = groupRepo.findAll();
%>
<div class="container mt-5">
    <h1 class="text-center mb-4">Groups</h1>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>№</th>
            <th>Group Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            int i=1;
            for (Groups group : groups) {
                if (group.getModule().getId()==moduleId){
        %>
        <tr>
            <td><%=i++%></td>
            <td><%=group.getName()%></td>
            <td>
                <form action="/students">
                    <input type="hidden" name="groupId" value="<%=group.getId()%>">
                    <button class="btn btn-primary btn-sm">Show</button>
                    <button class="btn btn-success btn-sm">Add</button>
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
