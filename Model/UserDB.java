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
public class UserDB {
    private String userID;
    private String firstName;
    private String lastName;
    private String email;
    private String address1;
    private String address2;
    private String city;
    private String state;
    private String zip;
    private String country;
    private String password;
    
    //set/get user info
    public void setUserID(String userID){
        this.userID = userID;
    }
    public String getUserID(){
        return userID;
    }
    public void setFirstName(String firstName){
        this.firstName = firstName;
    }
    public String getFirstName(){
        return firstName;
    }
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    public String getLastName(){
        return lastName;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }
    public void setAddress1(String address1){
        this.address1 = address1;
    }
    public String getAddress1(){
        return address1;
    }
    public void setAddress2(String address2){
        this.address2 = address2;
    }
    public String getAddress2(){
        return address2;
    }
    public void setCity(String city){
        this.city = city;
    }
    public String getCity(){
        return city;
    }
    public void setState(String state){
        this.state = state;
    }
    public String getState(){
        return state;
    }
    public void setZip(String zip){
        this.zip = zip;
    }
    public String getZip(){
        return zip;
    }
    public void setCountry(String country){
        this.country = country;
    }
    public String getCountry(){
         return country;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getPassword(){
        return password;
    }
}
