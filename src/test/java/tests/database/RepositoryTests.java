package tests.database;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;
import provectus.models.User;
import provectus.services.PublishingHouseService;
import provectus.services.RoleService;
import provectus.services.UserService;

import java.util.List;

/**
 * Created by Gvozd on 06.01.2017.
 */
@Transactional
public class RepositoryTests extends AbstractDatabaseTest {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @Autowired
    PublishingHouseService publishingHouseService;

    @Test
    @Rollback(true)
    public void getUserById() {
        System.out.println(roleService.toString());
        Integer userId = 1;
        System.out.println("****************************************************************");
        System.out.println(userService.getUserById(userId));
        System.out.println("****************************************************************");
    }

    @Test
    @Rollback(true)
    public void getRoleByRoleName() {
        System.out.println(roleService.toString());
        String rolename = "USER";
        System.out.println("****************************************************************");
        System.out.println(roleService.getRoleByRoleName(rolename));
        System.out.println("****************************************************************");
    }

   @Test
   @Rollback(true)
   public void getAllRoles() {
       System.out.println(roleService.toString());
       System.out.println("****************************************************************");
       System.out.println(roleService.getAllRoles());
       System.out.println("****************************************************************");
   }

    @Test
    @Rollback(true)
    public void getAllUsers() {
        System.out.println(userService.toString());
        System.out.println("****************************************************************");
        String rolename = "USER";
        List<User> list = userService.getAllUsersByRole(roleService.getRoleByRoleName(rolename));
        for (User user:list){
            System.out.println(user);
        }
        System.out.println("****************************************************************");
    }

    @Test
    @Rollback(true)
    public void getAllPublishingHouses() {
        System.out.println(publishingHouseService.toString());
        System.out.println("****************************************************************");
        System.out.println(publishingHouseService.getAllPublishingHouses());
        System.out.println("****************************************************************");
    }

    @Test
    @Rollback(true)
    public void getPublishingHouseByName() {
        System.out.println(publishingHouseService.toString());
        String pubHouse = "Odessa izd";
        System.out.println("****************************************************************");
        System.out.println(publishingHouseService.getPublichingHouseByHouseName(pubHouse));
        System.out.println("****************************************************************");
    }
}