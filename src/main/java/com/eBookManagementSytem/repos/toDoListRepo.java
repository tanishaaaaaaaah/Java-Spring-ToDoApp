package com.eBookManagementSytem.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eBookManagementSytem.models.toDoList;

@Repository
public interface toDoListRepo extends JpaRepository<toDoList, Long>{
	
	

}
