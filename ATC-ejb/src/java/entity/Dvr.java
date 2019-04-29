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
@Table(name = "DVR")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dvr.findAll", query = "SELECT d FROM Dvr d"),
    @NamedQuery(name = "Dvr.findByDvrid", query = "SELECT d FROM Dvr d WHERE d.dvrid = :dvrid"),
    @NamedQuery(name = "Dvr.findByCreatedDate", query = "SELECT d FROM Dvr d WHERE d.createdDate = :createdDate"),
    @NamedQuery(name = "Dvr.findByDvrChannel", query = "SELECT d FROM Dvr d WHERE d.dvrChannel = :dvrChannel"),
    @NamedQuery(name = "Dvr.findByDvrInPort", query = "SELECT d FROM Dvr d WHERE d.dvrInPort = :dvrInPort"),
    @NamedQuery(name = "Dvr.findByDvrOutPort", query = "SELECT d FROM Dvr d WHERE d.dvrOutPort = :dvrOutPort"),
    @NamedQuery(name = "Dvr.findByDvrCompression", query = "SELECT d FROM Dvr d WHERE d.dvrCompression = :dvrCompression"),
    @NamedQuery(name = "Dvr.findByDvrRecord", query = "SELECT d FROM Dvr d WHERE d.dvrRecord = :dvrRecord"),
    @NamedQuery(name = "Dvr.findByDvrPlayback", query = "SELECT d FROM Dvr d WHERE d.dvrPlayback = :dvrPlayback"),
    @NamedQuery(name = "Dvr.findByDvrPower", query = "SELECT d FROM Dvr d WHERE d.dvrPower = :dvrPower")})
public class Dvr implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "dvrid")
    private String dvrid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 150)
    @Column(name = "dvrChannel")
    private String dvrChannel;
    @Size(max = 150)
    @Column(name = "dvrInPort")
    private String dvrInPort;
    @Size(max = 150)
    @Column(name = "dvrOutPort")
    private String dvrOutPort;
    @Size(max = 150)
    @Column(name = "dvrCompression")
    private String dvrCompression;
    @Size(max = 150)
    @Column(name = "dvrRecord")
    private String dvrRecord;
    @Size(max = 150)
    @Column(name = "dvrPlayback")
    private String dvrPlayback;
    @Size(max = 150)
    @Column(name = "dvrPower")
    private String dvrPower;
    @JoinColumn(name = "prdid", referencedColumnName = "prdid")
    @ManyToOne
    private Product prdid;

    public Dvr() {
    }

    public Dvr(String dvrid) {
        this.dvrid = dvrid;
    }

    public String getDvrid() {
        return dvrid;
    }

    public void setDvrid(String dvrid) {
        this.dvrid = dvrid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getDvrChannel() {
        return dvrChannel;
    }

    public void setDvrChannel(String dvrChannel) {
        this.dvrChannel = dvrChannel;
    }

    public String getDvrInPort() {
        return dvrInPort;
    }

    public void setDvrInPort(String dvrInPort) {
        this.dvrInPort = dvrInPort;
    }

    public String getDvrOutPort() {
        return dvrOutPort;
    }

    public void setDvrOutPort(String dvrOutPort) {
        this.dvrOutPort = dvrOutPort;
    }

    public String getDvrCompression() {
        return dvrCompression;
    }

    public void setDvrCompression(String dvrCompression) {
        this.dvrCompression = dvrCompression;
    }

    public String getDvrRecord() {
        return dvrRecord;
    }

    public void setDvrRecord(String dvrRecord) {
        this.dvrRecord = dvrRecord;
    }

    public String getDvrPlayback() {
        return dvrPlayback;
    }

    public void setDvrPlayback(String dvrPlayback) {
        this.dvrPlayback = dvrPlayback;
    }

    public String getDvrPower() {
        return dvrPower;
    }

    public void setDvrPower(String dvrPower) {
        this.dvrPower = dvrPower;
    }

    public Product getPrdid() {
        return prdid;
    }

    public void setPrdid(Product prdid) {
        this.prdid = prdid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dvrid != null ? dvrid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dvr)) {
            return false;
        }
        Dvr other = (Dvr) object;
        if ((this.dvrid == null && other.dvrid != null) || (this.dvrid != null && !this.dvrid.equals(other.dvrid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Dvr[ dvrid=" + dvrid + " ]";
    }
    
}
