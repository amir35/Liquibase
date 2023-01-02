package com.techgeeknext.services;



import java.util.List;
import java.util.stream.Collectors;

import com.techgeeknext.entities.Employee;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

@SpringBootTest
public class EmployeeServiceTest {

  @Autowired
  private EmployeeService employeeService;

  @Test
  public void getEmployeeDataFromDatabase() throws Exception {
    List<Employee> employees = employeeService.getAllEmployees().collect(Collectors.toList());
    assertFalse(employees.isEmpty());
    assertEquals(5, employees.size());

    employees.forEach(System.out::println);
  }
}