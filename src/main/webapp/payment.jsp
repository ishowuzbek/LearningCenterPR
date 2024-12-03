<%@ page import="org.example.learningcenterpr.entity.Module" %>
<%@ page import="org.example.learningcenterpr.repos.ModuleRepo" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.learningcenterpr.repos.GroupRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Groups" %>
<%@ page import="org.example.learningcenterpr.repos.StudentRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Student" %>
<%@ page import="org.example.learningcenterpr.repos.PaymentRepo" %>
<%@ page import="org.example.learningcenterpr.entity.Payment" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/3/2024
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Payments</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
  int studentId = Integer.parseInt(request.getParameter("studentId"));
  List<Payment> payments = PaymentRepo.getPayments();
%>
<div class="container mt-5">
  <h1 class="text-center mb-4">Payments</h1>
  <table class="table table-bordered table-striped">
    <thead class="table-dark">
    <tr>
      <th>№</th>
      <th>Payment amount</th>
      <th>Payment date</th>
    </tr>
    </thead>
    <tbody>
    <%
      int i=1;
      for (Payment payment : payments) {
        if (payment.getStudent().getId()==studentId){
    %>
    <tr>
      <td><%=i++%></td>
      <td><%=payment.getAmount()%></td>
      <td><%=payment.getPaymentDate()%></td>
      <td>
      </td>
    </tr>
    <%
        }
      }
    %>
    </tbody>
  </table>
  <form action="/add" method="get">
    <input type="hidden" name="studentId" value="<%=studentId%>">
    <button>Add payment</button>
  </form>
</div>
</body>
</html>
