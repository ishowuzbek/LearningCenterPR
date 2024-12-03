package org.example.learningcenterpr.repos;

import jakarta.persistence.EntityManager;
import org.example.learningcenterpr.entity.Groups;

import javax.swing.*;
import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class GroupRepo {
    public static List<Groups> getGroups() {
        try(
                EntityManager entityManager = EMF.createEntityManager();
        ) {
            List<Groups> fromGroups =entityManager.createQuery("from Groups", Groups.class).getResultList();
            return fromGroups;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
