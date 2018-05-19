/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.CourseDAO;
import java.util.List;
import model.Course;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Julian
 */
@Service
public class CourseServiceImpl implements CourseService {

    private CourseDAO courseDAO;

    public void setCourseDAO(CourseDAO courseDAO) {
        this.courseDAO = courseDAO;
    }

    @Override
    @Transactional
    public void addCourse(Course c) {
        courseDAO.addCourse(c);
    }

    @Override
    @Transactional
    public void updateCourse(Course c) {
        courseDAO.updateCourse(c);
    }

    @Override
    @Transactional
    public List<Course> listCourses() {
        return courseDAO.listCourses();
    }

    @Override
    @Transactional
    public Course getCourseById(int id) {
        return courseDAO.getCourseById(id);
    }

    @Override
    @Transactional
    public void removeCourse(int id) {
        courseDAO.removeCourse(id);
    }
}
