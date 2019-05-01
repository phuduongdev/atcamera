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
import javax.persistence.TypedQuery;

/**
 *
 * @author DTP
 */
@Stateless
public class CameraFacade extends AbstractFacade<Camera> {
    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CameraFacade() {
        super(Camera.class);
    }
    
    public Camera findCameraByProduct(Product item){
        TypedQuery q = em.createQuery("SELECT c FROM Camera c WHERE c.prdid = :p", Camera.class);
        q.setParameter("p", item);
        return (Camera) q.getSingleResult();
    }
}
