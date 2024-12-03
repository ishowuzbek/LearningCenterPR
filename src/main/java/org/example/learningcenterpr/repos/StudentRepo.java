package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import jdk.dynalink.linker.LinkerServices;
import org.example.learningcenterpr.entity.Student;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class StudentRepo {
    public  static List<Student> getStudents(){
        try(
                EntityManager entityManager = EMF.createEntityManager();
                ) {
            List<Student> fromStudent= entityManager.createQuery("from Student", Student.class).getResultList();
            return fromStudent;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
