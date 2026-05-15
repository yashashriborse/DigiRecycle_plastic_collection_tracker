package com.DigiRecycle.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.DigiRecycle.dao.CollectionLogDao;
import com.DigiRecycle.dao.RecyclerDao;
import com.DigiRecycle.dao.UserDao;
import com.DigiRecycle.model.CollectionLog;
import com.DigiRecycle.model.Recycler;
import com.DigiRecycle.model.User;

@Controller
public class UserController {
	
    
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user  = (User) context.getBean("user");
	UserDao userDao = (UserDao) context.getBean("userDao");
	CollectionLog collectionLog = (CollectionLog) context.getBean("collectionLog");
	CollectionLogDao collectionLogDao  = (CollectionLogDao) context.getBean("collectionLogDao");
	RecyclerDao recyclerDao = (RecyclerDao) context.getBean("recyclerDao");
	
	
	
	
	 // user login opening page
	 @RequestMapping("/userLogin")
	    public String showLoginPage() {
	        return "userLogin";
	    }
	 
	 // user login 
	 @RequestMapping(value = "/UserLoginSubmit", method = RequestMethod.POST)
	 public String userLogin(HttpServletRequest request, HttpSession session, Model model) {
	     String contact = request.getParameter("uContact");
	     String password = request.getParameter("uPassword");

	     User user = userDao.getUserByContact(contact);

	     if (user != null && user.getuPassword().equals(password)) {
	         session.setAttribute("user", user);
	         return "userDashboard";
	     } else {
	         model.addAttribute("error", "Invalid contact or password");
	         return "userLogin";
	     }
	 }

	 
	// user register opening page
		 @RequestMapping("/userRegister")
		    public String showRegisterPage() {
		        return "userRegister";
		    }
		 
		 
		//user register page
		    
		    @RequestMapping(path="/UserRegisterSubmit",method=RequestMethod.POST)
	 		public String userRegister(HttpServletRequest request){
	 		
	 		
	 		user.setuContact(request.getParameter("uContact"));
	 		user.setuName(request.getParameter("uName"));
	 		user.setuAddress(request.getParameter("uAddress"));
	 		user.setuEmail(request.getParameter("uEmail"));
	 		user.setuPassword(request.getParameter("uPassword"));
	 		
	 		 userDao.addUser(user);
	 		
	 		
	 			return "redirect:/userDashboard";
	 			
	 		
	 		}
		    
		    // user dashboard mapping
		    
		    
		    @RequestMapping("/userDashboard")
		    public String showDashboardPage() {
		        return "userDashboard";
		    }
	 
	      
          //view All users by admin
			
			
	 		@RequestMapping("/adminViewUsers")
	 		public String OpenViewAll(Model m) {
	 		    List<User> allUsers = userDao.getAllUsers(); 
	 		    m.addAttribute("users", allUsers);  
	 		    return "adminViewUsers";
	 		}

          
	 		
	 		

	     	// Show the form to submit collection request
	 	    @RequestMapping("/collectionRequest")
	 	    public String showCollectionRequestPage() {
	 	        return "collectionRequest";
	 	    }

	 	    // Handle form submission
 	   /* @RequestMapping(value = "/SubmitCollectionRequest", method = RequestMethod.POST)
 	    public String submitCollectionRequest(HttpServletRequest request, HttpSession session, Model model) {
 	        
 	        // Get user from session
 	        User user = (User) session.getAttribute("user");

 	        

 	       collectionLog.setPlasticType(request.getParameter("plasticType"));
 	       collectionLog.setQuantity(request.getParameter("quantity"));
 	       collectionLog.setRequestdate(request.getParameter("requestdate")); 
 	       collectionLog.setStatus("Pending");        // Default status
 	       collectionLog.setUser(user);               // Associate user

 	        collectionLogDao.insertRequest(collectionLog);  // Save log

 	        model.addAttribute("msg", "Collection request submitted successfully!");
 	        return "userDashboard";
 	    }*/
	 	    
	 	   @RequestMapping(value = "/SubmitCollectionRequest", method = RequestMethod.POST)
	 	  public String submitCollectionRequest(HttpServletRequest request, HttpSession session, Model model) {
	 	      User user = (User) session.getAttribute("user");

	 	      collectionLog.setPlasticType(request.getParameter("plasticType"));
	 	      collectionLog.setQuantity(request.getParameter("quantity"));
	 	      collectionLog.setRequestdate(request.getParameter("requestdate"));
	 	      collectionLog.setStatus("Pending");
	 	      collectionLog.setUser(user);

	 	      // Assign recycler (pick any available recycler)
	 	      Recycler recycler = recyclerDao.getAnyAvailableRecycler(); // Implement this in RecyclerDao
	 	      collectionLog.setRecycler(recycler);

	 	      collectionLogDao.insertRequest(collectionLog);

	 	      model.addAttribute("msg", "Collection request submitted successfully!");
	 	      return "userDashboard";
	 	  }

	 	    
	 	    
	 	    
	 	    
	 	    
	 	 
	 	   
        // view collection status-user
	 	  
