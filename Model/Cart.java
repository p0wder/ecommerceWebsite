/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package Model;

import java.util.ArrayList;

/**
 *
 * @author Scott C Gramig
 */
public class Cart {
    //get rid of this arraylist and change methods that rely on it
    public ArrayList<OrderItem> listOforderitems = new ArrayList<OrderItem>();
    OrderItem item = new OrderItem();
    int quantity;
    
    public Cart() {
    }
    
    public void addItem(ProductDB a, int quantity)
    {
        this.quantity = quantity;
        item = new OrderItem(a, quantity);
        //OrderItem item = new OrderItem(a, quantity);
        //item.setProduct(a);
        //item.setQuantity(quantity);
        listOforderitems.add(item);
    }
    /**
     * not sure if works correctly
     * @param a 
     */
    public void removeItem(OrderItem a)
    {
        if(a.getProduct().getProductCode().equalsIgnoreCase(item.product.getProductCode()))
            listOforderitems.remove(a);
    }
    public ArrayList<OrderItem> getItems()
    {
        return listOforderitems;
    }
    public OrderItem getItem(String pCode)
    {
        return null;//((OrderItem)listOforderitems.get(pCode));
    }
    public boolean exists(String pCode){
        //iterate thru all items in ArrayList and check for pCode
        boolean found = false;
        for (OrderItem s : listOforderitems){      
            if (s.getProduct().getProductCode().equalsIgnoreCase(pCode)){
                found = true;
                break;
            }  
        }
        return found;
    }
    public void emptyCart()
    {
        while(!listOforderitems.isEmpty())
            listOforderitems.clear();
    }
}
