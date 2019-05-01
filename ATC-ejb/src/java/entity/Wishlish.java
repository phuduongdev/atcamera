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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DTP
 */
@Entity
@Table(name = "Wishlish")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Wishlish.findAll", query = "SELECT w FROM Wishlish w"),
    @NamedQuery(name = "Wishlish.findByRateid", query = "SELECT w FROM Wishlish w WHERE w.rateid = :rateid"),
    @NamedQuery(name = "Wishlish.findByCreatedDate", query = "SELECT w FROM Wishlish w WHERE w.createdDate = :createdDate"),
    @NamedQuery(name = "Wishlish.findByRatePoint", query = "SELECT w FROM Wishlish w WHERE w.ratePoint = :ratePoint"),
    @NamedQuery(name = "Wishlish.findByCamid", query = "SELECT w FROM Wishlish w WHERE w.camid = :camid"),
    @NamedQuery(name = "Wishlish.findByRateDescript", query = "SELECT w FROM Wishlish w WHERE w.rateDescript = :rateDescript")})
public class Wishlish implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "rateid")
    private Integer rateid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ratePoint")
    private int ratePoint;
    @Size(max = 50)
    @Column(name = "camid")
    private String camid;
    @Size(max = 1073741823)
    @Column(name = "rateDescript")
    private String rateDescript;
    @JoinColumn(name = "ctmid", referencedColumnName = "ctmid")
    @ManyToOne
    private Customer ctmid;

    public Wishlish() {
    }

    public Wishlish(Integer rateid) {
        this.rateid = rateid;
    }

    public Wishlish(Integer rateid, int ratePoint) {
        this.rateid = rateid;
        this.ratePoint = ratePoint;
    }

    public Integer getRateid() {
        return rateid;
    }

    public void setRateid(Integer rateid) {
        this.rateid = rateid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public int getRatePoint() {
        return ratePoint;
    }

    public void setRatePoint(int ratePoint) {
        this.ratePoint = ratePoint;
    }

    public String getCamid() {
        return camid;
    }

    public void setCamid(String camid) {
        this.camid = camid;
    }

    public String getRateDescript() {
        return rateDescript;
    }

    public void setRateDescript(String rateDescript) {
        this.rateDescript = rateDescript;
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
        hash += (rateid != null ? rateid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Wishlish)) {
            return false;
        }
        Wishlish other = (Wishlish) object;
        if ((this.rateid == null && other.rateid != null) || (this.rateid != null && !this.rateid.equals(other.rateid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Wishlish[ rateid=" + rateid + " ]";
    }
    
}
