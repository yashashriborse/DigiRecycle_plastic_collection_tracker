package com.DigiRecycle.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.DigiRecycle.dao.RecyclerDao;
import com.DigiRecycle.model.Recycler;


@Controller
public class AdminController {
	
	
	
	@RequestMapping("/")
	public String openHomePage(){
		System.out.println("Welcome to admin login  page");
		return "index";
	}

    @RequestMapping("/adminLogin")
    public String showLoginPage() {
        return "adminLogin";
    }
 
    
    @RequestMapping(path="/AdminLoginSubmit", method=RequestMethod.POST)
	public String SubmitLogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if(email.equals("admin@gmail.com")&& password.equals("admin")){
			return "adminDashboard";
		}
		else{
			return "index";
		}
	}
    
    @RequestMapping("/adminDashboard")
    public String showAdminDashboard() {
        return "adminDashboard"; // this corresponds to /WEB-INF/views/adminDashboard.jsp
    }
    
 
	
 		
 		
}
 		

