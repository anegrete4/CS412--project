package coreservlets;

import java.util.ArrayList;

import javax.servlet.http.*;
import org.apache.struts.action.*;

import database.DBAccess;
import utility.Helper;

public class RegisterWorkshop extends Action {
  public ActionForward execute(ActionMapping mapping,
                               ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response)
      throws Exception {
	  
	  ArrayList<String> responses= new ArrayList<String>();
	  request.getSession().setAttribute("responses", responses);
	  System.out.println(request.getParameter("registerId"));
	  /* do things */
	  if(Helper.validateDataAndManageSession(request, Helper.workshopValidation)) {
			
		  if(request.getParameter("registerId")!=null && request.getParameter("workshopCapacity")!=null && request.getParameter("registration")!=null ) {
			  if((Integer.parseInt(request.getParameter("workshopCapacity"))-Integer.parseInt(request.getParameter("registration")))>0) {
				  int workshopId =  Integer.parseInt(request.getParameter("registerId"));
				  DBAccess.SP_RegisterToWorkshop(workshopId);
				  responses.add("Thank you for your registration.");
				  setResponseInSession(request.getSession(),"Thank you! "+request.getParameter("fname"),responses,"success","popUpMessages");
				  request.removeAttribute("registerId");
			  }
			  else {
				  responses.add("This event is full. Please try next week.");	
				  setResponseInSession(request.getSession(),"Sorry!",responses,"error","popUpMessages");
				  request.removeAttribute("registerId");
			  }
		  }		
			
			Helper.resetDataValidation(request);
	   }
	   else {
		   setResponseInSession(request.getSession(),"Customer Support",responses,"error","popUpWorkshopForm");
	   }
	  
	   return(mapping.findForward("returnToLastPage"));
  }
  
  private  void setResponseInSession(HttpSession session, String popUpTitle, ArrayList<String> responses, String responseType, String nextContentToShow) {
	  session.setAttribute("popUpTitle", popUpTitle);
	  session.setAttribute("responses", responses);
	  session.setAttribute("responseType", responseType);
	  session.setAttribute("hasResponse", true);
	  session.setAttribute("popUpContent", nextContentToShow);
  }
}
