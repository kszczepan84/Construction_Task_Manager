package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Objective;


import java.util.List;
import java.util.Optional;
@Service
@Primary
public interface ObjectiveService {

    List<Objective> getAllObjectives();
    void addObjective(Objective objective);
    Optional<Objective> getObjective(Long id);
    void update(Objective objective);
    void delete(Long id);
    Objective findByObjectiveName(String name);
    void saveObjective(Objective objective);
    public List<String> getTaskStatus();

}
