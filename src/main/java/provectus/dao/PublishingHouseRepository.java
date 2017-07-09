package provectus.dao;

import org.springframework.data.repository.CrudRepository;
import provectus.models.PublishingHouse;

/**
 * Created by Gvozd on 10.07.2017.
 */
public interface PublishingHouseRepository  extends CrudRepository<PublishingHouse, Integer> {
    public PublishingHouse findByHouseName(String houseName);
}
