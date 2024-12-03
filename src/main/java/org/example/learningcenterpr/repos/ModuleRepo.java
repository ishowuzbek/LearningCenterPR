package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import org.example.learningcenterpr.entity.Course;
import org.example.learningcenterpr.entity.Module;

import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class ModuleRepo {
   public static List<Module> getModules() {
       try(
               EntityManager em = EMF.createEntityManager();
               ) {
           List<Module> fromModule = em.createQuery("from Module", Module.class).getResultList();
           return fromModule;
       } catch (Exception e) {
           throw new RuntimeException(e);
       }

   }
}
