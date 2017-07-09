package provectus.dao;

import org.springframework.data.repository.CrudRepository;
import provectus.models.Role;

/**
 * Created by Gvozd on 09.07.2017.
 */
public interface RoleRepository  extends CrudRepository<Role, Integer> {
    Role findByRoleName(String rolename);
}
