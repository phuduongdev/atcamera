package entity;

import entity.Category;
import entity.OrderDetail;
import entity.Rating;
import entity.Wishlist;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T09:41:00")
@StaticMetamodel(Product.class)
public class Product_ { 

    public static volatile SingularAttribute<Product, String> prdDescript;
    public static volatile SingularAttribute<Product, String> prdModel;
    public static volatile SingularAttribute<Product, String> prdSensor;
    public static volatile SingularAttribute<Product, String> prdImage;
    public static volatile SingularAttribute<Product, String> prdType;
    public static volatile SingularAttribute<Product, String> prdPower;
    public static volatile SingularAttribute<Product, String> prdMaterial;
    public static volatile CollectionAttribute<Product, Wishlist> wishlistCollection;
    public static volatile SingularAttribute<Product, String> prdResolution;
    public static volatile CollectionAttribute<Product, OrderDetail> orderDetailCollection;
    public static volatile SingularAttribute<Product, String> prdTemperature;
    public static volatile SingularAttribute<Product, String> prdStatus;
    public static volatile SingularAttribute<Product, Category> ctgid;
    public static volatile SingularAttribute<Product, String> prdInfraredRange;
    public static volatile SingularAttribute<Product, Date> createdDate;
    public static volatile CollectionAttribute<Product, Rating> ratingCollection;
    public static volatile SingularAttribute<Product, String> prdid;

}