package entity;

import entity.Customer;
import entity.Product;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T09:41:00")
@StaticMetamodel(Rating.class)
public class Rating_ { 

    public static volatile SingularAttribute<Rating, String> rateDescript;
    public static volatile SingularAttribute<Rating, Customer> ctmid;
    public static volatile SingularAttribute<Rating, Integer> rateid;
    public static volatile SingularAttribute<Rating, Date> createdDate;
    public static volatile SingularAttribute<Rating, Product> prdid;
    public static volatile SingularAttribute<Rating, Integer> ratePoint;

}