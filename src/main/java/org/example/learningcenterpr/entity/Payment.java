package org.example.learningcenterpr.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDate;

@EqualsAndHashCode(callSuper = true)
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Payment extends BaseEntity {
    private Integer amount;
    @CreationTimestamp
    private LocalDate paymentDate;
    @ManyToOne
    private Student student;

    public Payment(Integer amount, Student student) {
        this.amount = amount;
        this.student = student;
    }
}
