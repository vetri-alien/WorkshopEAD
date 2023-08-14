/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

import java.util.Set;

/**
 *
 * @author Administrator
 */
public class Employee {

    private int empid;
    private String name;
    private float salary;
    private Set certificates;

    public Employee() {
    }

    public Employee(int empid, String name, float salary) {
        this.empid = empid;
        this.name = name;
        this.salary = salary;
    }

    public Employee(String name, float salary) {
        this.name = name;
        this.salary = salary;
    }
    

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    public Set getCertificates() {
        return certificates;
    }

    public void setCertificates(Set certificates) {
        this.certificates = certificates;
    }
}
