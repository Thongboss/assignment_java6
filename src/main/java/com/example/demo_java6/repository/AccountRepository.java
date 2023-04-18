package com.example.demo_java6.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo_java6.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, String>{
	
	Account findByEmail(String email);
	
//	@Modifying
//	@Query(value = "update acounts set password = :1 where email = :2", nativeQuery = true)
//	void updatePassword(@Param("1") String pass, @Param("2") String email);
}
