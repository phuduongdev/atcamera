/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author DTP
 */
@Entity
@Table(name = "OrderMaster")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderMaster.findAll", query = "SELECT o FROM OrderMaster o"),
    @NamedQuery(name = "OrderMaster.findByOdmid", query = "SELECT o FROM OrderMaster o WHERE o.odmid = :odmid"),
    @NamedQuery(name = "OrderMaster.findByCreatedDate", query = "SELECT o FROM OrderMaster o WHERE o.createdDate = :createdDate"),
    @NamedQuery(name = "OrderMaster.findByOdmTitle", query = "SELECT o FROM OrderMaster o WHERE o.odmTitle = :odmTitle"),
    @NamedQuery(name = "OrderMaster.findByOdmPrice", query = "SELECT o FROM OrderMaster o WHERE o.odmPrice = :odmPrice"),
    @NamedQuery(name = "OrderMaster.findByOdmStatus", query = "SELECT o FROM OrderMaster o WHERE o.odmStatus = :odmStatus")})
public class OrderMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "odmid")
    private String odmid;
    @Basic(optional = false)
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 50)
    @Column(name = "odmTitle")
    private String odmTitle;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "odmPrice")
    private Double odmPrice;
    @Size(max = 50)
    @Column(name = "odmStatus")
    private String odmStatus;
    @JoinColumn(name = "ctmid", referencedColumnName = "ctmid")
    @ManyToOne
    private Customer ctmid;
    @OneToMany(mappedBy = "odmid")
    private Collection<OrderDetail> orderDetailCollection;

    public OrderMaster() {
    }

    public OrderMaster(String odmid) {
        this.odmid = odmid;
    }

    public OrderMaster(String odmid, Date createdDate) {
        this.odmid = odmid;
        this.createdDate = createdDate;
    }

    public String getOdmid() {
        return odmid;
    }

    public void setOdmid(String odmid) {
        this.odmid = odmid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getOdmTitle() {
        return odmTitle;
    }

    public void setOdmTitle(String odmTitle) {
        this.odmTitle = odmTitle;
    }

    public Double getOdmPrice() {
        return odmPrice;
    }

    public void setOdmPrice(Double odmPrice) {
        this.odmPrice = odmPrice;
    }

    public String getOdmStatus() {
        return odmStatus;
    }

    public void setOdmStatus(String odmStatus) {
        this.odmStatus = odmStatus;
    }

    public Customer getCtmid() {
        return ctmid;
    }

    public void setCtmid(Customer ctmid) {
        this.ctmid = ctmid;
    }

    @XmlTransient
    public Collection<OrderDetail> getOrderDetailCollection() {
        return orderDetailCollection;
    }

    public void setOrderDetailCollection(Collection<OrderDetail> orderDetailCollection) {
        this.orderDetailCollection = orderDetailCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (odmid != null ? odmid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderMaster)) {
            return false;
        }
        OrderMaster other = (OrderMaster) object;
        if ((this.odmid == null && other.odmid != null) || (this.odmid != null && !this.odmid.equals(other.odmid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderMaster[ odmid=" + odmid + " ]";
    }
    
}
