package provectus.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import provectus.dao.RoleRepository;
import provectus.models.Role;

/**
 * Created by Gvozd on 09.07.2017.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleRepository roleRepository;

    @Override
    public Role getRoleByRoleName(String rolename) {
        return roleRepository.findByRoleName(rolename);
    }

    @Override
    public Iterable<Role> getAllRoles() {
        return roleRepository.findAll();
    }
}
