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
@Table(name = "vDvrOrder")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VDvrOrder.findAll", query = "SELECT v FROM VDvrOrder v"),
    @NamedQuery(name = "VDvrOrder.findByOddid", query = "SELECT v FROM VDvrOrder v WHERE v.oddid = :oddid"),
    @NamedQuery(name = "VDvrOrder.findByOddQuantity", query = "SELECT v FROM VDvrOrder v WHERE v.oddQuantity = :oddQuantity"),
    @NamedQuery(name = "VDvrOrder.findByOddPrice", query = "SELECT v FROM VDvrOrder v WHERE v.oddPrice = :oddPrice"),
    @NamedQuery(name = "VDvrOrder.findByPrdid", query = "SELECT v FROM VDvrOrder v WHERE v.prdid = :prdid"),
    @NamedQuery(name = "VDvrOrder.findByPrdTittle", query = "SELECT v FROM VDvrOrder v WHERE v.prdTittle = :prdTittle"),
    @NamedQuery(name = "VDvrOrder.findByPrdPower", query = "SELECT v FROM VDvrOrder v WHERE v.prdPower = :prdPower"),
    @NamedQuery(name = "VDvrOrder.findByPrdWarranty", query = "SELECT v FROM VDvrOrder v WHERE v.prdWarranty = :prdWarranty"),
    @NamedQuery(name = "VDvrOrder.findByPrdDiscount", query = "SELECT v FROM VDvrOrder v WHERE v.prdDiscount = :prdDiscount"),
    @NamedQuery(name = "VDvrOrder.findByPrdPrice", query = "SELECT v FROM VDvrOrder v WHERE v.prdPrice = :prdPrice"),
    @NamedQuery(name = "VDvrOrder.findByPrdDescript", query = "SELECT v FROM VDvrOrder v WHERE v.prdDescript = :prdDescript"),
    @NamedQuery(name = "VDvrOrder.findByPrdStatus", query = "SELECT v FROM VDvrOrder v WHERE v.prdStatus = :prdStatus"),
    @NamedQuery(name = "VDvrOrder.findByDvrid", query = "SELECT v FROM VDvrOrder v WHERE v.dvrid = :dvrid"),
    @NamedQuery(name = "VDvrOrder.findByDvrChannel", query = "SELECT v FROM VDvrOrder v WHERE v.dvrChannel = :dvrChannel"),
    @NamedQuery(name = "VDvrOrder.findByDvrInPort", query = "SELECT v FROM VDvrOrder v WHERE v.dvrInPort = :dvrInPort"),
    @NamedQuery(name = "VDvrOrder.findByDvrOutPort", query = "SELECT v FROM VDvrOrder v WHERE v.dvrOutPort = :dvrOutPort"),
    @NamedQuery(name = "VDvrOrder.findByDvrCompression", query = "SELECT v FROM VDvrOrder v WHERE v.dvrCompression = :dvrCompression"),
    @NamedQuery(name = "VDvrOrder.findByDvrRecord", query = "SELECT v FROM VDvrOrder v WHERE v.dvrRecord = :dvrRecord"),
    @NamedQuery(name = "VDvrOrder.findByDvrPlayback", query = "SELECT v FROM VDvrOrder v WHERE v.dvrPlayback = :dvrPlayback"),
    @NamedQuery(name = "VDvrOrder.findByDvrPower", query = "SELECT v FROM VDvrOrder v WHERE v.dvrPower = :dvrPower"),
    @NamedQuery(name = "VDvrOrder.findByOdmid", query = "SELECT v FROM VDvrOrder v WHERE v.odmid = :odmid"),
    @NamedQuery(name = "VDvrOrder.findByCreatedDate", query = "SELECT v FROM VDvrOrder v WHERE v.createdDate = :createdDate"),
    @NamedQuery(name = "VDvrOrder.findByInstallationDate", query = "SELECT v FROM VDvrOrder v WHERE v.installationDate = :installationDate"),
    @NamedQuery(name = "VDvrOrder.findByOdmPrice", query = "SELECT v FROM VDvrOrder v WHERE v.odmPrice = :odmPrice"),
    @NamedQuery(name = "VDvrOrder.findByOdmPayments", query = "SELECT v FROM VDvrOrder v WHERE v.odmPayments = :odmPayments"),
    @NamedQuery(name = "VDvrOrder.findByOdmStatus", query = "SELECT v FROM VDvrOrder v WHERE v.odmStatus = :odmStatus"),
    @NamedQuery(name = "VDvrOrder.findByOdmDescript", query = "SELECT v FROM VDvrOrder v WHERE v.odmDescript = :odmDescript"),
    @NamedQuery(name = "VDvrOrder.findByCtmid", query = "SELECT v FROM VDvrOrder v WHERE v.ctmid = :ctmid"),
    @NamedQuery(name = "VDvrOrder.findByCtgid", query = "SELECT v FROM VDvrOrder v WHERE v.ctgid = :ctgid"),
    @NamedQuery(name = "VDvrOrder.findByCtgType", query = "SELECT v FROM VDvrOrder v WHERE v.ctgType = :ctgType"),
    @NamedQuery(name = "VDvrOrder.findByCtgTitle", query = "SELECT v FROM VDvrOrder v WHERE v.ctgTitle = :ctgTitle"),
    @NamedQuery(name = "VDvrOrder.findByCtgOrigin", query = "SELECT v FROM VDvrOrder v WHERE v.ctgOrigin = :ctgOrigin")})
public class VDvrOrder implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "oddid")
    private String oddid;
    @Column(name = "oddQuantity")
    private Integer oddQuantity;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "oddPrice")
    private Double oddPrice;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "prdid")
    private String prdid;
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
    @Column(name = "prdPrice")
    private Double prdPrice;
    @Size(max = 1073741823)
    @Column(name = "prdDescript")
    private String prdDescript;
    @Size(max = 10)
    @Column(name = "prdStatus")
    private String prdStatus;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "dvrid")
    private String dvrid;
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

    public VDvrOrder() {
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

    public String getPrdid() {
        return prdid;
    }

    public void setPrdid(String prdid) {
        this.prdid = prdid;
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

    public String getDvrid() {
        return dvrid;
    }

    public void setDvrid(String dvrid) {
        this.dvrid = dvrid;
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
