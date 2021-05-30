package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;
import pl.coderslab.service.UserService;

import java.util.Arrays;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class UserController {


    @RequestMapping("/worker")
    @ResponseBody
    public String loginWorker() {
        return "worker is logged in";
    }

    @RequestMapping("/supervisor")
    @ResponseBody
    public String loginSupervisor() {
        return "supervisor is logged in";
    }


}
