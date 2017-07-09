package provectus.models;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Created by Gvozd on 09.07.2017.
 */
@Entity
@Table(name="publishing_house")
public class PublishingHouse {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "publishing_house_id")
    private Integer id;

    @Column(name = "publishing_house_name", unique = true)
    private String houseName;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "publishingHouse")
    private Set<Book> books = new HashSet<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHouseName() {
        return houseName;
    }

    public void setHouseName(String houseName) {
        this.houseName = houseName;
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

        PublishingHouse that = (PublishingHouse) o;

        if (getId() != null ? !getId().equals(that.getId()) : that.getId() != null) return false;
        return getHouseName() != null ? getHouseName().equals(that.getHouseName()) : that.getHouseName() == null;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (getHouseName() != null ? getHouseName().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "PublishingHouse{" +
                "id=" + id +
                ", houseName='" + houseName + '\'' +
                '}';
    }
}
