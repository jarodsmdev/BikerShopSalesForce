/**
 * 
 * @author Leonel Briones Palacios
 * @Date 11.Abr.2023
 */
package Modelo.sales;

/**
 *
 * @author Leonel Briones Palacios
 */
public class OrderItem {
    
    private int orderId;
    private int itemId;
    private int productId;
    private int quantity;
    private int listPrice;
    private int discount;

    public OrderItem() {
    }

    public OrderItem(int orderId, int itemId, int productId, int quantity, int listPrice, int discount) {
        this.orderId = orderId;
        this.itemId = itemId;
        this.productId = productId;
        this.quantity = quantity;
        this.listPrice = listPrice;
        this.discount = discount;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
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

    public int getListPrice() {
        return listPrice;
    }

    public void setListPrice(int listPrice) {
        this.listPrice = listPrice;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "OrderItem{" + "orderId=" + orderId + ", itemId=" + itemId + ", productId=" + productId + ", quantity=" + quantity + ", listPrice=" + listPrice + ", discount=" + discount + '}';
    }
    
    
}
