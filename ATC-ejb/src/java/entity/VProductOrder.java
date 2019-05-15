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
@Table(name = "vProductOrder")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VProductOrder.findAll", query = "SELECT v FROM VProductOrder v"),
    @NamedQuery(name = "VProductOrder.findByOdmid", query = "SELECT v FROM VProductOrder v WHERE v.odmid = :odmid"),
    @NamedQuery(name = "VProductOrder.findByCreatedDate", query = "SELECT v FROM VProductOrder v WHERE v.createdDate = :createdDate"),
    @NamedQuery(name = "VProductOrder.findByInstallationDate", query = "SELECT v FROM VProductOrder v WHERE v.installationDate = :installationDate"),
    @NamedQuery(name = "VProductOrder.findByOdmPrice", query = "SELECT v FROM VProductOrder v WHERE v.odmPrice = :odmPrice"),
    @NamedQuery(name = "VProductOrder.findByOdmPayments", query = "SELECT v FROM VProductOrder v WHERE v.odmPayments = :odmPayments"),
    @NamedQuery(name = "VProductOrder.findByOdmStatus", query = "SELECT v FROM VProductOrder v WHERE v.odmStatus = :odmStatus"),
    @NamedQuery(name = "VProductOrder.findByOdmDescript", query = "SELECT v FROM VProductOrder v WHERE v.odmDescript = :odmDescript"),
    @NamedQuery(name = "VProductOrder.findByCtmid", query = "SELECT v FROM VProductOrder v WHERE v.ctmid = :ctmid"),
    @NamedQuery(name = "VProductOrder.findByOddid", query = "SELECT v FROM VProductOrder v WHERE v.oddid = :oddid"),
    @NamedQuery(name = "VProductOrder.findByOddQuantity", query = "SELECT v FROM VProductOrder v WHERE v.oddQuantity = :oddQuantity"),
    @NamedQuery(name = "VProductOrder.findByOddPrice", query = "SELECT v FROM VProductOrder v WHERE v.oddPrice = :oddPrice"),
    @NamedQuery(name = "VProductOrder.findByPrdid", query = "SELECT v FROM VProductOrder v WHERE v.prdid = :prdid"),
    @NamedQuery(name = "VProductOrder.findByPrdTittle", query = "SELECT v FROM VProductOrder v WHERE v.prdTittle = :prdTittle"),
    @NamedQuery(name = "VProductOrder.findByPrdPower", query = "SELECT v FROM VProductOrder v WHERE v.prdPower = :prdPower"),
    @NamedQuery(name = "VProductOrder.findByPrdWarranty", query = "SELECT v FROM VProductOrder v WHERE v.prdWarranty = :prdWarranty"),
    @NamedQuery(name = "VProductOrder.findByPrdDiscount", query = "SELECT v FROM VProductOrder v WHERE v.prdDiscount = :prdDiscount"),
    @NamedQuery(name = "VProductOrder.findByPrdPrice", query = "SELECT v FROM VProductOrder v WHERE v.prdPrice = :prdPrice"),
    @NamedQuery(name = "VProductOrder.findByPrdDescript", query = "SELECT v FROM VProductOrder v WHERE v.prdDescript = :prdDescript"),
    @NamedQuery(name = "VProductOrder.findByPrdStatus", query = "SELECT v FROM VProductOrder v WHERE v.prdStatus = :prdStatus"),
    @NamedQuery(name = "VProductOrder.findByCtgid", query = "SELECT v FROM VProductOrder v WHERE v.ctgid = :ctgid"),
    @NamedQuery(name = "VProductOrder.findByCtgType", query = "SELECT v FROM VProductOrder v WHERE v.ctgType = :ctgType"),
    @NamedQuery(name = "VProductOrder.findByCtgTitle", query = "SELECT v FROM VProductOrder v WHERE v.ctgTitle = :ctgTitle"),
    @NamedQuery(name = "VProductOrder.findByCtgOrigin", query = "SELECT v FROM VProductOrder v WHERE v.ctgOrigin = :ctgOrigin")})
public class VProductOrder implements Serializable {
    private static final long serialVersionUID = 1L;
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
    @Basic(optional = false)
    @NotNull
    @Id
    @Size(min = 1, max = 50)
    @Column(name = "oddid")
    private String oddid;
    @Column(name = "oddQuantity")
    private Integer oddQuantity;
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

    public VProductOrder() {
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
