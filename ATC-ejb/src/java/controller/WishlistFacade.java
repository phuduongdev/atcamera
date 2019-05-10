/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Customer;
import entity.Product;
import entity.Wishlist;
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
public class WishlistFacade extends AbstractFacade<Wishlist> {

    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public WishlistFacade() {
        super(Wishlist.class);
    }

    public List<Wishlist> findWishListbyCtm(Customer ctm) {
        try {
            TypedQuery q = em.createQuery("SELECT c  FROM Wishlist c WHERE c.ctmid = :type", Wishlist.class);
            q.setParameter("type", ctm);
            return q.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Wishlist> Checkexistwl(Customer ctm, Product prd) {
        TypedQuery q = em.createQuery("SELECT c  FROM Wishlist c WHERE c.ctmid = :type and c.prdid = :type1", Wishlist.class);
        q.setParameter("type", ctm);
        q.setParameter("type1", prd);
        return q.getResultList();
    }

    public void insert(Wishlist wl) {
        TypedQuery q = em.createQuery("Insert into Wishlist(prdid,ctmid) values(?,?)", Wishlist.class);
        q.setParameter(1, wl.getPrdid());
        q.setParameter(2, wl.getCtmid());
        q.executeUpdate();
    }
}
