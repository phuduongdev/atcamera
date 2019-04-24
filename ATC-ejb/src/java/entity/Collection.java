/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author DTP
 */
@Entity
@Table(name = "Collection")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Collection.findAll", query = "SELECT c FROM Collection c"),
    @NamedQuery(name = "Collection.findByCollectionId", query = "SELECT c FROM Collection c WHERE c.collectionId = :collectionId"),
    @NamedQuery(name = "Collection.findByCollectionName", query = "SELECT c FROM Collection c WHERE c.collectionName = :collectionName"),
    @NamedQuery(name = "Collection.findByCollectionStatus", query = "SELECT c FROM Collection c WHERE c.collectionStatus = :collectionStatus"),
    @NamedQuery(name = "Collection.findByCollectionDescript", query = "SELECT c FROM Collection c WHERE c.collectionDescript = :collectionDescript")})
public class Collection implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "collectionId")
    private Integer collectionId;
    @Size(max = 50)
    @Column(name = "collectionName")
    private String collectionName;
    @Size(max = 10)
    @Column(name = "collectionStatus")
    private String collectionStatus;
    @Size(max = 1073741823)
    @Column(name = "collectionDescript")
    private String collectionDescript;
    @OneToMany(mappedBy = "collectionId")
    private List<Category> categoryList;

    public Collection() {
    }

    public Collection(Integer collectionId) {
        this.collectionId = collectionId;
    }

    public Integer getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Integer collectionId) {
        this.collectionId = collectionId;
    }

    public String getCollectionName() {
        return collectionName;
    }

    public void setCollectionName(String collectionName) {
        this.collectionName = collectionName;
    }

    public String getCollectionStatus() {
        return collectionStatus;
    }

    public void setCollectionStatus(String collectionStatus) {
        this.collectionStatus = collectionStatus;
    }

    public String getCollectionDescript() {
        return collectionDescript;
    }

    public void setCollectionDescript(String collectionDescript) {
        this.collectionDescript = collectionDescript;
    }

    @XmlTransient
    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (collectionId != null ? collectionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Collection)) {
            return false;
        }
        Collection other = (Collection) object;
        if ((this.collectionId == null && other.collectionId != null) || (this.collectionId != null && !this.collectionId.equals(other.collectionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Collection[ collectionId=" + collectionId + " ]";
    }
    
}
