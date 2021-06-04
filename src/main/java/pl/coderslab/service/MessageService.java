package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Message;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public interface MessageService {

    List<Message> getAllMessages();
    void addMessage(Message message);
    Optional<Message> getMessage(Long id);
    void update(Message message);
    void delete(Long id);
    Message findMessageByName(String name);
    void saveMessage(Message message);

}
