package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import pl.coderslab.repository.RoleRepository;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaUserService implements UserService {

    @Autowired
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public JpaUserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public boolean fieldValueExists(Object value, String fieldName) throws UnsupportedOperationException {
        Assert.notNull(fieldName);

        if (!fieldName.equals("email")) {
            throw new UnsupportedOperationException("Field name not supported");
        }

        if (value == null) {
            return false;
        }

        return this.userRepository.existsByEmail(value.toString());

    }


    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);

    }

    @Override
    public Optional<User> getUser(Long id) {
        return userRepository.findById(id);
    }


    @Override
    public void update(User user) {
        userRepository.save(user);

    }

    @Override
    public void delete(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public User findByUserName(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public void saveUser(User user) {
    }

    @Override
    public User findByPesel(String pesel) {
        return null;
    }

}
