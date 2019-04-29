/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.OrderDetail;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
    
}
