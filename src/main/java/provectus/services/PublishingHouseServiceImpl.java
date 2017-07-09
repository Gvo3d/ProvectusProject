package provectus.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import provectus.dao.PublishingHouseRepository;
import provectus.models.PublishingHouse;

/**
 * Created by Gvozd on 10.07.2017.
 */
@Service
public class PublishingHouseServiceImpl implements PublishingHouseService {

    @Autowired
    PublishingHouseRepository publishingHouseRepository;

    @Override
    public PublishingHouse getPublichingHouseById(Integer id) {
        return publishingHouseRepository.findOne(id);
    }

    @Override
    public PublishingHouse getPublichingHouseByHouseName(String houseName) {
        return publishingHouseRepository.findByHouseName(houseName);
    }

    @Override
    public Iterable<PublishingHouse> getAllPublishingHouses() {
        return publishingHouseRepository.findAll();
    }
}
