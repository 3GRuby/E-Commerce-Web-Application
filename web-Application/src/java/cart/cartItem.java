/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

/**
 *
 * @author ujith
 */
public class cartItem {
    private String id;
    private Double qty;
    private Double uPrice;

    public cartItem(String id, Double qty, Double uPrice) {
        this.id = id;
        this.qty = qty;
        this.uPrice = uPrice;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the qty
     */
    public Double getQty() {
        return qty;
    }

    /**
     * @param qty the qty to set
     */
    public void setQty(Double qty) {
        this.qty = qty;
    }

    /**
     * @return the uPrice
     */
    public Double getuPrice() {
        return uPrice;
    }

    /**
     * @param uPrice the uPrice to set
     */
    public void setuPrice(Double uPrice) {
        this.uPrice = uPrice;
    }
}
