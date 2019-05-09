/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Camera;
import entity.Dvr;
import entity.Product;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
public class DvrFacade extends AbstractFacade<Dvr> {
    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DvrFacade() {
        super(Dvr.class);
    }
     public Dvr findDVRByProduct(Product item){
        TypedQuery<Dvr> q = em.createQuery("SELECT d FROM Dvr d WHERE d.prdid = :p", Dvr.class);
        q.setParameter("p", item);
        return q.getSingleResult();
    }

  
    
}
