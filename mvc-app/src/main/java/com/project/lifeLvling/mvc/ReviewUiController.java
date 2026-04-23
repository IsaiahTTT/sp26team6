package com.project.lifeLvling.mvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.project.lifeLvling.entity.Review;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import com.project.lifeLvling.entity.Customer;


import com.project.lifeLvling.service.EnrollmentService;
import com.project.lifeLvling.service.CustomerService;
import com.project.lifeLvling.service.ReviewService;

@Controller
public class ReviewUiController {
    

    @Autowired
    private ReviewService reviewService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private EnrollmentService enrollmentService;


    @GetMapping("/reviews/course/{courseId}")
    public String getReviewsByCourse(@PathVariable Long courseId, Model model) {
        model.addAttribute("reviews", reviewService.getReviewsByCourseId(courseId));
        model.addAttribute("courseId", courseId);
        return "review"; // Return the view for displaying reviews by course
    }

    @PostMapping("/reviews/create")
    public String createReview(@RequestParam String username, @RequestParam Long courseId, @RequestParam String review, @RequestParam int rating, Model model) {
        Customer customer = customerService.getCustomerByUsername(username);
        if (customer == null) {
            return "redirect:/login?error=notloggedin"; // Redirect to login page with error message if user is not logged in
        }

        Long customerId = customer.getCustomerId();
        boolean enrolled = enrollmentService.getAllEnrollments().stream()
                .anyMatch(enrollment -> enrollment.getCustomerId().equals(customerId) && enrollment.getCourseId().equals(courseId));
        if (!enrolled) {
            model.addAttribute("error", "You must be enrolled in the course to leave a review.");
            model.addAttribute("reviews", reviewService.getReviewsByCourseId(courseId));
            model.addAttribute("courseId", courseId);
            return "review"; // Return the review page with error message if user is not enrolled in
        }
        
    

        Review newReview = new Review();
        newReview.setUsername(username);
        newReview.setCourseId(courseId);
        newReview.setReview(review);
        newReview.setRating(rating);

        reviewService.createReview(newReview);
        return "redirect:/reviews/course/" + courseId; // Redirect back to the reviews page for the course after successful review submission
    }

}