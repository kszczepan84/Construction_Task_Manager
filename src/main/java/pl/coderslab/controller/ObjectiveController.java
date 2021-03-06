package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Objective;
import pl.coderslab.entity.User;
import pl.coderslab.repository.ObjectiveRepository;
import pl.coderslab.repository.UserRepository;
import pl.coderslab.service.ObjectiveService;
import pl.coderslab.service.UserService;


import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("/objective")
@RequiredArgsConstructor
public class ObjectiveController {

    @Autowired
    private final ObjectiveService objectiveService;
    private final UserService userService;
    private final UserRepository userRepository;
    private final ObjectiveRepository objectiveRepository;

    @RequestMapping("/list")
    public String all(Model model) {
        model.addAttribute("objectives", objectiveService.getAllObjectives());
        return "/objective/list";
    }

    @GetMapping("/add")
    public String addObjective(Model model) {
        model.addAttribute("objective", new Objective());
        return "/objective/add";
    }

    @PostMapping("/add")
    public String saveObjective(Objective objective, BindingResult result, @RequestParam("startDate")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate, @RequestParam("endDate")
                                @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate, @RequestParam("startHour")
                                @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime startHour, @RequestParam("endHour")
                                @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime endHour) {
        objective.setStartDate(startDate);
        objective.setEndDate(endDate);
        objective.setStartHour(startHour);
        objective.setEndHour(endHour);
        objectiveService.addObjective(objective);
        return "redirect:/objective/list";
    }

    @GetMapping("/edit/{id}")
    public String redirectToEdit(@PathVariable Long id, Model model) {
        model.addAttribute("objective", objectiveService.getObjective(id));
        return "objective/edit";
    }

    @PostMapping("/edit")
    public String edit(Objective objective, BindingResult result, @RequestParam("startDate")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate, @RequestParam("endDate")
                       @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate, @RequestParam("startHour")
                       @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime startHour, @RequestParam("endHour")
                       @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime endHour) {
        objective.setStartDate(startDate);
        objective.setEndDate(endDate);
        objective.setStartHour(startHour);
        objective.setEndHour(endHour);
        objectiveService.update(objective);
        return "redirect:/objective/list";
    }

    @GetMapping("/show/{id}")
    public String show(@PathVariable Long id, Model model) {
        model.addAttribute("objective", objectiveService.getObjective(id).orElseThrow(null));
        return "objective/show";
    }

    @GetMapping("/delete/{id}")
    @Transactional
    public String delete(@PathVariable Long id) {
        objectiveRepository.deleteObjectiveFromUsersObjectivesbyObjectiveId(id);
        objectiveService.delete(id);
        return "redirect:/objective/list";
    }


    @ModelAttribute("priorities")
    public List<String> getPriorities() {
        return Arrays.asList("High", "Medium", "Low");
    }

    @ModelAttribute("statusTasks")
    public List<String> getTaskStatus() {
        return Arrays.asList("Done", "In progress", "Unknown");
    }


    @GetMapping("/assign")
    public String assignObjective(HttpServletRequest request) {
        request.setAttribute("users", userService.getUsers());
        request.setAttribute("objectives", objectiveService.getAllObjectives());
//        request.setAttribute("usersByObjective",userRepository.selectUserByObjective());
        return "/objective/assign";
    }

    @PostMapping("/assign")
    @Transactional
    public String assignObjectivePost(@RequestParam("users") Long userId,
                                      @RequestParam("objectives") Long objectiveId) {
//        Optional<User> user;
//        user = userService.getUser(userId);
//        Optional<Objective> objective;
//        objective = objectiveService.getObjective(objectiveId);
//        user.orElseThrow(null).setObjectives(Arrays.asList(objective.orElse(null)));

        Optional<User> user;
        user = userService.getUser(userId);
        List<Objective> list= user.orElseThrow(null).getObjectives();
        Optional<Objective> objective;
        objective = objectiveService.getObjective(objectiveId);
        if(!list.contains(objective.orElse(null))){
            list.add(objective.orElse(null));
            user.orElseThrow(null).setObjectives(list);
            System.out.println(user.orElse(null).getObjectives());
        }
        return "redirect:/objective/assign";
    }

    @GetMapping("/assign/delete/{userId}/{objectiveId}")
    @Transactional
//    @ResponseBody
    public String deleteObjectiveFromUser(@PathVariable Long userId,@PathVariable Long objectiveId) {
        objectiveRepository.deleteObjectiveFromUser(userId,objectiveId);
        return "redirect:/objective/assign";
    }

}
