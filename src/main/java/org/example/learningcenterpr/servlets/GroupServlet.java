package org.example.learningcenterpr.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/groups")
public class GroupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int moduleId = Integer.parseInt(req.getParameter("moduleId"));
        req.getRequestDispatcher("groups.jsp?moduleId="+moduleId).forward(req, resp);
    }
}
