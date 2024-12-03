package org.example.learningcenterpr.entity;

import jakarta.persistence.*;

@Entity
public class Groups {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @ManyToOne
    private Module module;
}
