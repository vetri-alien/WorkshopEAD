/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

/**
 *
 * @author Administrator
 */
public class Bank {
    private int accno;
    private String name;
    private float amt;

    public Bank() {
    }

    public Bank(int accno, String name, float amt) {
        this.accno = accno;
        this.name = name;
        this.amt = amt;
    }
    
    public int getAccno() {
        return accno;
    }

    public void setAccno(int accno) {
        this.accno = accno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getAmt() {
        return amt;
    }

    public void setAmt(float amt) {
        this.amt = amt;
    }
    
}
