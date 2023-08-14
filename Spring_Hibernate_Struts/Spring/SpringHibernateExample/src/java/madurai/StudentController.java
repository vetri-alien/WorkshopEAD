/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

    @RequestMapping(value = "/stud", method = RequestMethod.GET)
    public ModelAndView viewStudentForm() {
        return new ModelAndView("student", "command", new Student());
    }

    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudentInfo(@ModelAttribute("springmvc") Student s1, ModelMap model) {
        Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory=cfg.buildSessionFactory();
        Session sess=factory.openSession();
        Transaction tx=sess.beginTransaction();
        
        sess.save(s1);
        tx.commit();
        model.addAttribute("msg", "Record Inserted");
        return "result";
    }
}
