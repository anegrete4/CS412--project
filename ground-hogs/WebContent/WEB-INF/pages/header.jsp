<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ page import="java.util.*" %> 
<%@ page import="model.Cart" %>  
<%@ page import="model.CartItem" %> 
<%!Enumeration<CartItem> cartItems;%>
<%!Cart myCart=new Cart();%>
<% 	
	if(request.getSession().getAttribute("myCart")!=null){
		myCart=(Cart)request.getSession().getAttribute("myCart");
	}
	else{
		myCart=new Cart();
	}
%>

<div class="navbar">
	<!--  Home  -->
	
	
	
	
 <div class="dropdown">
    <button id="Home-logo"  class="dropbtn hoverTransparentBg">
    	<a href="index.jsp"class="disableTextSelection logo" class="DropDown">
    	<img src="images/icons/logo.png">
    	</img>
    	</a>
    </button>
  </div> 
  
  <div class="dropdown">
    <button id="home-content"  class="dropbtn hoverTransparentBg">
    	<a href="index.jsp"class="disableTextSelection" class="DropDown">
    	Home</a>
    </button>
  </div> 
  
  
 
  <!-- END -->
  
  <!--  About Us  -->
  <div class="dropdown">
    <button id="about-us-content"  class="dropbtn hoverTransparentBg">
    	<a href="AboutUs.jsp"class="disableTextSelection" class="DropDown">
    	About Us &nbsp; <i class="fa fa-caret-down"></i></a>
    </button>
    <div class="dropdown-content">
      <a href="AboutUs.jsp#mission" > Mission</a>
     </div>
  </div> 
  <!-- END -->
  
    <!--  Shopping  -->
  <div class="dropdown">
    <button id="shopping-content"  class="dropbtn hoverTransparentBg">
    	<a href="Shopping.jsp"class="disableTextSelection" class="DropDown">
    	Shopping</a>
    </button>
  </div> 
  <!-- END -->
  
  
  <!--  Workshop -->
  <div class="dropdown">
    <button id="workshop-content"  class="dropbtn hoverTransparentBg">
    	<a href="Workshop.jsp"class="disableTextSelection" class="DropDown">Workshop &nbsp; <i class="fa fa-caret-down"></i></a>
    </button>
    <div class="dropdown-content">
      <a href="Workshop.jsp#Workshop1" >Proper Introductions</a>
      <a href="Workshop.jsp#Workshop2" >Groundhog Confidence Building</a>
      <a href="Workshop.jsp#Workshop3" >Your New Groundhog Cub</a>
    </div>
  </div> 
  <!-- END -->

  <!--  contact us -->
  <div class="dropdown">
    <button id="contact-us-content"  class="dropbtn hoverTransparentBg">
    	<a href="ContactUs.jsp"class="disableTextSelection" class="DropDown">Contact Us &nbsp; <i class="fa fa-caret-down"></i></a>
    </button>
    <div class="dropdown-content">
      <a href="ContactUs.jsp#MeetUs" >Meet Us</a>
      <a href="ContactUs.jsp#Q&As" >Q & As</a>
    </div>
  </div> 
  <!-- END -->
  
  <!--  CART -->
    <div id="cartMenu" class="HeaderMenu hoverTransparentBg" onClick="toggleCart('true')" ><p id="ItemCount"><%=myCart.getTotalItems()>0?myCart.getTotalItems():""%></p></div>
  <!--  END  -->
</div>


<div id="UpArrowContainer">
		<div id="UpArrow" onclick="scrollTopFunction();" class="UpArrow"></div>
</div>
