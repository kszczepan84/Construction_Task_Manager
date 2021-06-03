package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Objective;


@Repository
public interface ObjectiveRepository extends JpaRepository<Objective,Long> {
}
