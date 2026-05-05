package com.project.lifeLvling.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.project.lifeLvling.service.CustomerService;
import com.project.lifeLvling.service.CourseService;
import com.project.lifeLvling.entity.Customer;
import com.project.lifeLvling.entity.Course;
import com.project.lifeLvling.service.EnrollmentService;
import com.project.lifeLvling.entity.Enrollment;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;
import java.util.List;

@Controller
public class CustomerUiController {
    
    @Autowired
    private CustomerService customerService;

    @Autowired
    private EnrollmentService enrollmentService;

@PostMapping("/signup")
public String createCustomer(@RequestParam String username, @RequestParam String email, @RequestParam String password) {
    Customer customer = new Customer();
    customer.setUsername(username);
    customer.setEmail(email);
    customer.setPassword(password);
    customer.setPoints(0);
    customer.setLevel(1);
    Customer saved = customerService.createCustomer(customer);
    return "redirect:/dashboard/" + saved.getCustomerId(); // Redirect to newly created accounts dashboard page after successful signup
}



@PostMapping("/login")
public String loginCustomer(@RequestParam String email, @RequestParam String password) {
    Customer customer = customerService.getCustomerByEmail(email);
    if (customer != null && customer.getPassword().equals(password)) {
        return "redirect:/dashboard/" + customer.getCustomerId(); // Redirect to dashboard page on successful login
    } else {
        return "redirect:/login?error=true"; // Redirect back to login page with error message on failed login
    }
}



@PostMapping("/profile/update/{customerId}")
public String updateProfile(@PathVariable Long customerId, @RequestParam String username, @RequestParam String email, @RequestParam String password, Model model) {
    Customer customer = customerService.getCustomerById(customerId);
    
    if (username != null && !username.isEmpty()) {
        customer.setUsername(username);
    }
    if (email != null && !email.isEmpty()) {
        customer.setEmail(email);
    }
    if (password != null && !password.isEmpty()) {
        customer.setPassword(password);
    }
    customerService.updateCustomer(customerId, customer);
    return "redirect:/profile/" + customerId; // Return the profile page view
}
@GetMapping("/profile/{customerId}")
public String showProfile(@PathVariable Long customerId, Model model) {
    Customer customer = customerService.getCustomerById(customerId);
    model.addAttribute("customer", customer);
    return "profile"; // Return the profile page view
}

@PostMapping("/profile/delete/{customerId}")
public String deleteProfile(@PathVariable Long customerId) {
    customerService.deleteCustomer(customerId);
    return "redirect:/"; // Redirect to homepage after deletion


}


@GetMapping("/dashboard/{customerId}")
public String showDashboard(@PathVariable Long customerId, Model model) {
    Customer customer = customerService.getCustomerById(customerId);
    model.addAttribute("customer", customer);

    List<Enrollment> enrollments = enrollmentService.getEnrollmentsByCustomerId(customerId);
    List<Course> courses = enrollments.stream()
            .map(enrollment -> courseService.getCourseById(enrollment.getCourseId()))
            .filter(c -> c != null)
            .toList();

    model.addAttribute("enrolledCourses", courses);
    return "dashboard"; // Return the dashboard view

}

@Autowired
private CourseService courseService;

@GetMapping("/search")
public String showSearchPage(@RequestParam(required = false) long customerId,Model model){


    Customer customer = customerService.getCustomerById(customerId);

    List<Course> courses = courseService.getAllCourses();

    model.addAttribute("courses", courses);
    model.addAttribute("customer", customer);
    model.addAttribute("customerId", customerId);
    return "searchpage"; // Return the search page view
}

}