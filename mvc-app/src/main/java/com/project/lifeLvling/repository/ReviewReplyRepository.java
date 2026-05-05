package com.project.lifeLvling.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.lifeLvling.entity.ReviewReply;

public interface ReviewReplyRepository extends JpaRepository<ReviewReply, Long> {

    List<ReviewReply> findByReviewId(Long reviewId);
}