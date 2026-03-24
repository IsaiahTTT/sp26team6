package com.project.lifeLvling.service;

import com.project.lifeLvling.entity.Enrollment;
import com.project.lifeLvling.repository.EnrollmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public Enrollment updateEnrollment(Long id, Enrollment updatedEnrollment) {
        Optional<Enrollment> existingEnrollmentOpt = enrollmentRepository.findById(id);

        if (existingEnrollmentOpt.isPresent()) {
            Enrollment existingEnrollment = existingEnrollmentOpt.get();
            existingEnrollment.setCustomerId(updatedEnrollment.getCustomerId());
            existingEnrollment.setCourseId(updatedEnrollment.getCourseId());
            existingEnrollment.setStatus(updatedEnrollment.getStatus());

            return enrollmentRepository.save(existingEnrollment);
        }

        return null;
    }

    public void deleteEnrollment(Long id) {
        enrollmentRepository.deleteById(id);
    }
}
