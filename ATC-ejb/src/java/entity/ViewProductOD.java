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
import javax.persistence.Lob;
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
@Table(name = "ViewProductOD")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ViewProductOD.findAll", query = "SELECT v FROM ViewProductOD v"),
    @NamedQuery(name = "ViewProductOD.findByPrdid", query = "SELECT v FROM ViewProductOD v WHERE v.prdid = :prdid"),
    @NamedQuery(name = "ViewProductOD.findByCreatedDate", query = "SELECT v FROM ViewProductOD v WHERE v.createdDate = :createdDate"),
    @NamedQuery(name = "ViewProductOD.findByPrdTittle", query = "SELECT v FROM ViewProductOD v WHERE v.prdTittle = :prdTittle"),
    @NamedQuery(name = "ViewProductOD.findByPrdPower", query = "SELECT v FROM ViewProductOD v WHERE v.prdPower = :prdPower"),
    @NamedQuery(name = "ViewProductOD.findByPrdWarranty", query = "SELECT v FROM ViewProductOD v WHERE v.prdWarranty = :prdWarranty"),
    @NamedQuery(name = "ViewProductOD.findByPrdDiscount", query = "SELECT v FROM ViewProductOD v WHERE v.prdDiscount = :prdDiscount"),
    @NamedQuery(name = "ViewProductOD.findByPrdPrice", query = "SELECT v FROM ViewProductOD v WHERE v.prdPrice = :prdPrice"),
    @NamedQuery(name = "ViewProductOD.findByPrdDescript", query = "SELECT v FROM ViewProductOD v WHERE v.prdDescript = :prdDescript"),
    @NamedQuery(name = "ViewProductOD.findByPrdStatus", query = "SELECT v FROM ViewProductOD v WHERE v.prdStatus = :prdStatus"),
    @NamedQuery(name = "ViewProductOD.findByOddid", query = "SELECT v FROM ViewProductOD v WHERE v.oddid = :oddid"),
    @NamedQuery(name = "ViewProductOD.findByExpr1", query = "SELECT v FROM ViewProductOD v WHERE v.expr1 = :expr1"),
    @NamedQuery(name = "ViewProductOD.findByOddQuantity", query = "SELECT v FROM ViewProductOD v WHERE v.oddQuantity = :oddQuantity"),
    @NamedQuery(name = "ViewProductOD.findByOddPrice", query = "SELECT v FROM ViewProductOD v WHERE v.oddPrice = :oddPrice")})
public class ViewProductOD implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "prdid")
    private String prdid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 50)
    @Column(name = "prdTittle")
    private String prdTittle;
    @Size(max = 150)
    @Column(name = "prdPower")
    private String prdPower;
    @Size(max = 50)
    @Column(name = "prdWarranty")
    private String prdWarranty;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "prdImage")
    private String prdImage;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "prdImage2")
    private String prdImage2;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "prdImage3")
    private String prdImage3;
    @Column(name = "prdDiscount")
    private Integer prdDiscount;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "prdPrice")
    private Double prdPrice;
    @Size(max = 1073741823)
    @Column(name = "prdDescript")
    private String prdDescript;
    @Size(max = 10)
    @Column(name = "prdStatus")
    private String prdStatus;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "oddid")
    private String oddid;
    @Column(name = "Expr1")
    @Temporal(TemporalType.TIMESTAMP)
    private Date expr1;
    @Column(name = "oddQuantity")
    private Integer oddQuantity;
    @Column(name = "oddPrice")
    private Double oddPrice;

    public ViewProductOD() {
    }

    public ViewProductOD(String oddid) {
        this.oddid = oddid;
    }

    public String getPrdid() {
        return prdid;
    }

    public void setPrdid(String prdid) {
        this.prdid = prdid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getPrdTittle() {
        return prdTittle;
    }

    public void setPrdTittle(String prdTittle) {
        this.prdTittle = prdTittle;
    }

    public String getPrdPower() {
        return prdPower;
    }

    public void setPrdPower(String prdPower) {
        this.prdPower = prdPower;
    }

    public String getPrdWarranty() {
        return prdWarranty;
    }

    public void setPrdWarranty(String prdWarranty) {
        this.prdWarranty = prdWarranty;
    }

    public String getPrdImage() {
        return prdImage;
    }

    public void setPrdImage(String prdImage) {
        this.prdImage = prdImage;
    }

    public String getPrdImage2() {
        return prdImage2;
    }

    public void setPrdImage2(String prdImage2) {
        this.prdImage2 = prdImage2;
    }

    public String getPrdImage3() {
        return prdImage3;
    }

    public void setPrdImage3(String prdImage3) {
        this.prdImage3 = prdImage3;
    }

    public Integer getPrdDiscount() {
        return prdDiscount;
    }

    public void setPrdDiscount(Integer prdDiscount) {
        this.prdDiscount = prdDiscount;
    }

    public Double getPrdPrice() {
        return prdPrice;
    }

    public void setPrdPrice(Double prdPrice) {
        this.prdPrice = prdPrice;
    }

    public String getPrdDescript() {
        return prdDescript;
    }

    public void setPrdDescript(String prdDescript) {
        this.prdDescript = prdDescript;
    }

    public String getPrdStatus() {
        return prdStatus;
    }

    public void setPrdStatus(String prdStatus) {
        this.prdStatus = prdStatus;
    }

    public String getOddid() {
        return oddid;
    }

    public void setOddid(String oddid) {
        this.oddid = oddid;
    }

    public Date getExpr1() {
        return expr1;
    }

    public void setExpr1(Date expr1) {
        this.expr1 = expr1;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (oddid != null ? oddid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ViewProductOD)) {
            return false;
        }
        ViewProductOD other = (ViewProductOD) object;
        if ((this.oddid == null && other.oddid != null) || (this.oddid != null && !this.oddid.equals(other.oddid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.ViewProductOD[ oddid=" + oddid + " ]";
    }
    
}
