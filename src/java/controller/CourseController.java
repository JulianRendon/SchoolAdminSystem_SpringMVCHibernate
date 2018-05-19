/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.CourseService;

/**
 *
 * @author Julian
 */
@Controller
public class CourseController {

    private CourseService courseService;

    @Autowired(required = true)
    @Qualifier(value = "courseService")
    public void setCourseService(CourseService courseService) {
        this.courseService = courseService;
    }

    @RequestMapping(value = "/course_form", method = RequestMethod.GET)
    public String courseForm(Model model) {
        model.addAttribute("course", new Course());
        return "course_form";
    }

    @RequestMapping(value = "/course_list", method = RequestMethod.GET)
    public String listCourses(Model model) {
        model.addAttribute("listCourses", courseService.listCourses());
        return "course_list";
    }

    @RequestMapping(value = "/course/add", method = RequestMethod.POST)
    public String addCourse(@ModelAttribute("course") Course c) {
        courseService.addCourse(c);
        return "redirect:/course_list";
    }

    @RequestMapping("/course/remove/{id}")
    public String removeStudent(@PathVariable("id") int id) {
        courseService.removeCourse(id);
        return "redirect/course_list";
    }

    @RequestMapping("/course/update/{id}")
    public String updateCourse(@PathVariable("id") int id, Model model) {
        Course course = courseService.getCourseById(id);
        model.addAttribute("course", course);
        return "course_update";
    }

    @RequestMapping(value = "/course/update", method = RequestMethod.POST)
    public String updateCourse(@ModelAttribute("course") Course c) {
        courseService.updateCourse(c);
        return "redirect:/course_list";
    }
}
