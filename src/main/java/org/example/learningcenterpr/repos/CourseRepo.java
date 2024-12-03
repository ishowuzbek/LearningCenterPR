package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import org.example.learningcenterpr.entity.Course;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class CourseRepo {
    public static List<Course> getCourses(){
        try (
                EntityManager entityManager=EMF.createEntityManager();
                ){
            List<Course> fromCourse = entityManager.createQuery("from Course", Course.class).getResultList();
            return fromCourse;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
