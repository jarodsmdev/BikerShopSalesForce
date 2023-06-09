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
public class Customer{
    
    /**
    * Declaración de miembros de clase
    */
    private int customer_id;
    private String first_name;
    private String last_name;
    private String phone;
    private String email;
    private String street;
    private String city;
    private String state;
    private int zip_code;

    /**
    * Constructor predeterminado
    */
    public Customer() {
    }

    /**
     * Constructor parametrizado
     * @param customer_id tipo int
     * @param first_name tipo String
     * @param last_name tipo String
     * @param phone tipo String
     * @param email tipo String
     * @param street tipo String
     * @param city tipo String
     * @param state tipo String
     * @param zip_code  tipo int
     */
    public Customer(int customer_id, String first_name, String last_name, String phone, String email, String street, String city, String state, int zip_code) {
        this.customer_id = customer_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phone = phone;
        this.email = email;
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip_code = zip_code;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZip_code() {
        return zip_code;
    }

    public void setZip_code(int zip_code) {
        this.zip_code = zip_code;
    }

    @Override
    public String toString() {
        return "Customer{" + "customer_id=" + customer_id + ", first_name=" + first_name + ", last_name=" + last_name + ", phone=" + phone + ", email=" + email + ", street=" + street + ", city=" + city + ", state=" + state + ", zip_code=" + zip_code + '}';
    }
    
    

    
}
