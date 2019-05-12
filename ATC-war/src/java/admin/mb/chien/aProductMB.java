/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import controller.CameraFacade;
import controller.CategoryFacade;
import controller.DvrFacade;
import controller.ProductFacade;
import entity.*;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.Part;

/**
 *
 * @author DTP
 */
@ManagedBean
@SessionScoped
public class aProductMB implements Serializable {

    @EJB
    private DvrFacade dvrFacade;

    private static final long serialVersionUID = 1L;

    @EJB
    private CategoryFacade categoryFacade;
    @EJB
    private CameraFacade cameraFacade;
    @EJB
    private ProductFacade productFacade;

    private Product product;
    private Camera camera;
    private Dvr dvr;
    private Category ctg;

    private String cateid;
    private String productCreateTittle;

    private Part file;
    private Part file2;

    private Part file3;
    private String fileName;
    private long fileSize;
    private String imgaePath;

    /**
     * Creates a new instance of aProductMB
     */
    public aProductMB() {
        this.product = new Product();
        this.camera = new Camera();
        this.dvr = new Dvr();
    }

    //    ***** navigation zone
    public String productViewNav() {
        return "productView?faces-redirect=true";
    }

    public String productCreateNav() {
        if (productCreateTittle.equalsIgnoreCase("camera")) {
            this.product = new Product();
            this.camera = new Camera();
        } else if (productCreateTittle.equalsIgnoreCase("dvr")) {
            this.product = new Product();
            this.dvr = new Dvr();
        } else {
            this.product = new Product();
        }
        return "productCreate?faces-redirect=true";
    }

    public String productUpdateNav(Product item) {
        this.product = item;

        //chu y truong hop category type bi null
        if (item.getCtgid().getCtgType().equalsIgnoreCase("camera")) {
            productFacade.edit(item);
            this.camera = cameraFacade.findCameraByProduct(item);
            cameraFacade.edit(camera);
        } else if (item.getCtgid().getCtgType().equalsIgnoreCase("dvr")) {
            productFacade.edit(item);
            this.dvr = dvrFacade.findDVRByProduct(item);
            dvrFacade.edit(dvr);
        } else {
            productFacade.edit(item);
        }
        return "productUpdate?faces-redirect=true";
    }

    public String update() {

        //chu y truong hop category type bi null
        if (product.getCtgid().getCtgType().equalsIgnoreCase("camera")) {
//            if (product.getPrdImage() != null) {
//                uploadFile();
//                product.setPrdImage("img/" + file.getSubmittedFileName());
//            }
//            if (product.getPrdImage2() != null) {
//                uploadFile2();
//                product.setPrdImage2("img/" + file2.getSubmittedFileName());
//            }
//            if (product.getPrdImage3() != null) {
//                uploadFile3();
//                product.setPrdImage3("img/" + file3.getSubmittedFileName());
//            }
            productFacade.edit(product);
            cameraFacade.edit(camera);
        } else if (product.getCtgid().getCtgType().equalsIgnoreCase("dvr")) {
//            if (product.getPrdImage() != null) {
//                uploadFile();
//                product.setPrdImage("img/" + file.getSubmittedFileName());
//            }
//            if (product.getPrdImage2() != null) {
//                uploadFile2();
//                product.setPrdImage2("img/" + file2.getSubmittedFileName());
//            }
//            if (product.getPrdImage3() != null) {
//                uploadFile3();
//                product.setPrdImage3("img/" + file3.getSubmittedFileName());
//            }
            productFacade.edit(product);
            dvrFacade.edit(dvr);
        } else {
            if (product.getPrdImage() != null) {
                uploadFile();
                product.setPrdImage("img/" + file.getSubmittedFileName());
            }
            if (product.getPrdImage2() != null) {
                uploadFile2();
                product.setPrdImage2("img/" + file2.getSubmittedFileName());
            }
            if (product.getPrdImage3() != null) {
                uploadFile3();
                product.setPrdImage3("img/" + file3.getSubmittedFileName());
            }
            productFacade.edit(product);
        }
        return "productView?faces-redirect=true";
    }

    public String productDetailsNav(Product item) {
        this.product = item;
        if (item.getCtgid().getCtgType().equalsIgnoreCase("camera")) {
            this.camera = cameraFacade.findCameraByProduct(item);
        } else if (item.getCtgid().getCtgType().equalsIgnoreCase("dvr")) {
            this.dvr = dvrFacade.findDVRByProduct(item);
        }else{
            
        }
        return "productDetails?faces-redirect=true";
    }

//    ***** Process ************
    public List<Product> getProducts() {
        return productFacade.findAll();
    }

    public List<Category> getCategories() {
        if (productCreateTittle.equalsIgnoreCase("camera")) {
            return categoryFacade.findSerialOfCamera();
        } else if (productCreateTittle.equalsIgnoreCase("dvr")) {
            return categoryFacade.findSerialOfDvr();
        } else {
            return categoryFacade.findSerialOfOther();
        }
    }

    public void uploadFile() {
        try {

            InputStream input = file.getInputStream();

            File f = new File("E:/anthangcamera/ATC-war/web/resources/img/" + file.getSubmittedFileName());

            if (!f.exists()) {
                f.createNewFile();
            }
            FileOutputStream output = new FileOutputStream(f);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            input.close();
            output.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }

    }

