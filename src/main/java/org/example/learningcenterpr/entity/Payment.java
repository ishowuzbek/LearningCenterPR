package org.example.learningcenterpr.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

import java.time.LocalDate;

@Entity
public class Payment {
    @Id
    private Integer id;
    private Integer amount;
    private LocalDate paymentDate;
    @ManyToOne
    private Student student;
}
