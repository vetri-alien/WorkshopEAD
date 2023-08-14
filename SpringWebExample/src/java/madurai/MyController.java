/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package madurai;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {
    
    @RequestMapping(value={"/index"}, method = RequestMethod.GET)
    public String display(Model model){
        model.addAttribute("data","Welcome to Spring Framework!!");
        return "result";
    }
}
