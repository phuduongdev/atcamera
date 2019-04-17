package entity;

import entity.OrderMaster;
import entity.Product;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T18:56:17")
@StaticMetamodel(OrderDetail.class)
public class OrderDetail_ { 

    public static volatile SingularAttribute<OrderDetail, String> oddid;
    public static volatile SingularAttribute<OrderDetail, Double> oddPrice;
    public static volatile SingularAttribute<OrderDetail, Integer> oddQuantity;
    public static volatile SingularAttribute<OrderDetail, OrderMaster> odmid;
    public static volatile SingularAttribute<OrderDetail, Date> createdDate;
    public static volatile SingularAttribute<OrderDetail, Product> prdid;

}