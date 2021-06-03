package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Objective;
import pl.coderslab.repository.ObjectiveRepository;

import java.util.Arrays;
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
    public List<Objective> getAllObjectives() {
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

    }

    @Override
    public List<String> getTaskStatus() {
        return Arrays.asList("Done", "In progress", "Unknown");
    }


}
