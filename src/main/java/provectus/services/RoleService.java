package provectus.services;

import provectus.models.Role;

/**
 * Created by Gvozd on 09.07.2017.
 */
public interface RoleService {
    public Role getRoleByRoleName(String rolename);
    public Iterable<Role> getAllRoles();
}
