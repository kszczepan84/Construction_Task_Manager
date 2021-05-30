package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "/homepage/index";
    }


    @RequestMapping("/about")
    public String about() {
        return "/homepage/about";
    }

    @RequestMapping("/successLogin")
    public String successLogin() {
        return "/homepage/successLogin";
    }


    @RequestMapping("/login")
    public String login() {
        return "/homepage/login";
    }

}
