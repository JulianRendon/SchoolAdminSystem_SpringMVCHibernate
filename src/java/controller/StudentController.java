/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.StudentService;

/**
 *
 * @author Julian
 */
@Controller
public class StudentController {

    private StudentService studentService;

    @Autowired(required = true)
    @Qualifier(value = "studentService")
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

    @RequestMapping(value = "/student_form", method = RequestMethod.GET)
    public String studentForm(Model model) {
        model.addAttribute("student", new Student());
        return "student_form";
    }

    @RequestMapping(value = "/student_list", method = RequestMethod.GET)
    public String listStudents(Model model) {
        model.addAttribute("listStudents", studentService.listStudents());
        return "student_list";
    }

    @RequestMapping(value = "/student/add", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("student") Student s) {
        studentService.addStudent(s);
        return "redirect:/student_list";
    }

    @RequestMapping("/student/remove/{id}")
    public String removeStudent(@PathVariable("id") int id) {
        studentService.removeStudent(id);
        return "redirect:/student_list";
    }

    @RequestMapping("/student/update/{id}")
    public String updateStudent(@PathVariable("id") int id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "student_update";
    }

    @RequestMapping(value = "/student/update", method = RequestMethod.POST)
    public String updateStudent(@ModelAttribute("student") Student s) {
        studentService.updateStudent(s);
        return "redirect:/student_list";
    }
}
