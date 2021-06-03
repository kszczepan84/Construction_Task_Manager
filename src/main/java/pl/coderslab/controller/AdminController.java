package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.service.UserService;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

    private final UserService userService;
    private final BCryptPasswordEncoder passwordEncoder;

    @RequestMapping("")
    public String main(){
        return "/admin/main";
    }

    @RequestMapping("/employee/list")
    public String all(Model model) {
        model.addAttribute("users", userService.getUsers());
        return "/admin/list";
    }


    @GetMapping("/employee/add")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "/admin/add";
    }


    @PostMapping("/employee/add")
    public String saveUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/add";
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        userService.addUser(user);
        return "redirect:/admin/employee/list";
    }

    @ModelAttribute("skills")
    public List<String> getSkills() {
        return Arrays.asList("machine operating", "office work", "supervising", "Health&Safety course");
    }

    @ModelAttribute("positions")
    public List<String> getNewPositions() {
        return Arrays.asList("Manager", "Supervisor", "Worker");
    }


    @GetMapping("/employee/edit/{id}")
    public String redirectToEdit(@PathVariable Long id, Model model) {
        model.addAttribute("user", userService.getUser(id).orElse(null));
        return "admin/edit";
    }

    @PostMapping("/employee/edit")
    public String edit(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/edit";
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        userService.update(user);
        return "redirect:/admin/employee/list";
    }

    @GetMapping("/employee/show/{id}")
    public String show(@PathVariable Long id, Model model) {
        model.addAttribute("user", userService.getUser(id).orElse(null));
        return "admin/show";
    }

    @GetMapping("/employee/delete/{id}")
    public String delete(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:/admin/employee/list";
    }


}
