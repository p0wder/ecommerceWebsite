
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
            <!--
            secondary nav BAR located at top under header section, remains constant
            -->
            <%@include file="user-navigation.jsp" %>
            <!--
            div for mid SECTION of page
            -->
            <%@include file="site-navigation.jsp" %>
                <!--
                div section for the catalog information
                -->
                <div id="catalogWrapper">
                    <h1>Performance</h1>
                    <ul>
                        <li><a href="CatalogController?name=cai89" style="text-decoration: none">Cold Air Intake</a></li>
                        <li><a href="CatalogController?name=hfh64" style="text-decoration: none">Performance Headers</a></li>
                        <li><a href="CatalogController?name=cat43" style="text-decoration: none">Catback Exhaust</a></li>
                    </ul>
                    <h1>Appearance</h1>
                    <ul>
                        <li><a href="CatalogController?name=spo78" style="text-decoration: none">OEM Rear Spoiler</a></li>
                        <li><a href="CatalogController?name=awh22" style="text-decoration: none">Black Aftermarket Headlights</a></li>
                        <li><a href="CatalogController?name=hdl13" style="text-decoration: none">Aftermarket Wheels</a></li>
                    </ul>
                </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
