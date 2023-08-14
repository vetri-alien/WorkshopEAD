/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

/**
 *
 * @author Administrator
 */
public class HelloWorld {
    private String message;

    public void setMessage(String message) {
        this.message = message;
    }
    
    public void getMessage(){
        System.out.println("Your Message:\t"+message);
    }
}
