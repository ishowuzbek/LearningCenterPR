package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import org.example.learningcenterpr.BaseRepo;
import org.example.learningcenterpr.entity.Course;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class CourseRepo extends BaseRepo<Course> {

}
