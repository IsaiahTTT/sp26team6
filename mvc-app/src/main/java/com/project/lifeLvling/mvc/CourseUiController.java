package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.lifeLvling.entity.Course;
import com.project.lifeLvling.entity.Customer;
import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.service.CourseService;
import com.project.lifeLvling.service.CustomerService;
import com.project.lifeLvling.service.ProviderService;

@Controller
public class CourseUiController {

    private final CustomerService customerService;
    private final CourseService courseService;
    private final ProviderService providerService;

    public CourseUiController(CustomerService customerService,
                              CourseService courseService,
                              ProviderService providerService) {
        this.customerService = customerService;
        this.courseService = courseService;
        this.providerService = providerService;
    }

    @GetMapping("/courses/{courseId}")
    public String showCoursePage(@PathVariable Long courseId,
                                 @RequestParam Long customerId,
                                 Model model) {

        Customer customer = customerService.getCustomerById(customerId);
        Course course = courseService.getCourseById(courseId);

        model.addAttribute("customer", customer);
        model.addAttribute("course", course);
        model.addAttribute("courseId", courseId);

        if (course != null) {
            model.addAttribute("courseName", course.getTitle());

            Provider provider = providerService.getProviderById(course.getProviderId());
            model.addAttribute("provider", provider);
        } else {
            model.addAttribute("courseName", "Unknown Course");
        }

        return "coursepage";
    }
}