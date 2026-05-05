package com.project.lifeLvling.service;

import com.project.lifeLvling.entity.Enrollment;
import com.project.lifeLvling.repository.EnrollmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class EnrollmentService {

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    public Enrollment createEnrollment(Enrollment enrollment) {
        return enrollmentRepository.save(enrollment);
    }

    public List<Enrollment> getAllEnrollments() {
        return enrollmentRepository.findAll();
    }

    public Enrollment getEnrollmentById(Long id) {
        return enrollmentRepository.findById(id).orElse(null);
    }

    public List<Enrollment> getEnrollmentsByCustomerId(Long customerId) {
        return enrollmentRepository.findByCustomerId(customerId);
    }

    public List<Enrollment> getEnrollmentsByCourseId(Long courseId) {
        return enrollmentRepository.findByCourseId(courseId);
    }

    public Enrollment enrollCustomer(Long customerId, Long courseId) {
        Optional<Enrollment> existing = enrollmentRepository.findByCustomerIdAndCourseId(customerId, courseId);
        
        if (existing.isPresent()) {
            return existing.get(); // Return existing enrollment if already enrolled
        }

        Enrollment enrollment = new Enrollment();
        enrollment.setCustomerId(customerId);
        enrollment.setCourseId(courseId);
        enrollment.setStatus("ACTIVE");
        return enrollmentRepository.save(enrollment);
    }

    @Transactional
    public void dropCourse(Long customerId, Long courseId) {
        enrollmentRepository.deleteByCustomerIdAndCourseId(customerId, courseId);
    }
}
