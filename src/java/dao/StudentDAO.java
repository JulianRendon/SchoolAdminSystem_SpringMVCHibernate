/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Student;

/**
 *
 * @author Julian
 */
public interface StudentDAO {

    public void addStudent(Student s);

    public void updateStudent(Student s);

    public List<Student> listStudents();

    public Student getStudentById(int id);

    public void removeStudent(int id);
}
