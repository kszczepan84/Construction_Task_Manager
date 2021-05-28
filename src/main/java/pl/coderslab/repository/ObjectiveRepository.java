package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Objective;
import pl.coderslab.entity.User;

public interface ObjectiveRepository extends JpaRepository<Objective,Long> {
}
