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
public class ItemInfo {
    //product
    private String productCode;
    private String productName;
    private String catalogCategory;
    private String description;
    private double price;
    private String imageURL;

    
    //itemInfo
    public ItemInfo(){
    }
    
    public String getProductCode(){
        return productCode;
    }
    
    public void setProductCode(String productCode){
        this.productCode = productCode;
    }
    
    public String getProductName(){
        return productName;
    }
    public void setProductName(String productName){
        this.productName = productName;
    }
    
    public String getCatalogCatagory(){
        return catalogCategory;
    }
    public void setCatalogCatagory(String catalogCategory){
        this.catalogCategory = catalogCategory;
    }
    
    public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }
    
    public double getPrice(){
        return price;
    }
    public void setPrice(double price){
        this.price = price;
    }
    public String getImageURL(){
        return imageURL;
    }
    public void setImageURL(String imageURL){
        this.imageURL = imageURL;
    }
}
