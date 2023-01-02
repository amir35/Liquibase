package com.techgeeknext.services;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

import com.techgeeknext.entities.Company;

import java.util.List;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CompanyServiceTest {

  @Autowired
  private CompnayService compnayService;

  @Test
  public void getCompanyDataFromDatabase() throws Exception {
    List<Company> companies = compnayService.getCompanies().collect(Collectors.toList());
    assertFalse(companies.isEmpty());
    assertEquals(1, companies.size());

  }
}