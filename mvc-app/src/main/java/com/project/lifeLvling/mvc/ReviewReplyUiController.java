package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.lifeLvling.entity.ReviewReply;
import com.project.lifeLvling.repository.ReviewRepository;
import com.project.lifeLvling.service.ReviewReplyService;

@Controller
@RequestMapping("/ui/review-replies")
public class ReviewReplyUiController {

    private final ReviewReplyService service;
    private final ReviewRepository reviewRepository;

    public ReviewReplyUiController(ReviewReplyService service, ReviewRepository reviewRepository) {
        this.service = service;
        this.reviewRepository = reviewRepository;
    }

    @GetMapping
    public String list(@RequestParam(required = false) Long providerId, Model model) {
        model.addAttribute("replies", service.getAll());
        model.addAttribute("reviews", reviewRepository.findAll());
        model.addAttribute("providerId", providerId);
        return "provider-review-replies";
    }

    @GetMapping("/add")
    public String form(@RequestParam(required = false) Long providerId, Model model) {
        model.addAttribute("reply", new ReviewReply());
        model.addAttribute("reviews", reviewRepository.findAll());
        model.addAttribute("providerId", providerId);
        return "provider-review-reply-form";
    }

    @PostMapping
    public String create(ReviewReply reply, @RequestParam(required = false) Long providerId) {
        service.create(reply);

        if (providerId != null) {
            return "redirect:/ui/review-replies?providerId=" + providerId;
        }

        return "redirect:/ui/review-replies";
    }

    @PostMapping("/delete/{replyId}")
    public String delete(@PathVariable Long replyId, @RequestParam(required = false) Long providerId) {
        service.deleteReply(replyId);

        if (providerId != null) {
            return "redirect:/ui/review-replies?providerId=" + providerId;
        }

        return "redirect:/ui/review-replies";
    }
}