/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Minh Chien
 */
@Entity
@Table(name = "ViewTopProduct")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ViewTopProduct.findAll", query = "SELECT v FROM ViewTopProduct v"),
    @NamedQuery(name = "ViewTopProduct.findByPrdid", query = "SELECT v FROM ViewTopProduct v WHERE v.prdid = :prdid"),
    @NamedQuery(name = "ViewTopProduct.findByTotal", query = "SELECT v FROM ViewTopProduct v WHERE v.total = :total")})
public class ViewTopProduct implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    
    @Size(max = 50)
    @Column(name = "prdid")
    private String prdid;
    @Column(name = "Total")
    private Integer total;

    public ViewTopProduct() {
    }

    public String getPrdid() {
        return prdid;
    }

    public void setPrdid(String prdid) {
        this.prdid = prdid;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }
    
}
