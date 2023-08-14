/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

/**
 *
 * @author Administrator
 */
public class Employee {
    private int empid;
    private String name, job;
    private float salary;
    
    private Academic academic;

    public Employee() {
    }

    public Employee(Academic academic) {
        this.academic = academic;
    }
    
    public Employee(int empid, String name, String job, float salary, Academic academic) {
        this.empid = empid;
        this.name = name;
        this.job = job;
        this.salary = salary;
        this.academic = academic;
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

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    public Academic getAcademic() {
        return academic;
    }

    public void setAcademic(Academic academic) {
        this.academic = academic;
    }
    
}
