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
        TypedQuery q = em.createQuery("SELECT c FROM Product c WHERE c.ctgid = :type", Product.class);
        q.setParameter("type", ctg);
        return q.getResultList();
    }
    public List<Product> findProductall() {
        TypedQuery q = em.createQuery("SELECT c FROM Product c Order by c.createdDate desc ", Product.class);
        
        return q.setMaxResults(10).getResultList();
    }
    public List<Product> Listproduct(String ctgType) {
        try {
            TypedQuery q = em.createQuery("SELECT  p FROM Product p where  p.ctgid.ctgType = :type Order by p.createdDate desc", Product.class);
        q.setParameter("type",ctgType);
        return q.setMaxResults(10).getResultList();
        } catch (Exception e) {
        }
        
       return null;
    }

    public List<Product> findProductbyName(String name) {
        try {
            TypedQuery q = em.createQuery("SELECT c  FROM Product c WHERE c.prdTittle like :type", Product.class);
            q.setParameter("type", "%" + name + "%");
            return q.getResultList();
        } catch (Exception e) {

        }
        return null;
    }
    public List<Product> findProductbyid(String id) {
        try {
            TypedQuery q = em.createQuery("SELECT c  FROM Product c WHERE c.prdid = :type", Product.class);
            q.setParameter("type", id);
            return q.getResultList();
        } catch (Exception e) {

        }
        return null;
    }

    public List<Product> findProductbyPrice(int price) {
        try {
            TypedQuery q = em.createQuery("SELECT c  FROM Product c WHERE c.prdPrice > :type1 and c.prdPrice < :type", Product.class);
            q.setParameter("type1", price);
            q.setParameter("type", price+1000000);
            return q.getResultList();
        } catch (Exception e) {

        }
        return null;
    }

}
