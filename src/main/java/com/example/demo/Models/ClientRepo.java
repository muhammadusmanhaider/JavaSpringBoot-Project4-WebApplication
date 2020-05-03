package com.example.demo.Models;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface ClientRepo extends CrudRepository<Client, String> {

    @Query(value = "select * from client e where e.clientfirstname like %:keyword% or e.clientlastname like %:keyword% ", nativeQuery = true)
    List<Client> findByKeyword(@Param("keyword") String keyword);
}
