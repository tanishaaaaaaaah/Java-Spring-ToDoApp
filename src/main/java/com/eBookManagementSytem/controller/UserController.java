package com.eBookManagementSytem.controller;

import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eBookManagementSytem.models.Customer;
import com.eBookManagementSytem.services.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	/*@GetMapping("/adminindex")
	public String adminIndexPage(Model model) {
	    // Add admin-specific logic here
	    return "adminindex"; // Return the admin index page view name
	}*/

	/*@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("newUser", new Customer());
		System.out.println("ok Inserted");
		return "register";
	}*/

	/*@PostMapping("/register")
	public String registerUser(@ModelAttribute("newUser") Customer user, HttpServletRequest request) {
		userService.registerUser(user);
		return "redirect:/login";
	}*/

	@GetMapping({ "/", "/login" })
	public String showLoginForm() {
		return "login";
	}

	
	@PostMapping({ "/", "/login" })
	public String loginUser(HttpServletRequest request, RedirectAttributes redirectAttributes, HttpSession session) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean loginSuccess;

		
		loginSuccess = userService.loginUser(username, password);
		

		if (loginSuccess) {
			session.setAttribute("loggedInUser", username);
			System.out.print(username);
			if(username.equals("tanu")) {
		        redirectAttributes.addFlashAttribute("welcomeMessage", "Welcome Admin!");
		        System.out.println("tanu");
		        return "redirect:/VIEWTODOLIST";
			}
			else{
		        redirectAttributes.addFlashAttribute("welcomeMessage", "Welcome, " + username + "!");
				return "redirect:/VIEWTODOLIST";
				} 
			}
		else {
			redirectAttributes.addFlashAttribute("loginFailed", true);
			return "redirect:/login";
		}
	}

	@GetMapping("/index")
	public String indexPage(HttpSession session,Model model) {
		
        
        List<Customer> users = userService.getUsers();
        model.addAttribute("users", users);
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            String usersJson = objectMapper.writeValueAsString(users);
            System.out.println(usersJson);
        } catch (Exception e) {
            e.printStackTrace();
        }

		// Check if the user is logged in
		if (session.getAttribute("loggedInUser") != null) {
			return "index";
		} else {
			return "redirect:/login";
		}
	}
	
	
	

	@GetMapping("/admin")
	public String showadminDashBoard() {
		return "adminpanel";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		String userType = (String) session.getAttribute("userType");

		if (userType != null && userType.equals("user")) {
			session.removeAttribute("loggedInUser");
			System.out.println("User logged out successfully!!");
		} else if (userType != null && userType.equals("admin")) {
			session.removeAttribute("loggedInAdmin");
			System.out.println("Admin logged out successfully!!");
		}

		return "redirect:/login";
	}
	

}

