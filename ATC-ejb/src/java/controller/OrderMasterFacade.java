/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.*;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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

    public List<OrderMaster> findOrderMasterByStatus(String odmStatus) {
        try {
            TypedQuery q = em.createQuery("SELECT p FROM OrderMaster p WHERE p.odmStatus like :odmStatus", OrderMaster.class);
            q.setParameter("odmStatus", odmStatus);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
    }

    public List<OrderMaster> findOrderMasterBySevenDaysLater(String odmStatus) {
        try {
            String s = "select * from OrderMaster"
                    + " where createdDate between DATEADD(day, -7, GETDATE()) and GETDATE()"
                    + " and odmStatus like ?";
            Query q = em.createNativeQuery(s, OrderMaster.class);
            q.setParameter("1", odmStatus);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
    }

    public List<OrderMaster> findOrderMasterBy24Hours(String odmStatus) {
        try {
            String s = "select * from OrderMaster"
                    + " where createdDate between DATEADD(Hour, -24, GETDATE()) and GETDATE()"
                    + " and odmStatus like ?";
            Query q = em.createNativeQuery(s, OrderMaster.class);
            q.setParameter("1", odmStatus);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
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

    public List<VCameraOrder> findCameraByOrder(String odmid) {
        try {
            TypedQuery q = em.createQuery("SELECT c FROM VCameraOrder c WHERE c.odmid = :id", VCameraOrder.class);
//                    + " WHERE c.prdid IN (SELECT od.prdid FROM OrderDetail od"
//                    + " WHERE od.odmid = :orderMaster and od.prdid.ctgid.ctgType LIKE 'camera')", VCameraOrder.class);
            q.setParameter("id", odmid);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
    }

    public List<VDvrOrder> findDvrByOrder(String odmid) {
        try {
            TypedQuery q = em.createQuery("SELECT c FROM VDvrOrder c WHERE c.odmid = :id", VDvrOrder.class);
//                    + " WHERE c.prdid IN (SELECT od.prdid FROM OrderDetail od"
//                    + " WHERE od.odmid = :orderMaster and od.prdid.ctgid.ctgType LIKE 'camera')", VCameraOrder.class);
            q.setParameter("id", odmid);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
    }

    public List<VProductOrder> findProductByOrder(String odmid) {
        try {
            TypedQuery q = em.createQuery("SELECT c FROM VProductOrder c WHERE c.odmid = :id AND c.ctgType like 'other'", VDvrOrder.class);
//                    + " WHERE c.prdid IN (SELECT od.prdid FROM OrderDetail od"
//                    + " WHERE od.odmid = :orderMaster and od.prdid.ctgid.ctgType LIKE 'camera')", VCameraOrder.class);
            q.setParameter("id", odmid);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
    }

    public List<OrderMaster> findOrderByCust(Customer id) {
        try {
            TypedQuery q = em.createQuery("SELECT c FROM OrderMaster c WHERE c.ctmid = :id", OrderMaster.class);
//                    + " WHERE c.prdid IN (SELECT od.prdid FROM OrderDetail od"
//                    + " WHERE od.odmid = :orderMaster and od.prdid.ctgid.ctgType LIKE 'camera')", VCameraOrder.class);
            q.setParameter("id", id);
            return q.getResultList();
        } catch (Exception e) {
        }
        return null;
    }
//    public List<VProductOrder> findOtherByOrder(OrderMaster orderMaster) {
//        try {
//            TypedQuery q = em.createQuery("SELECT c FROM VProductOrder c WHERE c.odmid = :odm AND c.prdid.", VCameraOrder.class);
////                    + " WHERE c.prdid IN (SELECT od.prdid FROM OrderDetail od"
////                    + " WHERE od.odmid = :orderMaster and od.prdid.ctgid.ctgType LIKE 'camera')", VCameraOrder.class);
//            q.setParameter("odm", orderMaster);
//            return q.getResultList();
//        } catch (Exception e) {
//        }
//        return null;
//    }

}
