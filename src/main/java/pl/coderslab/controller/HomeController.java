package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "/homepage/index";
    }


    @RequestMapping("/about")
    public String about() {
        return "/homepage/about";
    }

    @RequestMapping("/login")
    public String login() {
        return "/homepage/login";
    }


//    @RequestMapping("/calendar")
//    public String index2() {
//        return "calendar";
//    }

//    @RequestMapping("/calendar")
//    public String index2() {
//        return "calendar";
//    }
//
//    @GetMapping("/patient/view")
//    public String index3() {
//        return "patient";
//    }
//
//    @RequestMapping("/service")
//    public String index4() {
//        return "service";
//    }
}
