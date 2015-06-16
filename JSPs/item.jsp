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
                    <div id="itemPic">${imageURL}</div>
                    

                            <span>${productName}</span>
                            <br>
                            
                            <span>${catalogCategory}</span>
                            <br>
                            <span>$${price}</span>
                        
                    <form action="OrderController">
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="productCode" value="${pCode}">
                        Quantity<input type="text" name="quantity" maxlength="2" size="2">
                        <input type="submit" value="Add to Cart">
                    </form>
                    
                    <br>
                    <br>
                    <div>
                        <span>${description}</span>
                    </div>
                </div>
            </div>
            <!--
            bottom section containing copyright, etc. information, remains constant
            -->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
