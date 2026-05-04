package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.lifeLvling.entity.ReviewReply;
import com.project.lifeLvling.service.ReviewReplyService;

@Controller
@RequestMapping("/ui/review-replies")
public class ReviewReplyUiController {

    private final ReviewReplyService service;

    public ReviewReplyUiController(ReviewReplyService service) {
        this.service = service;
    }

    @GetMapping
    public String list(Model model) {
        model.addAttribute("replies", service.getAll());
        return "provider-review-replies";
    }

    @GetMapping("/add")
    public String form(Model model) {
        model.addAttribute("reply", new ReviewReply());
        return "provider-review-reply-form";
    }

    @PostMapping
    public String create(ReviewReply reply) {
        service.create(reply);
        return "redirect:/ui/review-replies";
    }
}