package provectus.models;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * Created by Gvozd on 10.07.2017.
 */
@Entity
@Table(name="Orders")
public class Order {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Order_id")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER, optional = true, targetEntity = User.class)
    @JoinColumn(name = "Order_user_id")
    private User client;

    @Column(name = "Order_creation")
    private Date orderCreation;

    @Column(name = "Success_payment")
    private boolean payed;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "Order_book_mag",
            joinColumns = @JoinColumn(name = "Order_id"),
            inverseJoinColumns = @JoinColumn(name = "Book_id"))
    private List<Book> books = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getClient() {
        return client;
    }

    public void setClient(User client) {
        this.client = client;
    }

    public Date getOrderCreation() {
        return orderCreation;
    }

    public void setOrderCreation(Date orderCreation) {
        this.orderCreation = orderCreation;
    }

    public boolean isPayed() {
        return payed;
    }

    public void setPayed(boolean payed) {
        this.payed = payed;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (getId() != null ? !getId().equals(order.getId()) : order.getId() != null) return false;
        return getClient() != null ? getClient().equals(order.getClient()) : order.getClient() == null;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (getClient() != null ? getClient().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", client=" + client +
                ", orderCreation=" + orderCreation +
                ", payed=" + payed +
                ", books=" + books +
                '}';
    }
}
