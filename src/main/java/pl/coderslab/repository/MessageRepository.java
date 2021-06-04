package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Message;

import java.util.List;


@Repository
public interface MessageRepository extends JpaRepository<Message,Long> {

    @Query(value="SELECT DISTINCT u.username FROM user u INNER JOIN users_messages um on u.id = um.user_id INNER JOIN message m on um.message_id = m.id WHERE um.message_id IS NOT NULL",nativeQuery=true)
    List<String> selectUsernamesIfMessageNotNull();

}
