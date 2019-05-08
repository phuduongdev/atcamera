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
import javax.persistence.Lob;
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
@Table(name = "Customer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c"),
    @NamedQuery(name = "Customer.findByCtmid", query = "SELECT c FROM Customer c WHERE c.ctmid = :ctmid"),
    @NamedQuery(name = "Customer.findByCreatedDate", query = "SELECT c FROM Customer c WHERE c.createdDate = :createdDate"),
    @NamedQuery(name = "Customer.findByCtmFirstName", query = "SELECT c FROM Customer c WHERE c.ctmFirstName = :ctmFirstName"),
    @NamedQuery(name = "Customer.findByCtmLastName", query = "SELECT c FROM Customer c WHERE c.ctmLastName = :ctmLastName"),
    @NamedQuery(name = "Customer.findByCtmAddress", query = "SELECT c FROM Customer c WHERE c.ctmAddress = :ctmAddress"),
    @NamedQuery(name = "Customer.findByCtmPhone", query = "SELECT c FROM Customer c WHERE c.ctmPhone = :ctmPhone"),
    @NamedQuery(name = "Customer.findByCtmEmail", query = "SELECT c FROM Customer c WHERE c.ctmEmail = :ctmEmail"),
    @NamedQuery(name = "Customer.findByCtmDob", query = "SELECT c FROM Customer c WHERE c.ctmDob = :ctmDob"),
    @NamedQuery(name = "Customer.findByCtmDescript", query = "SELECT c FROM Customer c WHERE c.ctmDescript = :ctmDescript"),
    @NamedQuery(name = "Customer.findByCtmRole", query = "SELECT c FROM Customer c WHERE c.ctmRole = :ctmRole"),
    @NamedQuery(name = "Customer.findByCtmStatus", query = "SELECT c FROM Customer c WHERE c.ctmStatus = :ctmStatus")})
public class Customer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ctmid")
    private String ctmid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 50)
    @Column(name = "ctmFirstName")
    private String ctmFirstName;
    @Size(max = 50)
    @Column(name = "ctmLastName")
    private String ctmLastName;
    @Size(max = 1073741823)
    @Column(name = "ctmAddress")
    private String ctmAddress;
    @Size(max = 20)
    @Column(name = "ctmPhone")
    private String ctmPhone;
    @Size(max = 200)
    @Column(name = "ctmEmail")
    private String ctmEmail;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 2147483647)
    @Column(name = "ctmPassword")
    private String ctmPassword;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "ctmSocialToken")
    private String ctmSocialToken;
    @Size(max = 10)
    @Column(name = "ctmDob")
    private String ctmDob;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "ctmImage")
    private String ctmImage;
    @Size(max = 1073741823)
    @Column(name = "ctmDescript")
    private String ctmDescript;
    @Size(max = 10)
    @Column(name = "ctmRole")
    private String ctmRole;
    @Size(max = 50)
    @Column(name = "ctmStatus")
    private String ctmStatus;
    @OneToMany(mappedBy = "ctmid")
    private Collection<Rating> ratingCollection;
    @OneToMany(mappedBy = "ctmid")
    private Collection<Wishlist> wishlistCollection;
    @OneToMany(mappedBy = "ctmid")
    private Collection<OrderMaster> orderMasterCollection;

    public Customer() {
    }

    public Customer(String ctmid) {
        this.ctmid = ctmid;
    }

    public Customer(String ctmid, String ctmPassword) {
        this.ctmid = ctmid;
        this.ctmPassword = ctmPassword;
    }

    public String getCtmid() {
        return ctmid;
    }

    public void setCtmid(String ctmid) {
        this.ctmid = ctmid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getCtmFirstName() {
        return ctmFirstName;
    }

    public void setCtmFirstName(String ctmFirstName) {
        this.ctmFirstName = ctmFirstName;
    }

    public String getCtmLastName() {
        return ctmLastName;
    }

    public void setCtmLastName(String ctmLastName) {
        this.ctmLastName = ctmLastName;
    }

    public String getCtmAddress() {
        return ctmAddress;
    }

    public void setCtmAddress(String ctmAddress) {
        this.ctmAddress = ctmAddress;
    }

    public String getCtmPhone() {
        return ctmPhone;
    }

    public void setCtmPhone(String ctmPhone) {
        this.ctmPhone = ctmPhone;
    }

    public String getCtmEmail() {
        return ctmEmail;
    }

    public void setCtmEmail(String ctmEmail) {
        this.ctmEmail = ctmEmail;
    }

    public String getCtmPassword() {
        return ctmPassword;
    }

    public void setCtmPassword(String ctmPassword) {
        this.ctmPassword = ctmPassword;
    }

    public String getCtmSocialToken() {
        return ctmSocialToken;
    }

    public void setCtmSocialToken(String ctmSocialToken) {
        this.ctmSocialToken = ctmSocialToken;
    }

    public String getCtmDob() {
        return ctmDob;
    }

    public void setCtmDob(String ctmDob) {
        this.ctmDob = ctmDob;
    }

    public String getCtmImage() {
        return ctmImage;
    }

    public void setCtmImage(String ctmImage) {
        this.ctmImage = ctmImage;
    }

    public String getCtmDescript() {
        return ctmDescript;
    }

    public void setCtmDescript(String ctmDescript) {
        this.ctmDescript = ctmDescript;
    }

    public String getCtmRole() {
        return ctmRole;
    }

    public void setCtmRole(String ctmRole) {
        this.ctmRole = ctmRole;
    }

    public String getCtmStatus() {
        return ctmStatus;
    }

    public void setCtmStatus(String ctmStatus) {
        this.ctmStatus = ctmStatus;
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
    public Collection<OrderMaster> getOrderMasterCollection() {
        return orderMasterCollection;
    }

    public void setOrderMasterCollection(Collection<OrderMaster> orderMasterCollection) {
        this.orderMasterCollection = orderMasterCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ctmid != null ? ctmid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customer)) {
            return false;
        }
        Customer other = (Customer) object;
        if ((this.ctmid == null && other.ctmid != null) || (this.ctmid != null && !this.ctmid.equals(other.ctmid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Customer[ ctmid=" + ctmid + " ]";
    }
    
}
