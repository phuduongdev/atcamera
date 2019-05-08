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
@Table(name = "Rating")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rating.findAll", query = "SELECT r FROM Rating r"),
    @NamedQuery(name = "Rating.findByRateid", query = "SELECT r FROM Rating r WHERE r.rateid = :rateid"),
    @NamedQuery(name = "Rating.findByCreatedDate", query = "SELECT r FROM Rating r WHERE r.createdDate = :createdDate"),
    @NamedQuery(name = "Rating.findByRatePoint", query = "SELECT r FROM Rating r WHERE r.ratePoint = :ratePoint"),
    @NamedQuery(name = "Rating.findByCamid", query = "SELECT r FROM Rating r WHERE r.camid = :camid"),
    @NamedQuery(name = "Rating.findByRateDescript", query = "SELECT r FROM Rating r WHERE r.rateDescript = :rateDescript")})
public class Rating implements Serializable {
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

    public Rating() {
    }

    public Rating(Integer rateid) {
        this.rateid = rateid;
    }

    public Rating(Integer rateid, int ratePoint) {
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
        if (!(object instanceof Rating)) {
            return false;
        }
        Rating other = (Rating) object;
        if ((this.rateid == null && other.rateid != null) || (this.rateid != null && !this.rateid.equals(other.rateid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Rating[ rateid=" + rateid + " ]";
    }
    
}
