package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import org.example.learningcenterpr.BaseRepo;
import org.example.learningcenterpr.entity.Report;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class ReportRepo extends BaseRepo<Report> {
    @Override
    public List<Report> findAll() {
        try(
                EntityManager entityManager = EMF.createEntityManager();
        ) {
            return entityManager.createNativeQuery("""
                                      SELECT  c.name AS course_name,
                                              SUM(p.amount) AS total_amount,
                                              COUNT(s.id) AS total_students
                                          FROM course c
                                          JOIN module m ON c.id = m.course_id
                                          JOIN groups g ON m.id = g.module_id
                                          JOIN student s ON g.id = s.groups_id
                                          JOIN payment p ON p.student_id = s.id
                                          GROUP BY c.id, c.name
                    """, Report.class).getResultList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
