package provectus.services;

import provectus.models.PublishingHouse;

/**
 * Created by Gvozd on 10.07.2017.
 */
public interface PublishingHouseService {
    public PublishingHouse getPublichingHouseById(Integer id);
    public PublishingHouse getPublichingHouseByHouseName(String houseName);
    public Iterable<PublishingHouse> getAllPublishingHouses();
}
