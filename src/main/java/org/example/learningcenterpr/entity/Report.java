package org.example.learningcenterpr.entity;

import jakarta.persistence.Entity;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Report {
    private String course_name;
    private Long total_amount;
    private Long total_students;
}
