/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kcet;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class Demo1 {
    public static void main(String[] args) {
        /*DriverManagerDataSource ds=new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/vetri");
        ds.setUsername("root");
        ds.setPassword("");
        
        JdbcTemplate db=new JdbcTemplate(ds);
        db.update("insert into customer values(?,?,?)",1007,"vetriventhan",15000);
        System.out.println("Record Inserted");*/
        
        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate db=ctx.getBean("jt",JdbcTemplate.class);
        String name= db.queryForObject("select name from customer where accno=?",String.class,1);
        System.out.println("Customer Name:"+name);
    }
    
}
