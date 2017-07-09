package provectus.services;

import org.springframework.beans.factory.annotation.Autowired;
import provectus.dao.GenreRepository;
import provectus.models.Genre;

/**
 * Created by Gvozd on 10.07.2017.
 */
public class GenreServiceImpl implements GenreService {

    @Autowired
    GenreRepository genreRepository;

    @Override
    public Genre getGenreByGenreName(String genreName) {
        return genreRepository.findByGenreName(genreName);
    }

    @Override
    public Iterable<Genre> getGenres() {
        return genreRepository.findAll();
    }
}
