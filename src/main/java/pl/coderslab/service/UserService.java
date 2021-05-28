package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.User;

import java.util.List;
import java.util.Optional;

@Service
public interface UserService {

    List<User> getUsers();
    void addUser(User user);
    Optional<User> getUser(Long id);
    void update(User user);
    void delete(Long id);
    User findByUserName(String name);
    void saveUser(User user);

}
