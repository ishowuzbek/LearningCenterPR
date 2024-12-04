<%@ page import="org.example.learningcenterpr.entity.Module" %>
<%@ page import="org.example.learningcenterpr.repos.ModuleRepo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/3/2024
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Module</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
    int courseId = Integer.parseInt(request.getParameter("courseId"));
    ModuleRepo moduleRepo = new ModuleRepo();
    List<Module> modules =moduleRepo.findAll();
%>
<div class="container mt-5">
    <h1 class="text-center mb-4">Modules</h1>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>№</th>
            <th>Module Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
            <%
                int i=1;
                for (Module module : modules) {
                    if (module.getCourse().getId()==courseId){
            %>
            <tr>
            <td><%=i++%></td>
            <td><%=module.getName()%></td>
            <td>
                <form action="/groups">
                    <input type="hidden" name="moduleId" value="<%=module.getId()%>">
                    <button class="btn btn-primary btn-sm">Show</button>
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
