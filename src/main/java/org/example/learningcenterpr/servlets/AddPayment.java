package org.example.learningcenterpr.servlets;

import jakarta.persistence.EntityManager;
import org.example.learningcenterpr.entity.Payment;
import org.example.learningcenterpr.entity.Student;
import org.example.learningcenterpr.repos.PaymentRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.example.learningcenterpr.MyListener.EMF;

@WebServlet("/add")
public class AddPayment  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        req.getRequestDispatcher("addPayment.jsp?studentId="+studentId).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        int amount = Integer.parseInt(req.getParameter("amount"));
        EntityManager entityManager = EMF.createEntityManager();
        Student student = entityManager.find(Student.class, studentId);
        PaymentRepo paymentRepo = new PaymentRepo();
        paymentRepo.save(new Payment(amount,student));
        resp.sendRedirect("payment.jsp?studentId="+studentId);
    }
}
