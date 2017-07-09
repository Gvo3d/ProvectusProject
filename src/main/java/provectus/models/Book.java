package provectus.models;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Created by Gvozd on 09.07.2017.
 */
@Entity
@Table(name="Books")
public class Book {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Books_id")
    private Integer id;

    @Column(name = "book_name")
    private String bookName;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "Author_book_mag",
            joinColumns = @JoinColumn(name = "Magazine_book_id"),
            inverseJoinColumns = @JoinColumn(name = "Magazine_author_id"))
    private Set<Author> authors = new HashSet<>();

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "Genre_book_mag",
            joinColumns = @JoinColumn(name = "Magazine_book_id"),
            inverseJoinColumns = @JoinColumn(name = "Magazine_genre_id"))
    private Set<Genre> genres = new HashSet<>();

    @Column(name = "book_creation_date")
    private Date creationDate;

    @ManyToOne(fetch = FetchType.EAGER, optional = false, targetEntity = PublishingHouse.class)
    @JoinColumn(name = "book_publishing_house_id")
    private PublishingHouse publishingHouse;

    @Column(name = "book_comment")
    private String comment;


}
