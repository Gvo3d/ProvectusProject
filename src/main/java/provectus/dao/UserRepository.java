package provectus.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import provectus.models.Role;
import provectus.models.User;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    User findByLogin(String login);
    List<User> findByRole(Role role);
}
