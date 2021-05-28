package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Admin;
import pl.coderslab.entity.User;

public interface AdminRepository extends JpaRepository<Admin,Long> {

}
