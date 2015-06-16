<%-- 
    Document   : order
    Created on : Sep 18, 2014, 4:35:31 PM
    Author     : jwells37
--%>

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
                       Invoice
                    </div>
                    Date: 12/3/14 <br>
                    <br>
                    Ship to / Bill To: <br>
                    Bill Callahan <br>
                    51 Nothingtoseehere ln <br>
                    Roswell, NM 88201
                    <br>
                    <!--
                    Table to hold and organize cart information
                    -->
                    <form action="#" id="cartForm">
                        <table id="cartTable">
                            <tr>
                                <th id="itemHeader">Item</th>
                                <th id="priceHeader">Price</th>
                                <th id="quantityHeader">Quantity</th>
                                <th id="totalHeader">Total</th>
                            </tr>

                            <tr>
                                <td id="cartItemUnderline1">Cold Air Intake</td>
                                <td class="cartTDP">$189.99</td>
                                <td class="cartTDQ">1</td>
                                <td class="cartTDT">$189.99</td>
                            </tr>

                           

                            <tr>
                                <td class="cartTD">&nbsp;</td>
                                <td class="cartTD">&nbsp;</td>
                                <td class="cartFinalInfo1">Subtotal</td>
                                <td class="cartFinalInfo2">$189.99</td>
                            </tr>
                            <tr>
                                <td class="cartTD">&nbsp;</td>
                                <td class="cartTD">&nbsp;</td>
                                <td class="cartFinalInfo1">Taxes</td>
                                <td class="cartFinalInfo2">$13.30</td>
                            </tr>
                            <tr>
                                <td class="cartTD">&nbsp;</td>
                                <td class="cartTD">&nbsp;</td>
                                <td class="cartFinalInfo1">Total</td>
                                <td class="cartFinalInfo2">$209.29</td>
                            </tr>
                        </table>
                    </form>
                    <br>
                    <form id="cartUpdate" action="cart.jsp">
                        <input type="submit" value="Back To Cart">
                    </form>
                    <form id="cartCheckout" action="payment.jsp">
                        <input type="submit" value="Purchase">
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
