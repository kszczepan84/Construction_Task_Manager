package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Objective;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;
import pl.coderslab.service.ObjectiveService;
import pl.coderslab.service.UserService;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;
    private final ObjectiveService objectiveService;
    private final UserRepository userRepository;


    @GetMapping("/worker")
    public String viewWorkerTasks(Authentication authentication, Model model) {
        String currentUser = authentication.getName();
        LocalDate today = LocalDate.now();
        model.addAttribute("user", userService.findByUserName(currentUser));
        model.addAttribute("today", today);
        List<Long> supervisorId =userRepository.selectUserByRole("ROLE_SUPERVISOR");
        List<User> supervisors = new ArrayList<>();
        for ( Long ids:supervisorId){
            supervisors.add(userRepository.findUserById(ids));
        }
        model.addAttribute("supervisors",supervisors);
        return "user/objWorker";
    }

//    @PostMapping("/worker")
//    @ResponseBody
//    public String getObjectiveId(@RequestParam("objectiveId") Long id){
//        return id.toString();
//    }



    @GetMapping("/supervisor")
    public String supervisorTaskUpdate(Authentication authentication, Model model) {
        String currentUser = authentication.getName();
        model.addAttribute("user", userService.findByUserName(currentUser));
        model.addAttribute("taskStatusAll", objectiveService.getTaskStatus());
        return "user/objSupervisor";
    }

    @PostMapping("/supervisor")
    @Transactional
    public String supervisorTaskUpdated(@RequestParam("taskStatusNew") List<String> taskStatusNew,
                                        @RequestParam("objectiveOldStatus") List<Long> objectiveId) {

        Optional<Objective> objective;
        Integer listLength = taskStatusNew.size();
        for (int i = 0; i < listLength; i++) {
            Long id = objectiveId.get(i);
            String taskStatus = taskStatusNew.get(i);
            objective = objectiveService.getObjective(id);
            List<String> convertedTask= Arrays.asList(taskStatus);
            objective.orElseThrow(null).setTaskStatus(convertedTask);
        }
        return "redirect:/supervisor";
    }
}
