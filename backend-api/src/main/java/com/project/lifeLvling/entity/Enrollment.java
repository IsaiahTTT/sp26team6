package com.project.lifeLvling.entity;


import jakarta.persistence.*;

@Entity
@Table(name = "enrollments")
public class Enrollment {
    
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long enrollmentId;

    @Column(nullable = false)
    private Long customerId;

    @Column(nullable = false)
    private Long courseId;

    @Column(nullable = false)
    private String status;

    public Enrollment() {
    }

    public Enrollment(Long enrollmentId, Long customerId, Long courseId, String status) {
        this.enrollmentId = enrollmentId;
        this.customerId = customerId;
        this.courseId = courseId;
        this.status = status;
    }

    public Long getEnrollmentId() {
        return enrollmentId;
    }

    public void setEnrollmentId(Long enrollmentId) {
        this.enrollmentId = enrollmentId;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

