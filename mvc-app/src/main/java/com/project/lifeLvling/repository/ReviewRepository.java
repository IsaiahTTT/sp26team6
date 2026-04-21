package com.project.lifeLvling.repository;

import com.project.lifeLvling.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findByCourseId(Long courseId);
    List<Review> findByUsername(String username);
    List<Review> findByRating(int rating);
}