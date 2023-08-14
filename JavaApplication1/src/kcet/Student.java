/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kcet;

/**
 *
 * @author 20uad005
 */
public class Student {
    private int regno;
    private String name,degree;
    private float cgp;

    public Student() {
    }

    public Student(int regno, String name, String degree, float cgp) {
        this.regno = regno;
        this.name = name;
        this.degree = degree;
        this.cgp = cgp;
    }

    public int getRegno() {
        return regno;
    }

    public void setRegno(int regno) {
        this.regno = regno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public float getCgp() {
        return cgp;
    }

    public void setCgp(float cgp) {
        this.cgp = cgp;
    }
    public void showStudentDetails(){
        System.out.println("Regno:\t"+regno);
        System.out.println("Name:\t"+name);
        System.out.println("Degree:\t"+degree);
        System.out.println("C.G.P:\t"+cgp);
        System.out.println("---------------------");
    }  
}
