package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.service.UserService;

@Controller
@RequestMapping("")
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;

    @RequestMapping("/")
    public String home() {
        return "/homepage/index";
    }


    @RequestMapping("/about")
    public String about() {
        return "/homepage/about";
    }

    @RequestMapping("/successLogin")
    public String successLogin(Authentication authentication, Model model) {
        String currentUser = authentication.getName();
        model.addAttribute("user", userService.findByUserName(currentUser));
        return "/homepage/successLogin";
    }

    @RequestMapping("/login")
    public String login() {
        return "/homepage/login";
    }

}
