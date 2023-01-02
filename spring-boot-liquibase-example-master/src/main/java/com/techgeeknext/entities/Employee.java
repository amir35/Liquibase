package com.techgeeknext.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "employment")
@Data
public class Employee {

  @Id
  //@GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @Column(nullable = false, unique = true)
  private String name;

}
