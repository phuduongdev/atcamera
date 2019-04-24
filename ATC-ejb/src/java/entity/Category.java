/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
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
@Table(name = "Category")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Category.findAll", query = "SELECT c FROM Category c"),
    @NamedQuery(name = "Category.findByCtgid", query = "SELECT c FROM Category c WHERE c.ctgid = :ctgid"),
    @NamedQuery(name = "Category.findByCreatedDate", query = "SELECT c FROM Category c WHERE c.createdDate = :createdDate"),
    @NamedQuery(name = "Category.findByCtgTitle", query = "SELECT c FROM Category c WHERE c.ctgTitle = :ctgTitle"),
    @NamedQuery(name = "Category.findByCtgOrigin", query = "SELECT c FROM Category c WHERE c.ctgOrigin = :ctgOrigin"),
    @NamedQuery(name = "Category.findByCtgDescript", query = "SELECT c FROM Category c WHERE c.ctgDescript = :ctgDescript"),
    @NamedQuery(name = "Category.findByCtgStatus", query = "SELECT c FROM Category c WHERE c.ctgStatus = :ctgStatus")})
public class Category implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ctgid")
    private String ctgid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 50)
    @Column(name = "ctgTitle")
    private String ctgTitle;
    @Size(max = 50)
    @Column(name = "ctgOrigin")
    private String ctgOrigin;
    @Size(max = 1073741823)
    @Column(name = "ctgDescript")
    private String ctgDescript;
    @Size(max = 10)
    @Column(name = "ctgStatus")
    private String ctgStatus;
    @JoinColumn(name = "collectionId", referencedColumnName = "collectionId")
    @ManyToOne
    private Collection collectionId;
    @OneToMany(mappedBy = "ctgid")
    private List<Product> productList;

    public Category() {
    }

    public Category(String ctgid) {
        this.ctgid = ctgid;
    }

    public String getCtgid() {
        return ctgid;
    }

    public void setCtgid(String ctgid) {
        this.ctgid = ctgid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getCtgTitle() {
        return ctgTitle;
    }

    public void setCtgTitle(String ctgTitle) {
        this.ctgTitle = ctgTitle;
    }

    public String getCtgOrigin() {
        return ctgOrigin;
    }

    public void setCtgOrigin(String ctgOrigin) {
        this.ctgOrigin = ctgOrigin;
    }

    public String getCtgDescript() {
        return ctgDescript;
    }

    public void setCtgDescript(String ctgDescript) {
        this.ctgDescript = ctgDescript;
    }

    public String getCtgStatus() {
        return ctgStatus;
    }

    public void setCtgStatus(String ctgStatus) {
        this.ctgStatus = ctgStatus;
    }

    public Collection getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Collection collectionId) {
        this.collectionId = collectionId;
    }

    @XmlTransient
    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ctgid != null ? ctgid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Category)) {
            return false;
        }
        Category other = (Category) object;
        if ((this.ctgid == null && other.ctgid != null) || (this.ctgid != null && !this.ctgid.equals(other.ctgid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Category[ ctgid=" + ctgid + " ]";
    }
    
}
