package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Objective;
import pl.coderslab.service.ObjectiveService;
import pl.coderslab.service.UserService;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;
    private final ObjectiveService objectiveService;


    @RequestMapping("/worker")
    public String loginWorker() {
        return "user/objWorker";
    }

    @GetMapping("/supervisor")
    public String supervisorTaskUpdate(Authentication authentication, Model model) {
        String currentUser = authentication.getName();
        model.addAttribute("user", userService.findByUserName(currentUser));
        model.addAttribute("taskStatusAll", objectiveService.getTaskStatus());
        return "user/objSupervisor";
    }

    @PostMapping("/supervisor")
    @Transactional
    public String supervisorTaskUpdated(@RequestParam("taskStatusNew") String taskStatusNew,
                                        @RequestParam("objectiveOldStatus") Long objectiveId) {
        Optional<Objective> objective;
        objective = objectiveService.getObjective(objectiveId);
        List<String> convertedTask= Arrays.asList(taskStatusNew);
        objective.orElseThrow(null).setTaskStatus(convertedTask);
        return "redirect:/supervisor";
    }
}
