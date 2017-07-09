package provectus.models;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Created by Gvozd on 09.07.2017.
 */
@Entity
@Table(name="Genres")
public class Genre {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Genre_id")
    private Integer id;

    @Column(name = "Genre_name", unique = true)
    private String genreName;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "Genre_book_mag",
            joinColumns = @JoinColumn(name = "Magazine_genre_id"),
            inverseJoinColumns = @JoinColumn(name = "Magazine_book_id"))
    private Set<Book> books = new HashSet<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGenreName() {
        return genreName;
    }

    public void setGenreName(String genreName) {
        this.genreName = genreName;
    }

    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Genre genre = (Genre) o;

        if (getId() != null ? !getId().equals(genre.getId()) : genre.getId() != null) return false;
        return getGenreName() != null ? getGenreName().equals(genre.getGenreName()) : genre.getGenreName() == null;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (getGenreName() != null ? getGenreName().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Genre{" +
                "id=" + id +
                ", genreName='" + genreName + '\'' +
                '}';
    }
}
