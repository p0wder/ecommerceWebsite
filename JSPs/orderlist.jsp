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
            
            
                <div id="cartWrapper">
                    <div id="cartTittle">
                       Orders List 
                    </div>
                    <br>
                    <!--
                    -->
                    <form action="#" id="cartForm">
                        <table id="cartTable">
                            <tr>
                                <th id="item">Order Number</th>
                                <th id="price">Customer</th>
                                <th id="quantity">Order Date</th>
                                <th id="total">Total</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Bill Callahan</td>
                                <td>12/3/2014</td>
                                <td>$209.29</td>
                            </tr>
                        </table>
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