package com.project.lifeLvling.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.lifeLvling.entity.Course;
import com.project.lifeLvling.entity.Provider;
import com.project.lifeLvling.service.CourseService;
import com.project.lifeLvling.service.ProviderService;

@Controller
@RequestMapping("/ui/provider-courses")
public class ProviderCourseMVCController {

    private final CourseService courseService;
    private final ProviderService providerService;

    public ProviderCourseMVCController(CourseService courseService, ProviderService providerService) {
        this.courseService = courseService;
        this.providerService = providerService;
    }

    @GetMapping
    public String list(@RequestParam(required = false) Long providerId, Model model) {
        model.addAttribute("courses", courseService.getAllCourses());
        model.addAttribute("providers", providerService.getAllProviders());
        model.addAttribute("providerId", providerId);

        if (providerId != null) {
            Provider provider = providerService.getProviderById(providerId);
            model.addAttribute("provider", provider);
        }

        return "provider-course-list";
    }

    @GetMapping("/add")
    public String form(@RequestParam(required = false) Long providerId, Model model) {
        Course course = new Course();

        if (providerId != null) {
            course.setProviderId(providerId);
            model.addAttribute("provider", providerService.getProviderById(providerId));
        }

        model.addAttribute("course", course);
        model.addAttribute("providerId", providerId);
        model.addAttribute("providers", providerService.getAllProviders());

        return "provider-course-form";
    }

    @PostMapping
    public String create(Course course) {
        courseService.createCourse(course);

        if (course.getProviderId() != null) {
            return "redirect:/ui/provider-courses?providerId=" + course.getProviderId();
        }

        return "redirect:/ui/provider-courses";
    }

    @GetMapping("/edit/{courseId}")
    public String editForm(@PathVariable Long courseId, Model model) {
        Course course = courseService.getCourseById(courseId);

        if (course == null) {
            return "redirect:/ui/provider-courses";
        }

        Long providerId = course.getProviderId();

        model.addAttribute("course", course);
        model.addAttribute("providerId", providerId);
        model.addAttribute("provider", providerService.getProviderById(providerId));
        model.addAttribute("providers", providerService.getAllProviders());

        return "provider-course-edit";
    }

    @PostMapping("/update/{courseId}")
    public String update(@PathVariable Long courseId, Course course) {
        courseService.updateCourse(courseId, course);

        if (course.getProviderId() != null) {
            return "redirect:/ui/provider-courses?providerId=" + course.getProviderId();
        }

        return "redirect:/ui/provider-courses";
    }

    @PostMapping("/delete/{courseId}")
    public String delete(@PathVariable Long courseId, @RequestParam Long providerId) {
        courseService.deleteCourse(courseId);
        return "redirect:/ui/provider-courses?providerId=" + providerId;
    }
}