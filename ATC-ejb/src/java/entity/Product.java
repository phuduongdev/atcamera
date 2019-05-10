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
import javax.persistence.Lob;
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
@Table(name = "Product")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p"),
    @NamedQuery(name = "Product.findByPrdid", query = "SELECT p FROM Product p WHERE p.prdid = :prdid"),
    @NamedQuery(name = "Product.findByCreatedDate", query = "SELECT p FROM Product p WHERE p.createdDate = :createdDate"),
    @NamedQuery(name = "Product.findByPrdTittle", query = "SELECT p FROM Product p WHERE p.prdTittle = :prdTittle"),
    @NamedQuery(name = "Product.findByPrdPower", query = "SELECT p FROM Product p WHERE p.prdPower = :prdPower"),
    @NamedQuery(name = "Product.findByPrdWarranty", query = "SELECT p FROM Product p WHERE p.prdWarranty = :prdWarranty"),
    @NamedQuery(name = "Product.findByPrdDiscount", query = "SELECT p FROM Product p WHERE p.prdDiscount = :prdDiscount"),
    @NamedQuery(name = "Product.findByPrdPrice", query = "SELECT p FROM Product p WHERE p.prdPrice = :prdPrice"),
    @NamedQuery(name = "Product.findByPrdDescript", query = "SELECT p FROM Product p WHERE p.prdDescript = :prdDescript"),
    @NamedQuery(name = "Product.findByPrdStatus", query = "SELECT p FROM Product p WHERE p.prdStatus = :prdStatus")})
public class Product implements Serializable {
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
    @JoinColumn(name = "ctgid", referencedColumnName = "ctgid")
    @ManyToOne
    private Category ctgid;

    public Product() {
    }

    public Product(String prdid) {
        this.prdid = prdid;
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

    public Category getCtgid() {
        return ctgid;
    }

    public void setCtgid(Category ctgid) {
        this.ctgid = ctgid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (prdid != null ? prdid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Product)) {
            return false;
        }
        Product other = (Product) object;
        if ((this.prdid == null && other.prdid != null) || (this.prdid != null && !this.prdid.equals(other.prdid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Product[ prdid=" + prdid + " ]";
    }
    
}
