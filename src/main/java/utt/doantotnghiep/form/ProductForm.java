package utt.doantotnghiep.form;

import org.springframework.web.multipart.MultipartFile;
import utt.doantotnghiep.entities.Product;

public class ProductForm  extends Product {
    private MultipartFile imageSmallFile;
    private MultipartFile imageLargeFile;

    public MultipartFile getImageSmallFile() {
        return imageSmallFile;
    }

    public void setImageSmallFile(MultipartFile imageSmallFile) {
        this.imageSmallFile = imageSmallFile;
    }

    public MultipartFile getImageLargeFile() {
        return imageLargeFile;
    }

    public void setImageLargeFile(MultipartFile imageLargeFile) {
        this.imageLargeFile = imageLargeFile;
    }
}
