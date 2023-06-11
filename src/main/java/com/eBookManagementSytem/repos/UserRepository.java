package com.eBookManagementSytem.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eBookManagementSytem.models.Customer;

@Repository
public interface UserRepository extends JpaRepository<Customer, Integer> {
    Customer findByUsername(String username);
}
