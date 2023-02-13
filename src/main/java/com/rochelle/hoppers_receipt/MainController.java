package com.rochelle.hoppers_receipt;
//? Pair Programming -> Dominic Basa

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//todo -> Create a controllers package and a controller within it

// Just going to be controller 
@Controller
public class MainController {
    // class definition and imports here...
    @RequestMapping("/")    
    // Model model -> allow us to find our data from the backend/from our controller and send it to the view
    // it is built into the spring boot framework 
    // inorder to get these items from my controller on to my view need to put them on the model [think of it as request.form]
    // Uppercase Model = type, lowercase model = variable
    public String index(Model model) {
        
        String name = "Grace Hopper";
        String itemName = "Copper wire";
        double price = 5.25;
        String description = "Metal strips, also an illustration of nanoseconds.";
        String vendor = "Little Things Corner Store";
        
        //~ Want to send data down to my index.jsp
    	//* Your code here! Add values to the view model to be rendered
        /*         
        -> instead of returning string returning a file -> we have to do some things to render this jsp file
        -> add two add'tl dependencies to pom file
        -> we need to add more files inside main folder -> new folder "webapp"
            -> another directory called WEB-INF
            -> add index.jsp file -> go to LP SPRING MVC -> appendix and dependencies are all there
            -> copy jsp starter code and paste there
            -> templates - app.properties and paste 
        -> to get the items to render on the view have to use c:out tag on the jsp file
            -> gives us the ability to render items on the front end
        */

        //~ this will put this var in the model so then can access it
        model.addAttribute("name", name);
        model.addAttribute("itemName", itemName);
        model.addAttribute("price", price);
        model.addAttribute("description", description);
        model.addAttribute("vendor", vendor);

        return "index.jsp";
    }
    //...
    

}

