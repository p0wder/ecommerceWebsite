<%-- 
    Document   : contact
    Created on : Sep 18, 2014, 4:14:36 PM
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
                receptionist image
                -->
                <img id="homepageCarPic" src="phone.jpg" alt="homepageCar">
                <!--
                div section for the homepage info
                -->
                <div id="homeInfo">
                    - Bill (Lead sales manager)<br>
                    - Bob (Lead customer service representative)<br>
                    - Phone: 1-800-GET-JAWS<br>
                    - Email: jawsautoshop@email.com<br>
                    - Mailing Address: 992 Big Walk Way; Charlotte, NC 28262
                </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
