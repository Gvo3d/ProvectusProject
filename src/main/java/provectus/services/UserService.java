package provectus.services;

import provectus.models.Role;
import provectus.models.User;

import java.util.List;

/**
 * Created by Gvozd on 09.07.2017.
 */
public interface UserService {
    public Iterable<User> getAllUsers();
    public User getUserByLogin(String login);
    public User getUserById(Integer id);
    public List<User> getAllUsersByRole(Role role);
    public void deleteUser(Integer id);
    public Integer getUserCount();
}
