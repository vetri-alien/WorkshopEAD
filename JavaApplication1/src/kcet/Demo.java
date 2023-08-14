/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kcet;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Demo {

 
    public static void main(String[] args)throws Exception{
        ApplicationContext ctx;
        Student s1,s2;
        /*
        ctx=new ClassPathXmlApplicationContext("beans.xml");
        s1=(Student)ctx.getBean("stud1");
        s2=ctx.getBean("stud2",Student.class);
        s1.showStudentDetails();
        s2.showStudentDetails();
        */
        ctx=new AnnotationConfigApplicationContext(MyConfiguration.class);
        s1=ctx.getBean("stud3",Student.class);
        s1.showStudentDetails();
    }
    
}
