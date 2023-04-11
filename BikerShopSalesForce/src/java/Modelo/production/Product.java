/**
 * @author Leonel Briones Palacios
 * @Date 11.Abr.2023
 */
package Modelo.production;

/**
 *
 * @author Leonel Briones Palacios
 */
public class Product {
    
    private int productId;
    private String product_name;
    private int brandId;
    private int categoryId;
    private int modelYear;
    private int listPrice;

    public Product() {
    }

    public Product(int productId, String product_name, int brandId, int categoryId, int modelYear, int listPrice) {
        this.productId = productId;
        this.product_name = product_name;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.modelYear = modelYear;
        this.listPrice = listPrice;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getModelYear() {
        return modelYear;
    }

    public void setModelYear(int modelYear) {
        this.modelYear = modelYear;
    }

    public int getListPrice() {
        return listPrice;
    }

    public void setListPrice(int listPrice) {
        this.listPrice = listPrice;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", product_name=" + product_name + ", brandId=" + brandId + ", categoryId=" + categoryId + ", modelYear=" + modelYear + ", listPrice=" + listPrice + '}';
    }
 
}
