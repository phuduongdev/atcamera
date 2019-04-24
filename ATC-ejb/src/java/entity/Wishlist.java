/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DTP
 */
@Entity
@Table(name = "Wishlist")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Wishlist.findAll", query = "SELECT w FROM Wishlist w"),
    @NamedQuery(name = "Wishlist.findByWishid", query = "SELECT w FROM Wishlist w WHERE w.wishid = :wishid"),
    @NamedQuery(name = "Wishlist.findByCreatedDate", query = "SELECT w FROM Wishlist w WHERE w.createdDate = :createdDate")})
public class Wishlist implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "wishid")
    private Integer wishid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @JoinColumn(name = "prdid", referencedColumnName = "prdid")
    @ManyToOne
    private Product prdid;
    @JoinColumn(name = "ctmid", referencedColumnName = "ctmid")
    @ManyToOne
    private Customer ctmid;

    public Wishlist() {
    }

    public Wishlist(Integer wishid) {
        this.wishid = wishid;
    }

    public Integer getWishid() {
        return wishid;
    }

    public void setWishid(Integer wishid) {
        this.wishid = wishid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Product getPrdid() {
        return prdid;
    }

    public void setPrdid(Product prdid) {
        this.prdid = prdid;
    }

    public Customer getCtmid() {
        return ctmid;
    }

    public void setCtmid(Customer ctmid) {
        this.ctmid = ctmid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (wishid != null ? wishid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Wishlist)) {
            return false;
        }
        Wishlist other = (Wishlist) object;
        if ((this.wishid == null && other.wishid != null) || (this.wishid != null && !this.wishid.equals(other.wishid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Wishlist[ wishid=" + wishid + " ]";
    }
    
}
