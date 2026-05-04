package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.lifeLvling.entity.Course;
import com.project.lifeLvling.service.CourseService;

@Controller
@RequestMapping("/ui/provider-courses")
public class ProviderCourseMVCController {

    private final CourseService service;

    public ProviderCourseMVCController(CourseService service) {
        this.service = service;
    }

    @GetMapping
    public String list(Model model) {
        model.addAttribute("courses", service.getAllCourses());
        return "provider-course-list";
    }

    @GetMapping("/add")
    public String form(Model model) {
        model.addAttribute("course", new Course());
        return "provider-course-form";
    }

    @PostMapping
    public String create(Course course) {
        service.createCourse(course);
        return "redirect:/ui/provider-courses";
    }
}