    public void uploadFile2() {
        try {

            InputStream input = file2.getInputStream();

            File f = new File("E:/anthangcamera/ATC-war/web/resources/img/" + file.getSubmittedFileName());

            if (!f.exists()) {
                f.createNewFile();
            }
            FileOutputStream output = new FileOutputStream(f);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            input.close();
            output.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }

    }

    public void uploadFile3() {
        try {

            InputStream input = file3.getInputStream();

            File f = new File("E:/anthangcamera/ATC-war/web/resources/img/" + file.getSubmittedFileName());

            if (!f.exists()) {
                f.createNewFile();
            }
            FileOutputStream output = new FileOutputStream(f);
            byte[] buffer = new byte[1024];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            input.close();
            output.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }

    }

    public String createProduct(String option) {
        String prid = tools.CommonUse.generateUUID();
        try {
            if (option.equalsIgnoreCase("camera")) {
                product.setPrdid(prid);
                product.setCreatedDate(new Timestamp(new Date().getTime()));
                product.setPrdStatus("new");
                product.setCtgid(categoryFacade.find(cateid));
                uploadFile();
                product.setPrdImage("img/" + file.getSubmittedFileName());
                if (product.getPrdImage() != null) {
                    uploadFile2();
                    product.setPrdImage2("img/" + file2.getSubmittedFileName());
                }
                if (product.getPrdImage3() != null) {
                    uploadFile3();
                    product.setPrdImage3("img/" + file3.getSubmittedFileName());
                }
                productFacade.create(product);
                camera.setCamid(tools.CommonUse.generateUUID());
                camera.setCreatedDate(new Timestamp(new Date().getTime()));
                camera.setPrdid(product);
                cameraFacade.create(camera);
                Category cate = product.getCtgid();
                cate.setCtgStatus("active");
                categoryFacade.edit(cate);

            } else if (option.equalsIgnoreCase("dvr")) {
                product.setPrdid(prid);
                product.setCreatedDate(new Timestamp(new Date().getTime()));
                product.setPrdStatus("new");
                product.setCtgid(categoryFacade.find(cateid));
                uploadFile();
                product.setPrdImage("img/" + file.getSubmittedFileName());
                if (product.getPrdImage() != null) {
                    uploadFile2();
                    product.setPrdImage2("img/" + file2.getSubmittedFileName());
                }
                if (product.getPrdImage3() != null) {
                    uploadFile3();
                    product.setPrdImage3("img/" + file3.getSubmittedFileName());
                }
                productFacade.create(product);
                dvr.setDvrid(tools.CommonUse.generateUUID());
                dvr.setCreatedDate(new Timestamp(new Date().getTime()));
                dvr.setPrdid(product);
                dvrFacade.create(dvr);
                Category cate = product.getCtgid();
                cate.setCtgStatus("active");
                categoryFacade.edit(cate);
            } else {
                product.setPrdid(prid);
                product.setCreatedDate(new Timestamp(new Date().getTime()));
                product.setPrdStatus("new");
                product.setCtgid(categoryFacade.find(cateid));
                uploadFile();
                product.setPrdImage("img/" + file.getSubmittedFileName());
                if (product.getPrdImage2() != null) {
                    uploadFile2();
                    product.setPrdImage2("img/" + file2.getSubmittedFileName());
                }
                if (product.getPrdImage3() != null) {
                    uploadFile3();
                    product.setPrdImage3("img/" + file3.getSubmittedFileName());
                }
                productFacade.create(product);
                Category cate = product.getCtgid();
                cate.setCtgStatus("active");
                categoryFacade.edit(cate);
            }

            return "productView?faces-redirect=true";
        } catch (Exception e) {
//            msg = "TK da dc sd";
            return "productCreate?faces-redirect=true";
        }
    }

    public void upload() {
        try {
            // get name of selected file
            fileName = file.getSubmittedFileName();
            // get file's size
            fileSize = file.getSize();
            // get fullpath of opload folder in web root
            String dirPath = FacesContext.getCurrentInstance().getExternalContext().getRealPath("\\");
            System.out.println("------------- real path --" + dirPath);
            imgaePath = dirPath + "upload\\" + fileName;
            System.out.println("------------- image path" + imgaePath);
            // write file to upload folder
            file.write(dirPath + "upload\\" + fileName);
        } catch (Exception ex) {
            Logger.getLogger(uploadFile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String updateProduct() {
        return "accountView?faces-redirect=true";
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getCateid() {
        return cateid;
    }

    public void setCateid(String cateid) {
        this.cateid = cateid;
    }

    public Camera getCamera() {
        return camera;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public Dvr getDvr() {
        return dvr;
    }

    public void setDvr(Dvr dvr) {
        this.dvr = dvr;
    }

    public String getProductCreateTittle() {
        return productCreateTittle;
    }

    public void setProductCreateTittle(String productCreateTittle) {
        this.productCreateTittle = productCreateTittle;
    }

    public Part getFile() {
        return file;
    }

    public void setFile(Part file) {
        this.file = file;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public long getFileSize() {
        return fileSize;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }

    public String getImgaePath() {
        return imgaePath;
    }

    public void setImgaePath(String imgaePath) {
        this.imgaePath = imgaePath;
    }

    public Part getFile2() {
        return file2;
    }

    public void setFile2(Part file2) {
        this.file2 = file2;
    }

    public Part getFile3() {
        return file3;
    }

    public void setFile3(Part file3) {
        this.file3 = file3;
    }

    public Category getCtg() {
        return ctg;
    }

    public void setCtg(Category ctg) {
        this.ctg = ctg;
    }
}
