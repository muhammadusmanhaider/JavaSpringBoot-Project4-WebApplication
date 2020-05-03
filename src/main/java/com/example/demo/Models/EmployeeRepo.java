package com.example.demo.Models;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface EmployeeRepo extends CrudRepository<Employee, String> {
    @Query(value = "select * from employee e where e.employeefirstname like %:keyword% or e.employeelastname like %:keyword% ", nativeQuery = true)
    List<Employee> findByKeyword(@Param("keyword") String keyword);
}
