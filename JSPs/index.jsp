<%-- 
    Document   : index
    Created on : Sep 18, 2014, 3:25:05 PM
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
                image located above the homepage info section
                with an ID for css styling
                -->
                <img id="homepageCarPic" src="car.jpg" alt="homepageCar">
                <!--
                div section for the homepage info
                -->
                <div id="homeInfo">
                    Welcome to JAW Autoshop!  We provide nothing but the best 
                    and latest products.  Whatever your needs may be, we have 
                    something for you.  We strive to serve all automotive 
                    enthusiasts.
                    <br><br>
                    Take a look at our catalog page to start shopping today! 
                    We are sure that you'll find what you're looking for.  
                    Please do not hesitate to contact us if you have any questions
                    or concerns.  Enjoy!
                </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
