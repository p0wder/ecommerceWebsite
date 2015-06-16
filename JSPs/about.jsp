<%-- 
    Document   : about
    Created on : Sep 18, 2014, 4:04:15 PM
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
                div section for the homepage info
                -->
                <div id="homeInfo">
                    JAW Autoshop has been in business for over 500 years.  From horse-drawn carriages,
                    to corvetts.  We carry the best performance parts in the universe.  Don't trust your local intergalactic autoshop.
                    <br><br>
                    Take a look at our catalog page to start shopping today! 
                    We are sure that you will find what you're looking for.  
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
