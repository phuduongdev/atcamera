/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import entity.Category;
import entity.Product;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
public class ProductFacade extends AbstractFacade<Product> {
    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductFacade() {
        super(Product.class);
    }
    public List<Product> findProductbyCtg(Category ctg) {
         TypedQuery q = em.createQuery("SELECT c  FROM Product c WHERE c.ctgid = :type", Product.class);
        q.setParameter("type", ctg);
        return q.getResultList();
    }
     public List<Product> Listproduct(String ctgType) {
         TypedQuery q = em.createQuery("SELECT  p FROM Product p where p.ctgid.ctgType = :type", Product.class);
        q.setParameter("type", ctgType);
        return q.getResultList().subList(1, 10);
    }

    
}
