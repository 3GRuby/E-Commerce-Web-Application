<%@page import="cart.cartItem"%>
<%@page import="cart.cart"%>
<%
                                if(session.getAttribute("cart")!=null){
                                 cart y=   (cart)session.getAttribute("cart");
                                 double tot=0.0;
                                 for (int i = 0; i < y.getL().size(); i++) {
                                     cartItem get = y.getL().get(i);
                                     tot = tot +(get.getQty()*get.getuPrice());
                                 }
                                %>
                                <div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <h3> <span class="simpleCart_total">$<%=tot%></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"><%= y.getL().size() %></span> items)<img src="images/bag.png" alt=""></h3>
                                    </a>	
                                    <p><a onclick="emptyCart(1)" class="simpleCart_empty">(empty card)</a></p>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="create_btn">
                                    <a href="checkout.jsp">CHECKOUT</a>
                                </div>
                                <%
                                }else{
                                %>
                                <div class="cart box_1">
                                    <a href="checkout.jsp">
                                        <h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)<img src="images/bag.png" alt=""></h3>
                                    </a>	
                                    <p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
                                    <div class="clearfix"> </div>
                                </div>
                                <% } %>