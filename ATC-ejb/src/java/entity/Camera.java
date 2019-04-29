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
@Table(name = "Camera")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Camera.findAll", query = "SELECT c FROM Camera c"),
    @NamedQuery(name = "Camera.findByCamid", query = "SELECT c FROM Camera c WHERE c.camid = :camid"),
    @NamedQuery(name = "Camera.findByCreatedDate", query = "SELECT c FROM Camera c WHERE c.createdDate = :createdDate"),
    @NamedQuery(name = "Camera.findByCamSensor", query = "SELECT c FROM Camera c WHERE c.camSensor = :camSensor"),
    @NamedQuery(name = "Camera.findByCamResolution", query = "SELECT c FROM Camera c WHERE c.camResolution = :camResolution"),
    @NamedQuery(name = "Camera.findByCamIR", query = "SELECT c FROM Camera c WHERE c.camIR = :camIR"),
    @NamedQuery(name = "Camera.findByCamLen", query = "SELECT c FROM Camera c WHERE c.camLen = :camLen"),
    @NamedQuery(name = "Camera.findByCamVideoStandard", query = "SELECT c FROM Camera c WHERE c.camVideoStandard = :camVideoStandard"),
    @NamedQuery(name = "Camera.findByCamRecord", query = "SELECT c FROM Camera c WHERE c.camRecord = :camRecord"),
    @NamedQuery(name = "Camera.findByCamTemperature", query = "SELECT c FROM Camera c WHERE c.camTemperature = :camTemperature"),
    @NamedQuery(name = "Camera.findByCamMemory", query = "SELECT c FROM Camera c WHERE c.camMemory = :camMemory"),
    @NamedQuery(name = "Camera.findByCamMaterial", query = "SELECT c FROM Camera c WHERE c.camMaterial = :camMaterial")})
public class Camera implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "camid")
    private String camid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Size(max = 150)
    @Column(name = "camSensor")
    private String camSensor;
    @Size(max = 150)
    @Column(name = "camResolution")
    private String camResolution;
    @Size(max = 150)
    @Column(name = "camIR")
    private String camIR;
    @Size(max = 150)
    @Column(name = "camLen")
    private String camLen;
    @Size(max = 150)
    @Column(name = "camVideoStandard")
    private String camVideoStandard;
    @Size(max = 150)
    @Column(name = "camRecord")
    private String camRecord;
    @Size(max = 150)
    @Column(name = "camTemperature")
    private String camTemperature;
    @Size(max = 150)
    @Column(name = "camMemory")
    private String camMemory;
    @Size(max = 150)
    @Column(name = "camMaterial")
    private String camMaterial;
    @JoinColumn(name = "prdid", referencedColumnName = "prdid")
    @ManyToOne
    private Product prdid;

    public Camera() {
    }

    public Camera(String camid) {
        this.camid = camid;
    }

    public String getCamid() {
        return camid;
    }

    public void setCamid(String camid) {
        this.camid = camid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getCamSensor() {
        return camSensor;
    }

    public void setCamSensor(String camSensor) {
        this.camSensor = camSensor;
    }

    public String getCamResolution() {
        return camResolution;
    }

    public void setCamResolution(String camResolution) {
        this.camResolution = camResolution;
    }

    public String getCamIR() {
        return camIR;
    }

    public void setCamIR(String camIR) {
        this.camIR = camIR;
    }

    public String getCamLen() {
        return camLen;
    }

    public void setCamLen(String camLen) {
        this.camLen = camLen;
    }

    public String getCamVideoStandard() {
        return camVideoStandard;
    }

    public void setCamVideoStandard(String camVideoStandard) {
        this.camVideoStandard = camVideoStandard;
    }

    public String getCamRecord() {
        return camRecord;
    }

    public void setCamRecord(String camRecord) {
        this.camRecord = camRecord;
    }

    public String getCamTemperature() {
        return camTemperature;
    }

    public void setCamTemperature(String camTemperature) {
        this.camTemperature = camTemperature;
    }

    public String getCamMemory() {
        return camMemory;
    }

    public void setCamMemory(String camMemory) {
        this.camMemory = camMemory;
    }

    public String getCamMaterial() {
        return camMaterial;
    }

    public void setCamMaterial(String camMaterial) {
        this.camMaterial = camMaterial;
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
        hash += (camid != null ? camid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Camera)) {
            return false;
        }
        Camera other = (Camera) object;
        if ((this.camid == null && other.camid != null) || (this.camid != null && !this.camid.equals(other.camid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Camera[ camid=" + camid + " ]";
    }
    
}
