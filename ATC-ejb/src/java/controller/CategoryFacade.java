/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Category;
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
public class CategoryFacade extends AbstractFacade<Category> {

    @PersistenceContext(unitName = "ATC-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CategoryFacade() {
        super(Category.class);
    }

    public List<String> findDistinctCategoryType() {
        TypedQuery q = em.createQuery("SELECT DISTINCT c.ctgType FROM Category c", Category.class);
        return q.getResultList();
    }

    public List<Category> findSerialOfCamera() {
        TypedQuery q = em.createQuery("SELECT c FROM Category c WHERE c.ctgType LIKE 'camera'", Category.class);
        return q.getResultList();
    }

    public List<Category> findSerialOfDvr() {
        TypedQuery q = em.createQuery("SELECT c FROM Category c WHERE c.ctgType LIKE 'dvr'", Category.class);
        return q.getResultList();
    }

    public List<Category> findSerialOfOther() {
        TypedQuery q = em.createQuery("SELECT c FROM Category c WHERE c.ctgType LIKE 'other'", Category.class);
        return q.getResultList();
    }

    public List<Category> findCategoryTitleByType(String type) {
        TypedQuery q = em.createQuery("SELECT c  FROM Category c WHERE c.ctgType = :type", Category.class);
        q.setParameter("type", type);

        return q.getResultList();
    }
}
