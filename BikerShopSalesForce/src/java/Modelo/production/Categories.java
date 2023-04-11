/** +
 *
 * @author Leonel Briones Palacios
 * @Date 11.Abr.2023
 */
package Modelo.production;

/**
 *
 * @author Leonel Briones Palacios
 */
public class Categories {

    private int categoryId;
    private String category_name;

    public Categories() {
    }

    public Categories(int category_id, String category_name) {
        this.categoryId = category_id;
        this.category_name = category_name;
    }

    public int getCategory_id() {
        return categoryId;
    }

    public void setCategory_id(int category_id) {
        this.categoryId = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    @Override
    public String toString() {
        return "Categories{" + "category_id=" + categoryId + ", category_name=" + category_name + '}';
    }

}
