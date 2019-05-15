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
@Table(name = "vCameraOrder")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VCameraOrder.findAll", query = "SELECT v FROM VCameraOrder v"),
    @NamedQuery(name = "VCameraOrder.findByCamid", query = "SELECT v FROM VCameraOrder v WHERE v.camid = :camid"),
    @NamedQuery(name = "VCameraOrder.findByCamSensor", query = "SELECT v FROM VCameraOrder v WHERE v.camSensor = :camSensor"),
    @NamedQuery(name = "VCameraOrder.findByCamResolution", query = "SELECT v FROM VCameraOrder v WHERE v.camResolution = :camResolution"),
    @NamedQuery(name = "VCameraOrder.findByCamIR", query = "SELECT v FROM VCameraOrder v WHERE v.camIR = :camIR"),
    @NamedQuery(name = "VCameraOrder.findByCamLen", query = "SELECT v FROM VCameraOrder v WHERE v.camLen = :camLen"),
    @NamedQuery(name = "VCameraOrder.findByCamVideoStandard", query = "SELECT v FROM VCameraOrder v WHERE v.camVideoStandard = :camVideoStandard"),
    @NamedQuery(name = "VCameraOrder.findByCamRecord", query = "SELECT v FROM VCameraOrder v WHERE v.camRecord = :camRecord"),
    @NamedQuery(name = "VCameraOrder.findByCamTemperature", query = "SELECT v FROM VCameraOrder v WHERE v.camTemperature = :camTemperature"),
    @NamedQuery(name = "VCameraOrder.findByCamMemory", query = "SELECT v FROM VCameraOrder v WHERE v.camMemory = :camMemory"),
    @NamedQuery(name = "VCameraOrder.findByCamMaterial", query = "SELECT v FROM VCameraOrder v WHERE v.camMaterial = :camMaterial"),
    @NamedQuery(name = "VCameraOrder.findByExpr1", query = "SELECT v FROM VCameraOrder v WHERE v.expr1 = :expr1"),
    @NamedQuery(name = "VCameraOrder.findByPrdTittle", query = "SELECT v FROM VCameraOrder v WHERE v.prdTittle = :prdTittle"),
    @NamedQuery(name = "VCameraOrder.findByPrdPower", query = "SELECT v FROM VCameraOrder v WHERE v.prdPower = :prdPower"),
    @NamedQuery(name = "VCameraOrder.findByPrdWarranty", query = "SELECT v FROM VCameraOrder v WHERE v.prdWarranty = :prdWarranty"),
    @NamedQuery(name = "VCameraOrder.findByPrdDiscount", query = "SELECT v FROM VCameraOrder v WHERE v.prdDiscount = :prdDiscount"),
    @NamedQuery(name = "VCameraOrder.findByOdmid", query = "SELECT v FROM VCameraOrder v WHERE v.odmid = :odmid"),
    @NamedQuery(name = "VCameraOrder.findByCreatedDate", query = "SELECT v FROM VCameraOrder v WHERE v.createdDate = :createdDate"),
    @NamedQuery(name = "VCameraOrder.findByInstallationDate", query = "SELECT v FROM VCameraOrder v WHERE v.installationDate = :installationDate"),
    @NamedQuery(name = "VCameraOrder.findByOdmPrice", query = "SELECT v FROM VCameraOrder v WHERE v.odmPrice = :odmPrice"),
    @NamedQuery(name = "VCameraOrder.findByOdmPayments", query = "SELECT v FROM VCameraOrder v WHERE v.odmPayments = :odmPayments"),
    @NamedQuery(name = "VCameraOrder.findByOdmStatus", query = "SELECT v FROM VCameraOrder v WHERE v.odmStatus = :odmStatus"),
    @NamedQuery(name = "VCameraOrder.findByOdmDescript", query = "SELECT v FROM VCameraOrder v WHERE v.odmDescript = :odmDescript"),
    @NamedQuery(name = "VCameraOrder.findByCtmid", query = "SELECT v FROM VCameraOrder v WHERE v.ctmid = :ctmid"),
    @NamedQuery(name = "VCameraOrder.findByOddid", query = "SELECT v FROM VCameraOrder v WHERE v.oddid = :oddid"),
    @NamedQuery(name = "VCameraOrder.findByOddQuantity", query = "SELECT v FROM VCameraOrder v WHERE v.oddQuantity = :oddQuantity"),
    @NamedQuery(name = "VCameraOrder.findByOddPrice", query = "SELECT v FROM VCameraOrder v WHERE v.oddPrice = :oddPrice"),
    @NamedQuery(name = "VCameraOrder.findByPrdPrice", query = "SELECT v FROM VCameraOrder v WHERE v.prdPrice = :prdPrice"),
    @NamedQuery(name = "VCameraOrder.findByPrdDescript", query = "SELECT v FROM VCameraOrder v WHERE v.prdDescript = :prdDescript"),
    @NamedQuery(name = "VCameraOrder.findByCtgid", query = "SELECT v FROM VCameraOrder v WHERE v.ctgid = :ctgid"),
    @NamedQuery(name = "VCameraOrder.findByCtgType", query = "SELECT v FROM VCameraOrder v WHERE v.ctgType = :ctgType"),
    @NamedQuery(name = "VCameraOrder.findByCtgTitle", query = "SELECT v FROM VCameraOrder v WHERE v.ctgTitle = :ctgTitle"),
    @NamedQuery(name = "VCameraOrder.findByCtgOrigin", query = "SELECT v FROM VCameraOrder v WHERE v.ctgOrigin = :ctgOrigin")})
