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
import com.project.lifeLvling.service.CourseService;
import com.project.lifeLvling.service.ProviderService;
import com.project.lifeLvling.entity.Course;
import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.service.EnrollmentService;
import org.springframework.web.bind.annotation.PostMapping;







@Controller
public class CourseUiController {

    private final CustomerService customerService;
    private final CourseService courseService;
    private final ProviderService providerService;

    @Autowired
    private CustomerService customerService;
    @Autowired

    private CourseService courseService;
    @Autowired
    private ProviderService providerService;

    @Autowired
    private EnrollmentService enrollmentService;




    @GetMapping("/course/{courseId}")
    public String showCoursePage(@PathVariable Long courseId, @RequestParam Long customerId, Model model) {

        Course course = courseService.getCourseById(courseId);

        if (course == null) {
            return "redirect:/search?customerId=" + customerId; // Redirect back to search page if course not found
        }
        Customer customer = customerService.getCustomerById(customerId);
        Provider provider = providerService.getProviderById(course.getProviderId());
        model.addAttribute("courseId", courseId);
        model.addAttribute("customer", customer);
        model.addAttribute("provider", provider);
        model.addAttribute("course", course);

            return "coursepage"; // Return the view for displaying course details
    }

    @PostMapping("/course/{courseId}/enroll")
    public String enrollInCourse(@PathVariable Long courseId, @RequestParam Long customerId, Model model) {
        enrollmentService.enrollCustomer(customerId, courseId);
        return "redirect:/dashboard/" + customerId; // Redirect to dashboard after successful enrollment
    }

    @PostMapping("/course/{courseId}/drop")
    public String dropCourse(@PathVariable Long courseId, @RequestParam Long customerId) {
        enrollmentService.dropCourse(customerId, courseId);
        return "redirect:/dashboard/" + customerId; // Redirect to dashboard after dropping the course
    }
}

        return "coursepage";
    }
}