/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package Model;

/**
 *
 * @author Scott C Gramig
 */
public class OrderItem {
    ProductDB product;
    private int quantity;

    public OrderItem() {
    }
    /**
     * @param product
     * @param quantity
     * 
     */
    public OrderItem(ProductDB product, int quantity){
        this.product = product;
        this.quantity = quantity;
    }
    public ProductDB getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(ProductDB product) {
        this.product = product;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public double getTotal()
    {
        return product.getPrice()*quantity;
    }
    
    /**
     * for debugging purposes
     * @return 
     */
    @Override
    public String toString() {
        return product + ":" + quantity;
    }
}
