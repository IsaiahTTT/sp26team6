package com.project.lifeLvling.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.lifeLvling.entity.ReviewReply;
import com.project.lifeLvling.repository.ReviewReplyRepository;

@Service
public class ReviewReplyService {

    @Autowired
    private ReviewReplyRepository repo;

    public ReviewReply createReply(ReviewReply r) {
        return repo.save(r);
    }

    public List<ReviewReply> getRepliesByReview(Long reviewId) {
        return repo.findByReviewId(reviewId);
    }

    public void deleteReply(Long id) {
        repo.deleteById(id);
    }
}
