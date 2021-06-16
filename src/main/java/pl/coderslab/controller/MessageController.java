package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Message;
import pl.coderslab.entity.User;
import pl.coderslab.repository.MessageRepository;
import pl.coderslab.service.MessageService;
import pl.coderslab.service.UserService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/message")
@RequiredArgsConstructor
public class MessageController {

    private final UserService userService;
    private final MessageService messageService;
    private final MessageRepository messageRepository;


    @GetMapping("/send")
    public String sendMessage(Model model) {
        List<User> usersList = new ArrayList<>();
        List<String> usernamesList;
        usernamesList=messageRepository.selectUsernamesIfMessageNotNull();
        for ( String username:usernamesList){
            usersList.add(userService.findByUserName(username));
        }
        model.addAttribute("users",usersList);
        model.addAttribute("message", new Message());
        return "/message/send";
    }

    @PostMapping("/send")
    @Transactional
    public String receiveMessage(@Valid Message message, Authentication authentication){
        messageService.addMessage(message);
        String currentUser = authentication.getName();
        User user = userService.findByUserName(currentUser);
        List<Message> allUserMessages=user.getMessages();
        allUserMessages.add(message);
        user.setMessages(allUserMessages);
        message.setUsers(Arrays.asList(user));
        return "redirect:/message/send";
    }

    @GetMapping("/delete/{id}")
    @Transactional
    public String delete(@PathVariable Long id) {
        messageRepository.deleteMessageFromUsersMesagesbyMesageId(id);
        messageService.delete(id);
        return "redirect:/message/send";
    }
}


