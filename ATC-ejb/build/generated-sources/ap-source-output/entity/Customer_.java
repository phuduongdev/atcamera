package entity;

import entity.OrderMaster;
import entity.Rating;
import entity.Wishlist;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T09:41:00")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, String> ctmPassword;
    public static volatile SingularAttribute<Customer, String> ctmDob;
    public static volatile SingularAttribute<Customer, String> ctmDescript;
    public static volatile SingularAttribute<Customer, String> ctmFirstName;
    public static volatile SingularAttribute<Customer, String> ctmEmail;
    public static volatile SingularAttribute<Customer, String> ctmStatus;
    public static volatile SingularAttribute<Customer, String> ctmPhone;
    public static volatile CollectionAttribute<Customer, OrderMaster> orderMasterCollection;
    public static volatile SingularAttribute<Customer, String> ctmImage;
    public static volatile SingularAttribute<Customer, String> ctmid;
    public static volatile SingularAttribute<Customer, String> ctmAddress;
    public static volatile SingularAttribute<Customer, String> ctmSocialToken;
    public static volatile SingularAttribute<Customer, String> ctmLastName;
    public static volatile SingularAttribute<Customer, String> ctmRole;
    public static volatile CollectionAttribute<Customer, Wishlist> wishlistCollection;
    public static volatile SingularAttribute<Customer, Date> createdDate;
    public static volatile CollectionAttribute<Customer, Rating> ratingCollection;

}