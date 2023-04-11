/**
 * @autor Leonel Briones Palacios
 * @Date 11.Abr.2023
 */
package Modelo.production;

/**
 *
 * @author Leonel Briones Palacios
 */
public class Stock {
    
    private int storeId;
    private int productId;
    private int quantity;

    public Stock() {
    }

    public Stock(int storeId, int productId, int quantity) {
        this.storeId = storeId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Stock{" + "storeId=" + storeId + ", productId=" + productId + ", quantity=" + quantity + '}';
    }
    
    
}

