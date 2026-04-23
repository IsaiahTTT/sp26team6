package com.project.lifeLvling.mvc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import com.project.lifeLvling.entity.Customer;
import com.project.lifeLvling.service.CustomerService;





@Controller
public class CourseUiController {


    @Autowired
    private CustomerService customerService;

    @GetMapping("/courses/{courseId}")
    public String showCoursePage(@PathVariable Long courseId, @RequestParam Long customerId, Model model) {
        Customer customer = customerService.getCustomerById(customerId);
        model.addAttribute("courseId", courseId);
        model.addAttribute("customer", customer);

        String courseName = switch (courseId.intValue()) {
            case 101 -> "Cardio Routine";
            case 340 -> "Strength Training";
            case 450 -> "Flexibility and Mobility";
            default -> "Unknown Course";
        };

        model.addAttribute("courseName", courseName);
            return "coursepage"; // Return the view for displaying course details
    }
}

