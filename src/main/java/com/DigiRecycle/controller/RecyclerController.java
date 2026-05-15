package com.DigiRecycle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.DigiRecycle.dao.RecyclerDao;
import com.DigiRecycle.model.Recycler;


@Controller
public class RecyclerController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Recycler recycler  = (Recycler) context.getBean("recycler");
	RecyclerDao recyclerDao = (RecyclerDao) context.getBean("recyclerDao");
	
	 // add recycler page
		
	 		@RequestMapping("/addRecycler")
	 		public String add(){
	 			return "addRecycler";
	 		}
	 		
	 		
	 		@RequestMapping(path="/AddRecyclerSubmit",method=RequestMethod.POST)
	 		public String addRecycler(HttpServletRequest request){
	 		
	 		
	 		recycler.setRecContact(request.getParameter("recContact"));
	 		recycler.setRecName(request.getParameter("recName"));
	 		recycler.setRecZone(request.getParameter("recZone"));
	 		recycler.setRecEmail(request.getParameter("recEmail"));
	 		recycler.setRecPassword(request.getParameter("recPassword"));
	 		
	 		 recyclerDao.addRecycler(recycler);
	 		
	 		
	 			return "redirect:/viewAll";
	 			
	 		
	 		}
	 		
	 		//view All recyclers page mappings
			
			
	 		@RequestMapping("/viewAll")
	 		public String OpenViewAll(Model m) {
	 		    List<Recycler> allRecyclers = recyclerDao.getAllRecyclers(); 
	 		    m.addAttribute("recyclers", allRecyclers);  
	 		    return "viewAll";
	 		}

	 		
            // view one recycler
	 		@RequestMapping(path="/search", method = RequestMethod.GET)
	 		public String openSearch(Model m, HttpServletRequest request) {
	 		    String recName = request.getParameter("recName");
	 		    if (recName != null && !recName.trim().isEmpty()) {
	 		        Recycler recycler = recyclerDao.getRecycler(recName);
	 		        m.addAttribute("recycler", recycler);
	 		    } else {
	 		        m.addAttribute("recycler", null);
	 		    }
	 		    return "viewAll";   
	 		}
	 		
	 	


			// view recyclers
			@RequestMapping("/viewRecycler")
	 		public String OpenViewAll1(Model m) {
	 		    List<Recycler> allRecyclers = recyclerDao.getAllRecyclers(); 
	 		    m.addAttribute("recyclers", allRecyclers); 
	 		    return "viewAll";
	 		}
			
			// delete recycler
			@RequestMapping(value = "/deleteRecyclerConfirmed", method = RequestMethod.POST)
			public String deleteRecyclerConfirmed(HttpServletRequest request) {
			    String contact = request.getParameter("recContact");
			    recyclerDao.deleteRecycler(contact);
			    return "redirect:/viewAll";
			}

			
			
			
			// recycler login opening page
			
			@RequestMapping("/recyclerLogin")
		    public String showLoginPage() {
		        return "recyclerLogin";
		    }
			
			// Recycler login
			@RequestMapping(value = "/RecyclerLoginSubmit", method = RequestMethod.POST)
			public String recyclerLogin(HttpServletRequest request, HttpSession session, Model model) {
			    String contact = request.getParameter("recContact");
			    String password = request.getParameter("recPassword");

			    Recycler recycler = recyclerDao.getRecyclerByContact(contact); // check if method matches

			    if (recycler != null) {
			        if (recycler.getRecPassword().equals(password)) {
			            session.setAttribute("recycler", recycler);
			            System.out.println(" Recycler login successful: " + recycler.getRecName());
			            return "recyclerDashboard";
			        } else {
			            model.addAttribute("error", " Invalid password");
			            return "recyclerLogin";
			        }
			    } else {
			        model.addAttribute("error", " Recycler not found");
			        return "recyclerLogin";
			    }
			}

			    // opening recycler register page
			@RequestMapping("/recyclerRegister")
			public String showrecyclerRegisterPage() {
			    return "recyclerRegister"; 
			}

			    
			    
			    //recycler register page
			    
			    @RequestMapping(path="/RecyclerRegisterSubmit",method=RequestMethod.POST)
		 		public String recyclerRegister(HttpServletRequest request){
		 		
		 		
		 		recycler.setRecContact(request.getParameter("recContact"));
		 		recycler.setRecName(request.getParameter("recName"));
		 		recycler.setRecZone(request.getParameter("recZone"));
		 		recycler.setRecEmail(request.getParameter("recEmail"));
		 		recycler.setRecPassword(request.getParameter("recPassword"));
		 		
		 		 recyclerDao.addRecycler(recycler);
		 		
		 		
		 			return "redirect:/recyclerDashboard";
		 			
		 		
		 		}
			    
			    
			    //recycler dashboard
			    
			    @RequestMapping("/recyclerDashboard")
			    public String showDashboardPage() {
			        return "recyclerDashboard";
			    }
			    
			}
				
           
			
			


