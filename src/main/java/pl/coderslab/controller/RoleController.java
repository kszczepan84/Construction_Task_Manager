package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Role;
import pl.coderslab.repository.RoleRepository;
import pl.coderslab.entity.User;
import pl.coderslab.service.UserService;

import java.util.Arrays;
import java.util.HashSet;

@Controller
@RequestMapping("/admin/role")
@RequiredArgsConstructor
public class RoleController {

    private final RoleRepository roleRepository;
    private final UserService userService;

    @Transactional
    @GetMapping("/set/{username}/{roleName}")
    public String setRoleToUser(@PathVariable String username, @PathVariable String roleName) {
        Role userRole = roleRepository.findByName(roleName);
        User user = userService.findByUserName(username);
        if (userRole == null) {
            userRole = new Role();
            userRole.setName(roleName);
            roleRepository.save(userRole);
        }
        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
        return "redirect:/admin/list";
    }



}
