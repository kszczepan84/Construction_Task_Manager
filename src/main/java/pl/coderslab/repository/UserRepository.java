package pl.coderslab.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    boolean existsByEmail(String toString);

    User findByPesel(String pesel);

    @Query(value = "SELECT u.id, u.description, email, enabled, first_name, house_nr, last_name, password, pesel, phone_nr, postal_code, street, street_nr, username, fullname FROM user u INNER JOIN users_objectives uo on u.id = uo.user_id INNER JOIN objective o on uo.objective_id = o.id WHERE objective_id IS NOT NULL", nativeQuery = true)
    List<User> selectUserByObjective();

    @Modifying
    @Query(value = "DELETE FROM users_roles WHERE  user_id =?1", nativeQuery = true)
    void deleteRoleFromUsersRolesbyUserId(Long id);

    @Query(value = "SELECT user_id FROM users_roles INNER JOIN role r on users_roles.role_id = r.id WHERE r.name=?1", nativeQuery = true)
    List<Long> selectUserByRole(String roleName);

    @Query(value = "SELECT * FROM user WHERE id=?1", nativeQuery = true)
    User findUserById(Long id);

}
