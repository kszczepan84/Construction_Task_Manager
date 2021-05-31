package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Objective;
import pl.coderslab.service.ObjectiveService;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/objective")
@RequiredArgsConstructor
public class ObjectiveController {

    private final ObjectiveService objectiveService;

    @RequestMapping("/list")
    public String all(Model model) {
        model.addAttribute("objectives", objectiveService.getObjectives());
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
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate,@RequestParam("startHour")
    @DateTimeFormat(iso=DateTimeFormat.ISO.TIME) LocalTime startHour, @RequestParam("endHour")
    @DateTimeFormat(iso=DateTimeFormat.ISO.TIME) LocalTime endHour)  {
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
                           @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate,@RequestParam("startHour")
                           @DateTimeFormat(iso=DateTimeFormat.ISO.TIME) LocalTime startHour, @RequestParam("endHour")
                           @DateTimeFormat(iso=DateTimeFormat.ISO.TIME) LocalTime endHour) {
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
    public String delete(@PathVariable Long id) {
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

}
