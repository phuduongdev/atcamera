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
@Table(name = "Account")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Account.findAll", query = "SELECT a FROM Account a"),
    @NamedQuery(name = "Account.findByAccid", query = "SELECT a FROM Account a WHERE a.accid = :accid"),
    @NamedQuery(name = "Account.findByCreatedDate", query = "SELECT a FROM Account a WHERE a.createdDate = :createdDate"),
    @NamedQuery(name = "Account.findByAccUserName", query = "SELECT a FROM Account a WHERE a.accUserName = :accUserName"),
    @NamedQuery(name = "Account.findByAccPassword", query = "SELECT a FROM Account a WHERE a.accPassword = :accPassword"),
    @NamedQuery(name = "Account.findByAccRole", query = "SELECT a FROM Account a WHERE a.accRole = :accRole"),
    @NamedQuery(name = "Account.findByAccDescript", query = "SELECT a FROM Account a WHERE a.accDescript = :accDescript"),
    @NamedQuery(name = "Account.findByAccStatus", query = "SELECT a FROM Account a WHERE a.accStatus = :accStatus")})
public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "accid")
    private String accid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 50)
    @Column(name = "accUserName")
    private String accUserName;
    @Size(max = 150)
    @Column(name = "accPassword")
    private String accPassword;
    @Size(max = 10)
    @Column(name = "accRole")
    private String accRole;
    @Size(max = 1073741823)
    @Column(name = "accDescript")
    private String accDescript;
    @Size(max = 50)
    @Column(name = "accStatus")
    private String accStatus;

    public Account() {
    }

    public Account(String accid) {
        this.accid = accid;
    }

    public String getAccid() {
        return accid;
    }

    public void setAccid(String accid) {
        this.accid = accid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getAccUserName() {
        return accUserName;
    }

    public void setAccUserName(String accUserName) {
        this.accUserName = accUserName;
    }

    public String getAccPassword() {
        return accPassword;
    }

    public void setAccPassword(String accPassword) {
        this.accPassword = accPassword;
    }

    public String getAccRole() {
        return accRole;
    }

    public void setAccRole(String accRole) {
        this.accRole = accRole;
    }

    public String getAccDescript() {
        return accDescript;
    }

    public void setAccDescript(String accDescript) {
        this.accDescript = accDescript;
    }

    public String getAccStatus() {
        return accStatus;
    }

    public void setAccStatus(String accStatus) {
        this.accStatus = accStatus;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (accid != null ? accid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Account)) {
            return false;
        }
        Account other = (Account) object;
        if ((this.accid == null && other.accid != null) || (this.accid != null && !this.accid.equals(other.accid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Account[ accid=" + accid + " ]";
    }
    
}
