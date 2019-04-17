package entity;

import entity.Product;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T18:56:17")
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile SingularAttribute<Category, String> ctgStatus;
    public static volatile SingularAttribute<Category, String> ctgTitle;
    public static volatile SingularAttribute<Category, String> ctgOrigin;
    public static volatile CollectionAttribute<Category, Product> productCollection;
    public static volatile SingularAttribute<Category, String> ctgid;
    public static volatile SingularAttribute<Category, String> ctgDescript;
    public static volatile SingularAttribute<Category, Date> createdDate;

}