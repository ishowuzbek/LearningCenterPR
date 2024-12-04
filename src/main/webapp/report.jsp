<%@ page import="java.util.List" %>
<%@ page import="org.example.learningcenterpr.repos.ReportRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Report" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<%
    ReportRepo reportRepo = new ReportRepo();
//    reportRepo.report();
    List<Report> reports = reportRepo.findAll();

    if (reports == null || reports.isEmpty()) {
%>
<div class="container mt-5">
    <h1 class="text-center">Report</h1>
    <div class="alert alert-warning text-center">
        No reports available.
    </div>
    <form action="/course">
        <button type="submit" class="btn btn-dark">Back</button>
    </form>
</div>
<%
} else {
%>
<div class="container mt-5">
    <h1 class="text-center mb-4">Report</h1>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>№</th>
            <th>Course Name</th>
            <th>Total Students</th>
            <th>Total Amount</th>
        </tr>
        </thead>
        <tbody>
        <%
            int i = 1;
            for (Report report : reports) {
        %>
        <tr>
            <td><%= i++ %></td>
            <td><%= report.getCourse_name() %></td>
            <td><%= report.getTotal_students() %></td>
            <td><%= report.getTotal_amount() %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <form action="/course">
        <button type="submit" class="btn btn-dark">Back</button>
    </form>
</div>
<%
    }
%>
</body>
</html>
