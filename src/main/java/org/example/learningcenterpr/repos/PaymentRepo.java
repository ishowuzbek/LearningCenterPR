package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import org.example.learningcenterpr.entity.Payment;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class PaymentRepo {
    public static List<Payment> getPayments() {
        try(
                EntityManager entityManager = EMF.createEntityManager();
                ) {
            List<Payment> fromPayment = entityManager.createQuery("from Payment", Payment.class).getResultList();
            return fromPayment;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
