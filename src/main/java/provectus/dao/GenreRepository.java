package provectus.dao;

import org.springframework.data.repository.CrudRepository;
import provectus.models.Genre;

/**
 * Created by Gvozd on 10.07.2017.
 */
public interface GenreRepository extends CrudRepository<Genre, Integer> {
    public Genre findByGenreName(String genreName);

}
