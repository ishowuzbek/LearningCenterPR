package org.example.learningcenterpr.servlets;

import jakarta.persistence.EntityManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.example.learningcenterpr.MyListener.EMF;

@WebServlet("/module")
public class ModuleServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int courseId = Integer.parseInt(req.getParameter("courseId"));
        req.getRequestDispatcher("module.jsp?courseId="+courseId).forward(req, resp);
    }
}
