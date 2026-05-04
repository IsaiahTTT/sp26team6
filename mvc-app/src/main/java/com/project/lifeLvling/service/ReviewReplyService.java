package com.project.lifeLvling.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.lifeLvling.entity.ReviewReply;
import com.project.lifeLvling.repository.ReviewReplyRepository;

@Service
public class ReviewReplyService {

    private final ReviewReplyRepository repo;

    public ReviewReplyService(ReviewReplyRepository repo) {
        this.repo = repo;
    }

    public ReviewReply create(ReviewReply reply) {
        return repo.save(reply);
    }

    public List<ReviewReply> getAll() {
        return repo.findAll();
    }

    public ReviewReply createReply(ReviewReply reply) {
        return repo.save(reply);
    }

    public List<ReviewReply> getRepliesByReview(Long reviewId) {
        return repo.findByReviewId(reviewId);
    }
}