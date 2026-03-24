package com.project.lifeLvling.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.lifeLvling.entity.ReviewReply;
import com.project.lifeLvling.service.ReviewReplyService;

@RestController
@RequestMapping("/api/replies")
public class ReviewReplyController {

    @Autowired
    private ReviewReplyService service;

    @PostMapping
    public ResponseEntity<ReviewReply> create(@RequestBody ReviewReply r) {
        return new ResponseEntity<>(service.createReply(r), HttpStatus.CREATED);
    }

    @GetMapping("/review/{reviewId}")
    public ResponseEntity<List<ReviewReply>> getByReview(@PathVariable Long reviewId) {
        return new ResponseEntity<>(service.getRepliesByReview(reviewId), HttpStatus.OK);
    }
}
