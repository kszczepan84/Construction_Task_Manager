package pl.coderslab.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Objective;
import pl.coderslab.entity.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String username);

    boolean existsByEmail(String toString);

    User findByPesel(String pesel);

    @Query(value="SELECT u.id, u.description, email, enabled, first_name, house_nr, last_name, password, pesel, phone_nr, postal_code, street, street_nr, username, fullname FROM user u INNER JOIN users_objectives uo on u.id = uo.user_id INNER JOIN objective o on uo.objective_id = o.id WHERE objective_id IS NOT NULL",nativeQuery=true)
    List<User> selectUserByObjective();

//    @Query(value="SELECT ALL user_id FROM users_objectives WHERE objective_id is not null", nativeQuery = true)
//    List<Long> findUserWhenObjectivesExist();
//
//    @Query(value="SELECT ALL objective_id FROM users_objectives WHERE user_id=?1 ", nativeQuery = true)
//    List<Long> findObjectiveWhenObjectivesExist(Long id);

//    @Query(value="SELECT DISTINCT u.first_name FROM user u INNER JOIN users_objectives uo on u.id = uo.user_id INNER JOIN objective o on uo.objective_id = o.id WHERE user_id IS NOT NULL", nativeQuery = true)
//    List<String> findUserFirstNameWhenObjectivesExist();
//
//    @Query(value="SELECT DISTINCT u.last_name FROM user u INNER JOIN users_objectives uo on u.id = uo.user_id INNER JOIN objective o on uo.objective_id = o.id WHERE user_id IS NOT NULL", nativeQuery = true)
//    List<String> findUserLastNameWhenObjectivesExist();
//
//    @Query(value="SELECT DISTINCT o.name FROM user u INNER JOIN users_objectives uo on u.id = uo.user_id INNER JOIN objective o on uo.objective_id = o.id WHERE user_id IS NOT NULL", nativeQuery = true)
//    List<String> findObjectNameWhenObjectivesExist();
}
