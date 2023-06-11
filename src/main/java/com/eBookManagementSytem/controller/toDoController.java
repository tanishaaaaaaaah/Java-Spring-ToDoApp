package com.eBookManagementSytem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eBookManagementSytem.models.Customer;
import com.eBookManagementSytem.models.toDoList;
import com.eBookManagementSytem.services.toDoService;

@Controller
public class toDoController {
	
	@Autowired
	private toDoService service;
	
	
	@GetMapping({"/VIEWTODOLIST"})
	//@GetMapping({"/","VIEWTODOLIST"})
	public String viewalltodoitems(Model model, @ModelAttribute("message") String message)
	{
		//System.out.println("controller file"+ service.getAllToDoItems());
		model.addAttribute("list",service.getAllToDoItems());
		model.addAttribute("msg",message);
		return "VIEWTODOLIST";
	}
	
	@GetMapping("/UPDATETODOSTATUS/{id}")
	public String updatetodostatus(@PathVariable Long id, RedirectAttributes redirectAttributes)
	{
		if(service.updateStatus(id))
		{
			redirectAttributes.addFlashAttribute("message","update successful");
			return "redirect:/VIEWTODOLIST";
		}
		
		redirectAttributes.addFlashAttribute("message","update unsuccessful");
		return "redirect:/VIEWTODOLIST";
	}
	
	@GetMapping("/ADDTODOITEM")
	public String addtodoitems(Model model)
	{
		model.addAttribute("todo", new toDoList());
		return "ADDTODOITEM";
	}
	
	@PostMapping("/SAVETODOITEM")
	public String savetodoitem(toDoList todo, RedirectAttributes redirectAttributes)
	{
		if(service.saveOrUpdateToDoItem(todo))
		{
			redirectAttributes.addFlashAttribute("message","save successful");
			return "redirect:/VIEWTODOLIST";
		}
		redirectAttributes.addFlashAttribute("message","save unsuccessful");
		return "redirect:/ADDTODOITEM";
	}
	
	@GetMapping("/EDITTODOITEM/{id}")
	public String edittodoitem(@PathVariable Long id, Model model)
	{
		model.addAttribute("todo",service.getToDoItemById(id));
		return "EDITTODOITEM";
	}
	
	@PostMapping("/EDITSAVETODOITEM")
	public String editsavetodoitem(toDoList todo, RedirectAttributes redirectAttributes)
	{
		if(service.saveOrUpdateToDoItem(todo))
		{
			redirectAttributes.addFlashAttribute("message","edit successful");
			return "redirect:/VIEWTODOLIST";
		}
		redirectAttributes.addFlashAttribute("message","edit unsuccessful");
		return "redirect:/EDITSAVETODOITEM/" + todo.getId();
	}
	
	@GetMapping("/DELETETODOITEM/{id}")
	public String deletetodoitem(@PathVariable Long id, RedirectAttributes redirectAttributes)
	{
		if(service.deleteToDoItem(id))
		{
			redirectAttributes.addFlashAttribute("message","delete successful");
			return "redirect:/VIEWTODOLIST";
		}
		redirectAttributes.addFlashAttribute("message","delete unsuccessful");
		return "redirect:/VIEWTODOLIST";
	}
	
	

}
