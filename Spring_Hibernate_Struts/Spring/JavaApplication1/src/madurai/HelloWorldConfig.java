/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 *
 * @author Administrator
 */
@Configuration
public class HelloWorldConfig {
    
    @Bean
    public HelloWorld helloworld(){
        return new HelloWorld();
    }
}
