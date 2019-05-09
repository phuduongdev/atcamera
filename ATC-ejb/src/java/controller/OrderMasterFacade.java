/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.OrderMaster;
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
public class OrderMasterFacade extends AbstractFacade<OrderMaster> {

    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrderMasterFacade() {
        super(OrderMaster.class);
    }

    //    xu ly cho phan order
    public List<Product> findProductsByCtgType(String type) {
        TypedQuery q = em.createQuery("SELECT p FROM Product p WHERE p.ctgid.ctgType = :type", Product.class);
        q.setParameter("type", type);
        return q.getResultList();
    }
    
    public List<Product> findFitDvr(String type) {
        TypedQuery q = em.createQuery("SELECT p FROM Product p WHERE p.ctgid.ctgType = :type", Product.class);
        q.setParameter("type", type);
        return q.getResultList();
    }
}
