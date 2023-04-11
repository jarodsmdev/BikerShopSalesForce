/**
 * 
 * @author Leonel Briones Palacios
 * @Date 11.Abr.2023
 */
package Modelo.sales;

import java.util.Date;

/**
 *
 * @author Leonel Briones Palacios
 */
public class Order {
    
    private int order_id;
    private int customer_id;
    private int order_status;
    private Date order_date;
    private Date required_date;
    private Date shipped_date;
    private int store_id;
    private int staff_id;

    public Order() {
    }

    public Order(int order_id, int customer_id, int order_status, Date order_date, Date required_date, Date shipped_date, int store_id, int staff_id) {
        this.order_id = order_id;
        this.customer_id = customer_id;
        this.order_status = order_status;
        this.order_date = order_date;
        this.required_date = required_date;
        this.shipped_date = shipped_date;
        this.store_id = store_id;
        this.staff_id = staff_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getOrder_status() {
        return order_status;
    }

    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public Date getRequired_date() {
        return required_date;
    }

    public void setRequired_date(Date required_date) {
        this.required_date = required_date;
    }

    public Date getShipped_date() {
        return shipped_date;
    }

    public void setShipped_date(Date shipped_date) {
        this.shipped_date = shipped_date;
    }

    public int getStore_id() {
        return store_id;
    }

    public void setStore_id(int store_id) {
        this.store_id = store_id;
    }

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    @Override
    public String toString() {
        return "Order{" + "order_id=" + order_id + ", customer_id=" + customer_id + ", order_status=" + order_status + ", order_date=" + order_date + ", required_date=" + required_date + ", shipped_date=" + shipped_date + ", store_id=" + store_id + ", staff_id=" + staff_id + '}';
    }
    
    
    
}
