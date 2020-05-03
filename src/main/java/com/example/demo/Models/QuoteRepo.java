package com.example.demo.Models;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface QuoteRepo extends CrudRepository<Quote, String> {
    @Query(value = "select * from transactioninfo e where e.receiptno like %:keyword% or e.receiptno like %:keyword% ", nativeQuery = true)
    List<Quote> findByKeyword(@Param("keyword") String keyword);
}