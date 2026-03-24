package com.project.lifeLvling.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long reviewId;

    @Column(nullable = false)
    private String username;

    @Column(nullable = false)
    private Long courseId;

    @Column(nullable = false, length = 1000)
    private String review; // text content

    @Column(nullable = false)
    private int rating;

    public Review() {}

    public Review(Long reviewId, String username, Long courseId, String review, int rating) {
        this.reviewId = reviewId;
        this.username = username;
        this.courseId = courseId;
        this.review = review;
        this.rating = rating;
    }

    public Long getReviewId() {
        return reviewId;
    }

    public void setReviewId(Long reviewId) {
        this.reviewId = reviewId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
