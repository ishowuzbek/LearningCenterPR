<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12/3/2024
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Payment</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
  int studentId = Integer.parseInt(request.getParameter("studentId"));
%>
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card shadow">
        <div class="card-header text-center bg-primary text-white">
          <h4>Add Payment</h4>
        </div>
        <div class="card-body">
          <form action="/payments/add" method="POST">
            <div class="mb-3">
              <label for="amount" class="form-label">Enter Amount</label>
              <input type="hidden" name="studentId" value="<%=studentId%>">
              <input type="number" class="form-control" id="amount" name="amount" placeholder="Enter amount" min="0" required>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-success">Submit</button>
              <button type="reset" class="btn btn-secondary">Reset</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
