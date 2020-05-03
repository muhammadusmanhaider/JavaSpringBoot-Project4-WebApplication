package com.example.demo.Models;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ServiceRepo extends CrudRepository<Service, String> {
    @Query(value = "select * from service e where e.servicetype like %:keyword% or e.servicetypedescription like %:keyword% ", nativeQuery = true)
    List<Service> findByKeyword(@Param("keyword") String keyword);
}