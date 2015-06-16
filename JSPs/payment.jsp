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
                div section for the homepage info
                -->
                    <div id="cartWrapper">
                        <div id="cartTittle">
                           Select Your Payment Method
                        </div>

                        <br>
                        <!--
                        Table to hold and organize cart information
                        -->
                        
                        <form action="thankyou.jsp" id="cartForm">
                            <table id="cartTable">
                                <tr>
                                    <td>Credit Card Type</td>
                                    <td>
                                        <select>
                                            <option value="visa">Visa</option>
                                            <option value="mastercard">Mastercard</option>
                                            <option value="discover">Discover</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Card Number</td>
                                    <td><input type="text" name="cardNum"></td>
                                </tr>
                                <tr>
                                    <td>Expiration Date</td>
                                    <td>
                                        <select>
                                            <option value="jan">Jan</option>
                                            <option value="feb">Feb</option>
                                            <option value="mar">Mar</option>
                                            <option value="apr">Apr</option>
                                            <option value="may">May</option>
                                            <option value="jun">Jun</option>
                                            <option value="jul">Jul</option>
                                            <option value="aug">Aug</option>
                                            <option value="sep">Sep</option>
                                            <option value="oct">Oct</option>
                                            <option value="nov">Nov</option>
                                            <option value="dec">Dec</option> 
                                        </select>
                                        <select>
                                            <option value="2014">2014</option>
                                            <option value="2015">2015</option>
                                            <option value="2016">2016</option>
                                            <option value="2017">2017</option>
                                            <option value="2018">2018</option>
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>CVV (3-digit)</td>
                                    <td><input type="text" name="cvv"></td>
                                </tr>
                            </table>
                        </form>
                        <br>
                        
                        
                        <br>
                        <table id="">
                            <tr>
                                <td>Your card will be charged a total of: $209.29 </td>
                                <td> </td>
                            </tr>
                            <tr>
                                <td> </td>
                                <form id="paid" action="thankyou.jsp">
                                    <td><input type="submit" value="Confirm Payment" onclick="alert('Order Submitted!')"></td>
                                </form>
                                
                            </tr>
                        </table>
                        
                    </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>