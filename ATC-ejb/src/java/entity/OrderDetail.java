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
@Table(name = "OrderDetail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderDetail.findAll", query = "SELECT o FROM OrderDetail o"),
    @NamedQuery(name = "OrderDetail.findByOddid", query = "SELECT o FROM OrderDetail o WHERE o.oddid = :oddid"),
    @NamedQuery(name = "OrderDetail.findByCreatedDate", query = "SELECT o FROM OrderDetail o WHERE o.createdDate = :createdDate"),
    @NamedQuery(name = "OrderDetail.findByOddQuantity", query = "SELECT o FROM OrderDetail o WHERE o.oddQuantity = :oddQuantity"),
    @NamedQuery(name = "OrderDetail.findByOddPrice", query = "SELECT o FROM OrderDetail o WHERE o.oddPrice = :oddPrice")})
public class OrderDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "oddid")
    private String oddid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "oddQuantity")
    private Integer oddQuantity;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "oddPrice")
    private Double oddPrice;
    @JoinColumn(name = "prdid", referencedColumnName = "prdid")
    @ManyToOne
    private Product prdid;
    @JoinColumn(name = "odmid", referencedColumnName = "odmid")
    @ManyToOne
    private OrderMaster odmid;

    public OrderDetail() {
    }

    public OrderDetail(String oddid) {
        this.oddid = oddid;
    }

    public String getOddid() {
        return oddid;
    }

    public void setOddid(String oddid) {
        this.oddid = oddid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Integer getOddQuantity() {
        return oddQuantity;
    }

    public void setOddQuantity(Integer oddQuantity) {
        this.oddQuantity = oddQuantity;
    }

    public Double getOddPrice() {
        return oddPrice;
    }

    public void setOddPrice(Double oddPrice) {
        this.oddPrice = oddPrice;
    }

    public Product getPrdid() {
        return prdid;
    }

    public void setPrdid(Product prdid) {
        this.prdid = prdid;
    }

    public OrderMaster getOdmid() {
        return odmid;
    }

    public void setOdmid(OrderMaster odmid) {
        this.odmid = odmid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (oddid != null ? oddid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderDetail)) {
            return false;
        }
        OrderDetail other = (OrderDetail) object;
        if ((this.oddid == null && other.oddid != null) || (this.oddid != null && !this.oddid.equals(other.oddid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderDetail[ oddid=" + oddid + " ]";
    }
    
}
