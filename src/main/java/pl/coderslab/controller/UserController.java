package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
