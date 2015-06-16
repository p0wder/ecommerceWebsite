/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package Model;

import java.util.*;
/**
 *
 * @author Scott C Gramig
 */
public class ShoppingCart {
    int noItems = 0;
    Vector products = new Vector();
    
    public void addProduct(ProductDB p){
        products.add(p);
    }
    
    public void deleteProduct(String pCode){
        Enumeration productEnum = getProducts();
        
        while(productEnum.hasMoreElements()){
            ProductDB product = (ProductDB)productEnum.nextElement();
            if(product.getProductCode().equals(pCode)){
                products.removeElement(pCode);
                break;
            }
        }
    }
    
    public void emptyCart(){
        products.clear();
    }
    
    public int getNoProducts(){
        return products.size();
    }
    
    public Enumeration getProducts(){
        return products.elements();
    }
    
    
}
