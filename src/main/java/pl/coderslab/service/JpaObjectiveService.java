package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Objective;
import pl.coderslab.entity.User;
import pl.coderslab.repository.ObjectiveRepository;

import java.util.List;
import java.util.Optional;

@Service
@Primary
public class JpaObjectiveService implements ObjectiveService {

    private final ObjectiveRepository objectiveRepository;


    public JpaObjectiveService(ObjectiveRepository objectiveRepository) {
        this.objectiveRepository = objectiveRepository;
    }

    @Override
    public List<Objective> getObjectives() {
        return objectiveRepository.findAll();
    }

    @Override
    public void addObjective(Objective objective) {
        objectiveRepository.save(objective);

    }

    @Override
    public Optional<Objective> getObjective(Long id) {
        return objectiveRepository.findById(id);
    }

    @Override
    public void update(Objective objective) {
        objectiveRepository.save(objective);

    }

    @Override
    public void delete(Long id) {
        objectiveRepository.deleteById(id);
    }

    @Override
    public Objective findByObjectiveName(String name) {
        return null;
    }


    @Override
    public void saveObjective(Objective objective) {
//        user.setPassword(passwordEncoder.encode(user.getPassword()));
//        user.setEnabled(1);
//        Role userRole = roleRepository.findByName("ROLE_USER");
//        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
//        userRepository.save(user);
    }
}
