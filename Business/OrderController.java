/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package Business;

import Model.Cart;
import Model.OrderItem;
import Model.ProductDB;
import Model.UserDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Scott C Gramig
 */
public class OrderController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String pCode = request.getParameter("productCode");
            String action = request.getParameter("action");
            String url = "/cart.jsp";
            String query = "SELECT * FROM PRODUCT WHERE productCode ='" + pCode + "';";
            String getUserQuery = "SELECT * FROM USER WHERE userID = 'bill.callahan@autoparts'";
            
            /**
             * Create a session
             */
            HttpSession session = request.getSession(true);
                    
            //Cart theShoppingCart = (Cart)session.getAttribute("theShoppingCart");
            Cart theShoppingCart = new Cart();
            
            //session.setAttribute("theShoppingCart", theShoppingCart);
            
            /**
             * Creates connection to database
             * Notice the getConnection("database","userName","password")
             * the only thing you may have to change is the username and password
             * You can create a new user on MySQL Workbench but going to
             * Server > Users and Privileges, Add Account, make account limits 200 on all fields,
             * Administrative Roles: check DBManager, DBDesigner, BackupAdmin
             * and Apply changes
             */
            try{
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception ex) {
                out.println("you fucked up.  no connection");
            }
            
            Connection conn = null;
             try {
                 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "newuser", "password");
             } catch(SQLException ex) {
                 out.println("SQLException: " + ex.getMessage());
                 out.println("SQLState: " + ex.getSQLState());
             }
            
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                stmt = conn.createStatement();
                rs = stmt.executeQuery(query);
                
                if(stmt.execute(query))
                    rs = stmt.getResultSet();
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
            }

            ArrayList cartItem;
            ArrayList cart;
            ProductDB itemInfo;
            //int count;
            
                cartItem = new ArrayList();
                cart = new ArrayList();
                itemInfo = new ProductDB();
            
                if("add".equals(action)){
                    while(rs.next())
                    {
                        itemInfo.setProductCode(rs.getString(1));
                        itemInfo.setProductName(rs.getString(2));
                        itemInfo.setCatalogCatagory(rs.getString(3));
                        itemInfo.setDescription(rs.getString(4));
                        itemInfo.setPrice(rs.getDouble(5));
                        itemInfo.setImageUrl(rs.getString(6));
                    }
                    
                    String itemName = itemInfo.getProductName();
                    double itemPrice = itemInfo.getPrice();
                    int itemQuantity = quantity;
                    double total = itemInfo.getPrice()*quantity;
                    cartItem.add(itemName);
                    cartItem.add(itemPrice);
                    cartItem.add(itemQuantity);
                    cartItem.add(total);
                    cart.add(cartItem);

                    session.setAttribute("cart", cart);
                    session.setAttribute("quantity", quantity);
                    session.setAttribute("total", (itemInfo.getPrice()*quantity));
                
            }
            
            //theShoppingCart.addItem(itemInfo, quantity);
            //ArrayList<OrderItem> shoppingCart = new ArrayList<OrderItem>();
            //shoppingCart.add(itemInfo, quantity);
            //request.setAttribute("itemInfo", itemInfo);
            //request.setAttribute("quantity", quantity);
            //request.setAttribute("total", (itemInfo.getPrice()*quantity));
            /**
             * Both request and session
             * I can send a single Product object as setAttribute
             * but not theShoppingCart Cart object, why?
             * 
             */
            
            
            //request.setAttribute("theShoppingCart", theShoppingCart.getItems());
            /**
             * NOW FIGURE OUT HOW TO SET THE SESSION WITHOUT IT BREAKING
             */
            /**
             * this is what needs work,  the logic from hw4
             * create Product object and set all values
             * Then create a cart object with product and quantity
             * adds them to the session as well
             * 
             */
            /*
            if(action != null)
                if("add".equals(action))
                {
                    Product itemInfo = new Product();
            
                    while(rs.next())
                    {
                        itemInfo.setProductCode(rs.getString(1));
                        itemInfo.setProductName(rs.getString(2));
                        itemInfo.setCatalogCatagory(rs.getString(3));
                        itemInfo.setDescription(rs.getString(4));
                        itemInfo.setPrice(rs.getDouble(5));
                        itemInfo.setImageUrl(rs.getString(6));
                    }
                    //out.println(itemInfo.getImageUrl());
                    theShoppingCart.addItem(itemInfo, quantity);//<--------  the code stops execution right here
                    //set the session attribute
                    session.setAttribute("theShoppingCart", theShoppingCart);
                    //print to debug where codes fucks up
                    //out.println("here");
                    request.setAttribute("theShoppingCart", theShoppingCart);
                    
                    getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
                }else if("updateCart".equals(action))
                {
                    //TODO
                    
                }
            */
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
            
            

            /**
             * Use when action = checkout
             * creates a user but users are already stored in the database
             * query database for a specific user, much like the product query
             * create a user if action = checkout
             * this code may not be in the right place right now, adjust as needed
             */
            /*
            Statement stmt2 = null;
            ResultSet rs2 = null;
            
            try {
                stmt2 = conn.createStatement();
                rs2 = stmt2.executeQuery(query);
                
                if(stmt2.execute(query))
                    rs2 = stmt2.getResultSet();
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
            }
            User user = new User();
            
            while(rs2.next())
            {
                user.setUserID(rs2.getString(1));
                user.setFirstName(rs2.getString(2));
                user.setLastName(rs2.getString(3));
                user.setEmail(rs2.getString(4));
                user.setAddress1(rs2.getString(5));
                user.setAddress2(rs2.getString(6));
                user.setCity(rs2.getString(7));
                user.setState(rs2.getString(8));
                user.setZip(rs2.getString(9));
                user.setCountry(rs2.getString(10));
                user.setPassword(rs2.getString(11));
            }
            
            
            session.setAttribute("user", user);
            
            */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
