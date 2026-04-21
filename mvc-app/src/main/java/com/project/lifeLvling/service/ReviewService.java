package com.project.lifeLvling.service;

import com.project.lifeLvling.entity.Review;
import com.project.lifeLvling.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    public Review createReview(Review review) {
        return reviewRepository.save(review);
    }

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    public Review getReviewById(Long id) {
        return reviewRepository.findById(id).orElse(null);
    }

    public List<Review> getReviewsByCourseId(Long courseId) {
        return reviewRepository.findByCourseId(courseId);
    }

    public List<Review> getReviewsByRating(int rating) {
        return reviewRepository.findByRating(rating);
    }

    public Review updateReview(Long id, Review updatedReview) {
        Optional<Review> existing = reviewRepository.findById(id);

        if (existing.isPresent()) {
            Review review = existing.get();
            review.setUsername(updatedReview.getUsername());
            review.setCourseId(updatedReview.getCourseId());
            review.setReview(updatedReview.getReview());
            review.setRating(updatedReview.getRating());
            return reviewRepository.save(review);
        }

        return null;
    }

    public void deleteReview(Long id) {
        reviewRepository.deleteById(id);
    }
}