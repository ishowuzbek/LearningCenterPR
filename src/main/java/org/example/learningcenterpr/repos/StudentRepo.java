package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import jdk.dynalink.linker.LinkerServices;
import org.example.learningcenterpr.BaseRepo;
import org.example.learningcenterpr.entity.Student;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class StudentRepo extends BaseRepo<Student> {

}
