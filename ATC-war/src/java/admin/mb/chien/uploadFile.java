/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.mb.chien;

import java.io.IOException;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.Part;

/**
 *
 * @author DTP
 */
@ManagedBean
@RequestScoped
public class uploadFile implements Serializable {

    private static final long serialVersionUID = 1L;
    private Part file;
    private String fileName;
    private long fileSize;
    private String imgaePath;

    /**
     * Creates a new instance of uploadFile
     */
    public uploadFile() {
    }

    public void pickImagePath() {
        // get name of selected file
        fileName = file.getSubmittedFileName();
        // get file's size
        fileSize = file.getSize();
        // get fullpath of opload folder in web root
        String dirPath = FacesContext.getCurrentInstance().getExternalContext().getRealPath("\\");
//            System.out.println("------------- real path --" + dirPath);
        // write file to upload folder
//            System.out.println("-------------" + dirPath + "upload\\" + fileName);
        imgaePath = dirPath + "upload\\" + fileName;
    }

    public void upload() {
        try {
            // get name of selected file
            fileName = file.getSubmittedFileName();
            // get file's size
            fileSize = file.getSize();
            // get fullpath of opload folder in web root
            String dirPath = FacesContext.getCurrentInstance().getExternalContext().getRealPath("\\");
//            System.out.println("------------- real path --" + dirPath);
            // write file to upload folder
//            System.out.println("-------------" + dirPath + "upload\\" + fileName);
            imgaePath = dirPath + "upload\\" + fileName;
            file.write(dirPath + "upload\\" + fileName);

        } catch (Exception ex) {
            Logger.getLogger(uploadFile.class.getName()).log(Level.SEVERE, null, ex);
        }
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

}
