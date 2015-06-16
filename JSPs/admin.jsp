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
                <div id="homeInfo">
                    Administrator Menu
                    <br>
                    <br>
                    <form action="viewOrders.jsp">
                        <input type="submit" value="Display All Orders">
                    </form>
                    <a href="AdminController?name=edit" style="text-decoration: none">Edit product catalog</a>
                </div>
            
            
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>