package org.example.learningcenterpr;

import jakarta.persistence.EntityManager;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import static org.example.learningcenterpr.MyListener.EMF;

public class BaseRepo<T> {
    private final Class<T> persistenceClass;

    @SuppressWarnings("unchecked")
    public BaseRepo() {
         Class<T> clazz = (Class<T>) ((ParameterizedType)
                getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        this.persistenceClass = clazz;
    }

    public void save(T entity){
        try(
                EntityManager entityManager = EMF.createEntityManager();
                ) {
            entityManager.getTransaction().begin();
            entityManager.persist(entity);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public List<T> findAll(){
        try(
                EntityManager entityManager = EMF.createEntityManager();
        ) {
           return entityManager.createQuery("from "+persistenceClass.getName(), persistenceClass).getResultList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
