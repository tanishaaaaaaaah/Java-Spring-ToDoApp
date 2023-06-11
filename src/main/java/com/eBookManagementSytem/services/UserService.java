package com.eBookManagementSytem.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eBookManagementSytem.models.Customer;
import com.eBookManagementSytem.repos.UserRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class UserService  {
	
	
    @Autowired
    private UserRepository userRepository;

    public Customer registerUser(Customer user) {
        return userRepository.save(user);
    }

    public List<Customer> getUsers() {
        List<Customer> users = userRepository.findAll();
    	return users;
    }
    
    public Customer findUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    public boolean loginUser(String username, String password) {
        Customer user = userRepository.findByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return true;
        }
        return false;
    }

}