	 	 @RequestMapping("/viewCollectionStatus")
	 	public String viewCollectionStatus(HttpSession session, Model model) {
	         User user = (User) session.getAttribute("user");
	         if (user == null) {
	             // Redirect to login if user not logged in
	             return "redirect:/userLogin";
	         }

	         // Fetch collection requests for the logged-in user
	         List<CollectionLog> logs = collectionLogDao.getRequestsByUser(user);
	         model.addAttribute("logs", logs);

	         // Return JSP view name
	         return "viewCollectionStatus";
	     }


	 	    
	 	    
	 	    
	 	/* // recycler view request mapping - view collection request added by user
	 	@RequestMapping("/recyclerViewRequest")
	    public String viewAllRequests(HttpSession session, Model model) {
	        Recycler recycler = (Recycler) session.getAttribute("recycler");
	        if (recycler == null) {
	            return "redirect:/recyclerLogin";
	        }

	        List<CollectionLog> logs = collectionLogDao.getAllRequests();
	        model.addAttribute("logs", logs);
	        return "recyclerViewRequest";  // JSP name
	    } */
	 	   
	 	
	 	// update status - recycler
	 	
//	 	@RequestMapping("/updateStatus")  // Assuming this is the URL to show update page
//	 	public String showUpdatePage() {
//	 	    return "updateStatus";  // JSP page name to display update form (if any)
//	 	}
//
//	 	@RequestMapping(value = "/doUpdateStatus", method = RequestMethod.GET)
//	 	public String updateStatus(@RequestParam("id") int id,HttpSession session) {
//	 	    CollectionLog log = collectionLogDao.getRequestById(id);
//	 	    if (log != null && !"Collected".equalsIgnoreCase(log.getStatus())) {
//	 	        log.setStatus("Collected");
//	 	        collectionLogDao.updateRequest(log);
//	 	    }
//	 	    return "redirect:/updateStatus";  // Redirect to list after update
//	 	}
	 	
	 	
	 	
	 	/*// update status
	 	
	 	
	 	 // user login opening page
		 @RequestMapping("/updateStatus")
		    public String showsUpdatePage() {
		        return "updateStatus";
		    }
	 	    
		 @RequestMapping("/doUpdateStatus")
		 public String updateStatus(@RequestParam("id") int id, HttpSession session) {
		     // Check if recycler is logged in
		     Recycler recycler = (Recycler) session.getAttribute("recycler");
		     if (recycler == null) {
		         return "redirect:/recyclerLogin";
		     }

		     // Fetch the collection log
		     CollectionLog log = collectionLogDao.getRequestById(id);

		     // Check if log exists, belongs to this recycler, and is still pending
		     if (log != null && log.getRecycler() != null &&
		         log.getRecycler().getRecContact() == recycler.getRecContact() &&
		         !"Collected".equalsIgnoreCase(log.getStatus())) {

		         log.setStatus("Collected"); // Update status
		         collectionLogDao.updateRequest(log); // Save in DB
		     }

		     // Redirect back to recycler's request list
		     return "redirect:/recyclerViewRequest";
		 }
	 	 
	 	   
	 	   */
	 	 
	 	 
	 	// Show requests assigned to the logged-in recycler
	 	@RequestMapping("/recyclerViewRequest")
	 	public String viewAllRequests(HttpSession session, Model model) {
	 	    Recycler recycler = (Recycler) session.getAttribute("recycler");
	 	    if (recycler == null) {
	 	        return "redirect:/recyclerLogin";  // Redirect if not logged in
	 	    }

	 	    // Fetch requests assigned to this recycler using their recContact (assuming it's unique)
	 	    List<CollectionLog> logs = collectionLogDao.getRequestsByRecyclerContact(recycler.getRecContact());
	 	    model.addAttribute("logs", logs);

	 	    return "recyclerViewRequest"; // Forward to your JSP page
	 	}

	 	// Mark request as collected
	 	@RequestMapping("/updateRequestStatus")
	 	public String updateStatus(@RequestParam("id") int id, HttpSession session) {
	 	    Recycler recycler = (Recycler) session.getAttribute("recycler");
	 	    if (recycler == null) {
	 	        return "redirect:/recyclerLogin";  // Redirect if not logged in
	 	    }

	 	    CollectionLog log = collectionLogDao.getRequestById(id);

	 	    // Check that:
	 	    // 1. Request exists
	 	    // 2. Request belongs to this recycler (matching recContact)
	 	    // 3. Status is not already "Collected"
	 	    if (log != null 
	 	        && log.getRecycler() != null
	 	        && log.getRecycler().getRecContact().equals(recycler.getRecContact())
	 	        && !"Collected".equalsIgnoreCase(log.getStatus())) {

	 	        log.setStatus("Collected");
	 	        collectionLogDao.updateRequest(log);
	 	    }

	 	    return "redirect:/recyclerViewRequest";  // Refresh list after update
	 	}

	 	
	 	
	 	//update status
	 	
	 	@RequestMapping("/updateStatus")
	 	public String showRequestsByStatus(HttpSession session, Model model) {
	        Recycler recycler = (Recycler) session.getAttribute("recycler");
	        if (recycler == null) {
	            return "redirect:/recyclerLogin";
	        }

	        List<CollectionLog> allLogs = collectionLogDao.getRequestsByRecyclerContact(recycler.getRecContact());

	        List<CollectionLog> pendingLogs = new ArrayList<CollectionLog>();
	        List<CollectionLog> collectedLogs = new ArrayList<CollectionLog>();


	        for (CollectionLog log : allLogs) {
	            if ("Pending".equalsIgnoreCase(log.getStatus())) {
	                pendingLogs.add(log);
	            } else if ("Collected".equalsIgnoreCase(log.getStatus())) {
	                collectedLogs.add(log);
	            }
	        }

	        model.addAttribute("pendingLogs", pendingLogs);
	        model.addAttribute("collectedLogs", collectedLogs);

	        return "updateStatus";  
	    }
	 	
	 	
	 	// admin view collection logs
	 	@RequestMapping("/viewCollectionLogs")
	 	public String viewAllCollectionLogs(Model model) {
	 	    List<CollectionLog> allLogs = collectionLogDao.getAllRequests();
	 	    model.addAttribute("logs", allLogs);
	 	    return "viewCollectionLogs";  
	 	}
	}

	 	
		
 	

	 	


      


