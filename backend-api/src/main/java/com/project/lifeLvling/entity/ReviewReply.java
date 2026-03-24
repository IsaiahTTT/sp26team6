package com.project.lifeLvling.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "review_replies")
public class ReviewReply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long replyId;

    @Column(nullable = false)
    private Long reviewId;

    @Column(nullable = false)
    private String message;

    public ReviewReply() {}

    public ReviewReply(Long replyId, Long reviewId, String message) {
        this.replyId = replyId;
        this.reviewId = reviewId;
        this.message = message;
    }

    public Long getReplyId() { return replyId; }
    public void setReplyId(Long replyId) { this.replyId = replyId; }

    public Long getReviewId() { return reviewId; }
    public void setReviewId(Long reviewId) { this.reviewId = reviewId; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}