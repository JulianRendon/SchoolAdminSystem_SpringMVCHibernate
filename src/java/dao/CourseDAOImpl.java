/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Course;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Julian
 */
@Repository
public class CourseDAOImpl implements CourseDAO {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    @Override
    public void addCourse(Course c) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(c);
    }

    @Override
    public void updateCourse(Course c) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(c);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Course> listCourses() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Course> courseList = session.createQuery("from Course").list();
        return courseList;
    }

    @Override
    public Course getCourseById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Course c = (Course) session.get(Course.class, new Integer(id));
        return c;
    }

    @Override
    public void removeCourse(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Course c = (Course) session.load(Course.class, new Integer(id));
        if (null != c) {
            session.delete(c);
        }
    }

}
