/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.OrderDetail;
import entity.OrderMaster;
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
public class OrderDetailFacade extends AbstractFacade<OrderDetail> {
    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrderDetailFacade() {
        super(OrderDetail.class);
    }
    
    public List<OrderDetail> findOrderDetailsByOrderMasterID(OrderMaster select) {
        TypedQuery q = em.createQuery("SELECT od FROM OrderDetail od WHERE od.odmid = :id", OrderDetail.class);
        q.setParameter("id", select);
        return q.getResultList();
    }
}
