/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Course;

/**
 *
 * @author Julian
 */
public interface CourseDAO {

    public void addCourse(Course c);

    public void updateCourse(Course c);

    public List<Course> listCourses();

    public Course getCourseById(int id);

    public void removeCourse(int id);

}
