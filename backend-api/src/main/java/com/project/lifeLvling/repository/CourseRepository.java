package com.project.lifeLvling.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.lifeLvling.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
    List<Course> findByProviderId(Long providerId);
}