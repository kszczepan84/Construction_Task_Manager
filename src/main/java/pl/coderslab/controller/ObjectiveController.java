package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.service.ObjectiveService;

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
}
