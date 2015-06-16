<%-- 
    Document   : cart
    Created on : Sep 18, 2014, 3:31:07 PM
    Author     : jwells37
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
            <!--
            secondary nav BAR located at top under header section, remains constant
            -->
            <%@include file="user-navigation.jsp" %>
            <!--
            div for mid SECTION of page that will be inline-block displayed
            -->
            <%@include file="site-navigation.jsp" %>
                <!--
                div section for the cart information
                -->
                <div id="cartWrapper">
                    <div id="cartTittle">
                       Your Cart 
                    </div>
                    <div id="cartInstruct">
                        To remove an item, check the box next to the item and click update cart.
                    </div>
                    <br>
                    <br>
                    <!--
                    Table to hold and organize cart information
                    -->
                    <form action="#" id="cartForm">
                        <table id="cartTable">
                            <tr>
                                <th id="item">Item</th>
                                <th id="price">Price</th>
                                <th id="quantity">Quantity</th>
                                <th id="total">Total</th>
                                <th id="remove"></th>
                            </tr>
                         
                            <c:forEach items="${cart}" var="item">
                                <tr>
                                <c:forEach items="${item}" var="i">
                                        <td id="item">
                                          ${i}
                                        </td>

                                </c:forEach>
                                        <td id="remove"><input type="checkbox" />Remove</td>
                                    </tr>
                            </c:forEach>
                          
                            <!--use JSTL to create table data-->
                        </table>
                    </form>
                    <br>
                    <form id="cartUpdate" action="cart.jsp">
                        <input type="submit" value="Update Cart">
                    </form>
                    <form id="cartCheckout" action="order.jsp">
                        <input type="submit" value="Checkout">
                    </form>
                </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
