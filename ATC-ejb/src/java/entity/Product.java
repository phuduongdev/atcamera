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
import javax.persistence.Lob;
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
@Table(name = "Product", catalog = "ATCameraDB", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p"),
    @NamedQuery(name = "Product.findByPrdid", query = "SELECT p FROM Product p WHERE p.prdid = :prdid"),
    @NamedQuery(name = "Product.findByCreatedDate", query = "SELECT p FROM Product p WHERE p.createdDate = :createdDate"),
    @NamedQuery(name = "Product.findByPrdModel", query = "SELECT p FROM Product p WHERE p.prdModel = :prdModel"),
    @NamedQuery(name = "Product.findByPrdType", query = "SELECT p FROM Product p WHERE p.prdType = :prdType"),
    @NamedQuery(name = "Product.findByPrdSensor", query = "SELECT p FROM Product p WHERE p.prdSensor = :prdSensor"),
    @NamedQuery(name = "Product.findByPrdResolution", query = "SELECT p FROM Product p WHERE p.prdResolution = :prdResolution"),
    @NamedQuery(name = "Product.findByPrdInfraredRange", query = "SELECT p FROM Product p WHERE p.prdInfraredRange = :prdInfraredRange"),
    @NamedQuery(name = "Product.findByPrdPower", query = "SELECT p FROM Product p WHERE p.prdPower = :prdPower"),
    @NamedQuery(name = "Product.findByPrdTemperature", query = "SELECT p FROM Product p WHERE p.prdTemperature = :prdTemperature"),
    @NamedQuery(name = "Product.findByPrdMaterial", query = "SELECT p FROM Product p WHERE p.prdMaterial = :prdMaterial"),
    @NamedQuery(name = "Product.findByPrdDescript", query = "SELECT p FROM Product p WHERE p.prdDescript = :prdDescript"),
    @NamedQuery(name = "Product.findByPrdStatus", query = "SELECT p FROM Product p WHERE p.prdStatus = :prdStatus")})
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "prdid", nullable = false, length = 50)
    private String prdid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "createdDate", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 50)
    @Column(name = "prdModel", length = 50)
    private String prdModel;
    @Size(max = 50)
    @Column(name = "prdType", length = 50)
    private String prdType;
    @Size(max = 150)
    @Column(name = "prdSensor", length = 150)
    private String prdSensor;
    @Size(max = 150)
    @Column(name = "prdResolution", length = 150)
    private String prdResolution;
    @Size(max = 150)
    @Column(name = "prdInfraredRange", length = 150)
    private String prdInfraredRange;
    @Size(max = 150)
    @Column(name = "prdPower", length = 150)
    private String prdPower;
    @Size(max = 150)
    @Column(name = "prdTemperature", length = 150)
    private String prdTemperature;
    @Size(max = 150)
    @Column(name = "prdMaterial", length = 150)
    private String prdMaterial;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "prdImage", length = 2147483647)
    private String prdImage;
    @Size(max = 1073741823)
    @Column(name = "prdDescript", length = 1073741823)
    private String prdDescript;
    @Size(max = 10)
    @Column(name = "prdStatus", length = 10)
    private String prdStatus;
    @JoinColumn(name = "ctgid", referencedColumnName = "ctgid")
    @ManyToOne
    private Category ctgid;
    @OneToMany(mappedBy = "prdid")
    private Collection<Rating> ratingCollection;
    @OneToMany(mappedBy = "prdid")
    private Collection<Wishlist> wishlistCollection;
    @OneToMany(mappedBy = "prdid")
    private Collection<OrderDetail> orderDetailCollection;

    public Product() {
    }

    public Product(String prdid) {
        this.prdid = prdid;
    }

    public Product(String prdid, Date createdDate) {
        this.prdid = prdid;
        this.createdDate = createdDate;
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

    public String getPrdModel() {
        return prdModel;
    }

    public void setPrdModel(String prdModel) {
        this.prdModel = prdModel;
    }

    public String getPrdType() {
        return prdType;
    }

    public void setPrdType(String prdType) {
        this.prdType = prdType;
    }

    public String getPrdSensor() {
        return prdSensor;
    }

    public void setPrdSensor(String prdSensor) {
        this.prdSensor = prdSensor;
    }

    public String getPrdResolution() {
        return prdResolution;
    }

    public void setPrdResolution(String prdResolution) {
        this.prdResolution = prdResolution;
    }

    public String getPrdInfraredRange() {
        return prdInfraredRange;
    }

    public void setPrdInfraredRange(String prdInfraredRange) {
        this.prdInfraredRange = prdInfraredRange;
    }

    public String getPrdPower() {
        return prdPower;
    }

    public void setPrdPower(String prdPower) {
        this.prdPower = prdPower;
    }

    public String getPrdTemperature() {
        return prdTemperature;
    }

    public void setPrdTemperature(String prdTemperature) {
        this.prdTemperature = prdTemperature;
    }

    public String getPrdMaterial() {
        return prdMaterial;
    }

    public void setPrdMaterial(String prdMaterial) {
        this.prdMaterial = prdMaterial;
    }

    public String getPrdImage() {
        return prdImage;
    }

    public void setPrdImage(String prdImage) {
        this.prdImage = prdImage;
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

    @XmlTransient
    public Collection<Rating> getRatingCollection() {
        return ratingCollection;
    }

    public void setRatingCollection(Collection<Rating> ratingCollection) {
        this.ratingCollection = ratingCollection;
    }

    @XmlTransient
    public Collection<Wishlist> getWishlistCollection() {
        return wishlistCollection;
    }

    public void setWishlistCollection(Collection<Wishlist> wishlistCollection) {
        this.wishlistCollection = wishlistCollection;
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