public class VCameraOrder implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "camid")
    private String camid;
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
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Expr1")
    private String expr1;
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
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "odmid")
    private String odmid;
    @Column(name = "createdDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "installationDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date installationDate;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "odmPrice")
    private Double odmPrice;
    @Size(max = 20)
    @Column(name = "odmPayments")
    private String odmPayments;
    @Size(max = 10)
    @Column(name = "odmStatus")
    private String odmStatus;
    @Size(max = 1073741823)
    @Column(name = "odmDescript")
    private String odmDescript;
    @Size(max = 50)
    @Column(name = "ctmid")
    private String ctmid;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "oddid")
    private String oddid;
    @Column(name = "oddQuantity")
    private Integer oddQuantity;
    @Column(name = "oddPrice")
    private Double oddPrice;
    @Column(name = "prdPrice")
    private Double prdPrice;
    @Size(max = 1073741823)
    @Column(name = "prdDescript")
    private String prdDescript;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ctgid")
    private String ctgid;
    @Size(max = 50)
    @Column(name = "ctgType")
    private String ctgType;
    @Size(max = 50)
    @Column(name = "ctgTitle")
    private String ctgTitle;
    @Size(max = 50)
    @Column(name = "ctgOrigin")
    private String ctgOrigin;

    public VCameraOrder() {
    }

    public String getCamid() {
        return camid;
    }

    public void setCamid(String camid) {
        this.camid = camid;
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

    public String getExpr1() {
        return expr1;
    }

    public void setExpr1(String expr1) {
        this.expr1 = expr1;
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

    public String getOdmid() {
        return odmid;
    }

    public void setOdmid(String odmid) {
        this.odmid = odmid;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getInstallationDate() {
        return installationDate;
    }

    public void setInstallationDate(Date installationDate) {
        this.installationDate = installationDate;
    }

    public Double getOdmPrice() {
        return odmPrice;
    }

    public void setOdmPrice(Double odmPrice) {
        this.odmPrice = odmPrice;
    }

    public String getOdmPayments() {
        return odmPayments;
    }

    public void setOdmPayments(String odmPayments) {
        this.odmPayments = odmPayments;
    }

    public String getOdmStatus() {
        return odmStatus;
    }

    public void setOdmStatus(String odmStatus) {
        this.odmStatus = odmStatus;
    }

    public String getOdmDescript() {
        return odmDescript;
    }

    public void setOdmDescript(String odmDescript) {
        this.odmDescript = odmDescript;
    }

    public String getCtmid() {
        return ctmid;
    }

    public void setCtmid(String ctmid) {
        this.ctmid = ctmid;
    }

    public String getOddid() {
        return oddid;
    }

    public void setOddid(String oddid) {
        this.oddid = oddid;
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

    public String getCtgid() {
        return ctgid;
    }

    public void setCtgid(String ctgid) {
        this.ctgid = ctgid;
    }

    public String getCtgType() {
        return ctgType;
    }

    public void setCtgType(String ctgType) {
        this.ctgType = ctgType;
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
    
}
