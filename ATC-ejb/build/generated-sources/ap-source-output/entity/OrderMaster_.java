package entity;

import entity.Customer;
import entity.OrderDetail;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T09:41:00")
@StaticMetamodel(OrderMaster.class)
public class OrderMaster_ { 

    public static volatile SingularAttribute<OrderMaster, Customer> ctmid;
    public static volatile SingularAttribute<OrderMaster, String> odmTitle;
    public static volatile CollectionAttribute<OrderMaster, OrderDetail> orderDetailCollection;
    public static volatile SingularAttribute<OrderMaster, String> odmid;
    public static volatile SingularAttribute<OrderMaster, Date> createdDate;
    public static volatile SingularAttribute<OrderMaster, String> odmStatus;
    public static volatile SingularAttribute<OrderMaster, Double> odmPrice;

}