package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Message;
import pl.coderslab.repository.MessageRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaMessageService implements MessageService {

    private final MessageRepository messageRepository;



    public JpaMessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;

    }

    @Override
    public List<Message> getAllMessages() {
        return messageRepository.findAll();
    }



    @Override
    public void addMessage(Message message) {
        messageRepository.save(message);

    }

    @Override
    public Optional<Message> getMessage(Long id) {
        return messageRepository.findById(id);
    }

    @Override
    public void update(Message message) {
        messageRepository.save(message);
    }

    @Override
    public void delete(Long id) {
        messageRepository.deleteById(id);
    }

    @Override
    public Message findMessageByName(String name) {
        return null;
    }

    @Override
    public void saveMessage(Message message) {

    }

}
