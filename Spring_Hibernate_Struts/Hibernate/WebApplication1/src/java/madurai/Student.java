/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Student")
public class Student {
    @Id
    private int regno;
    
    @Column(name="name")
    private String name;
    
    @Column(name="degree")
    private String degree;
    
    @Column(name="cgp")
    private float cgp;

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
    
}
