package com.project.lifeLvling.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.lifeLvling.entity.Course;
import com.project.lifeLvling.repository.CourseRepository;

@Service
public class CourseService {

    @Autowired
    private CourseRepository repo;

    public Course createCourse(Course c) {
        return repo.save(c);
    }

    public List<Course> getAllCourses() {
        return repo.findAll();
    }

    public List<Course> getCoursesByProvider(Long providerId) {
        return repo.findByProviderId(providerId);
    }

    public Course getCourseById(Long id) {
        return repo.findById(id).orElse(null);
    }

    public Course updateCourse(Long id, Course updated) {
        Optional<Course> existing = repo.findById(id);

        if (existing.isPresent()) {
            Course c = existing.get();

            c.setTitle(updated.getTitle());
            c.setProviderId(updated.getProviderId());
            c.setDescription(updated.getDescription());
            c.setCategory(updated.getCategory());
            c.setExerciseType(updated.getExerciseType());
            c.setInstructions(updated.getInstructions());
            c.setSets(updated.getSets());
            c.setReps(updated.getReps());
            c.setDurationMinutes(updated.getDurationMinutes());
            c.setPointsReward(updated.getPointsReward());

            return repo.save(c);
        }

        return null;
    }

    public void deleteCourse(Long id) {
        repo.deleteById(id);
    }

    public List<Course> searchCourses(String keyword) {
        if (keyword ==null || keyword.isBlank()){
            return getAllCourses();
        }
        return repo.findByTitleContainingIgnoreCase(keyword);
    }
}