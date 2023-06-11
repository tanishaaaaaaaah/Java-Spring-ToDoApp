package com.eBookManagementSytem.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eBookManagementSytem.models.toDoList;
import com.eBookManagementSytem.repos.toDoListRepo;
import java.util.ArrayList;

@Service
public class toDoService {
	 
	@Autowired
	toDoListRepo repo;
	
	public List<toDoList> getAllToDoItems()
	{
		//List<toDoList> TL= new List<>();
		//repo.findAll().forEach(todo -> TL.add(todo));
		//TL=repo.findAll();
		//repo.findAll().forEach(
		//todo -> {System.out.println(todo.title);}
		//		);
		//System.out.println(repo.findAll().toString());
		return repo.findAll();
	}
	
	public toDoList getToDoItemById(Long id)
	{
		return repo.findById(id).get();
	}
	
	public boolean updateStatus(Long id)
	{
		toDoList TL = getToDoItemById(id);
		TL.setStatus("Completed");
		
		return saveOrUpdateToDoItem(TL);
	}
	
	public boolean saveOrUpdateToDoItem(toDoList TL)
	{
		toDoList updateTL = repo.save(TL);
		
		if(getToDoItemById(updateTL.getId()) != null)
		{
			return true;
		}
		return false;
	}
	
	public boolean deleteToDoItem(Long id)
	{
		repo.deleteById(id);
		if(repo.findById(id).isEmpty())
		{
			return true;
		}
		return false;
		
	}
	
	

}
