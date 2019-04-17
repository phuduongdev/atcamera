package entity;

import entity.Customer;
import entity.Product;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T09:41:00")
@StaticMetamodel(Wishlist.class)
public class Wishlist_ { 

    public static volatile SingularAttribute<Wishlist, Customer> ctmid;
    public static volatile SingularAttribute<Wishlist, Integer> wishid;
    public static volatile SingularAttribute<Wishlist, Date> createdDate;
    public static volatile SingularAttribute<Wishlist, Product> prdid;

}