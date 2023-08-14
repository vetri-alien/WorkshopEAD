/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Demo {

    public static void main(String[] args) {
        /*
        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        HelloWorld h1=(HelloWorld)ctx.getBean("helloWorld");
        h1.getMessage();
        
        Employee e1=(Employee)ctx.getBean("emp4");
        System.out.println(e1.getEmpid());
        System.out.println(e1.getName());
        System.out.println(e1.getJob());
        System.out.println(e1.getSalary());
        System.out.println(e1.getAcademic().getDegree());
        System.out.println(e1.getAcademic().getCgp());
        */
        
        /*
        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans1.xml");
        Employee e1=(Employee)ctx.getBean("emp1");
        System.out.println(e1.getEmpid());
        System.out.println(e1.getName());
        System.out.println(e1.getJob());
        System.out.println(e1.getSalary());
        System.out.println(e1.getAcademic().getDegree());
        System.out.println(e1.getAcademic().getCgp());
        */
        
        ApplicationContext ctx=new AnnotationConfigApplicationContext(HelloWorldConfig.class);
        HelloWorld h2=(HelloWorld)ctx.getBean(HelloWorld.class);
        h2.setMessage("Hello Spring World");
        h2.getMessage();
    }
}
