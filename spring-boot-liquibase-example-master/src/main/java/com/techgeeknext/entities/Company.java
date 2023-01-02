package com.techgeeknext.entities;

import jakarta.persistence.*;
import lombok.Data;
@Entity
@Table(name = "company")
@Data
public class Company {

  @Id
  //@GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(nullable = false, unique = true)
  private String name;

  @ManyToOne
  @JoinColumn(name = "employee")
  private Employee employee;
}
