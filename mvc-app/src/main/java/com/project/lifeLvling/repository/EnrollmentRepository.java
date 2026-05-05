package com.project.lifeLvling.repository;


import com.project.lifeLvling.entity.Enrollment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Optional;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, Long> {
    List<Enrollment> findByCustomerId(Long customerId);
    List<Enrollment> findByCourseId(Long courseId);

    Optional<Enrollment> findByCustomerIdAndCourseId(Long customerId, Long courseId);   

    void deleteByCustomerIdAndCourseId(Long customerId, Long courseId);
}
