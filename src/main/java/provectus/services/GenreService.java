package provectus.services;

import provectus.models.Genre;

/**
 * Created by Gvozd on 10.07.2017.
 */
public interface GenreService {
    public Genre getGenreByGenreName(String genreName);
    public Iterable<Genre> getGenres();
}
