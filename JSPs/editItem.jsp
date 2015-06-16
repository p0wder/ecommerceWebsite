<%-- 
item.jsp
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
                div section for the item information
                -->
                
                <!--the code with $ should all the insertion of html from the CatalogController
                    we also need a GET in here similar to page 47 code example in the book
                -->
                
                <div id="itemWrapper">
                    
                    
                    <h1>Make edits in the text fields and click submit</h1>

                    <span>Change the price of ${productName}</span>
                    <br>
                    <form action="EditController">
                        
                        
                        <br>
                        <span>$${price}</span>
                        <br>
                        <input type="text" name="newPrice" maxlength="25" size="25" value="${price}">
                        <br>

                        <input type="hidden" name="action" value="submitEdit">
                        <input type="hidden" name="productCode" value="${pCode}">
                        <input type="submit" value="Submit Edits">
                    
                    </form>
                    
                    <br>
                    <br>
                    
                </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
