package com.eightcolor.test;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class Employee {
  private String name;
  private int age;

  public Employee(String name, int age) {
    super();
    this.name = name;
    this.age = age;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }
  
  public boolean isOld() {
    return age > 35;
  }

  public static void main(String[] args) {
    Employee bob = new Employee("Bob", 32);
    Employee peter = new Employee("Peter", 55);
    Employee anna = new Employee("Anna", 23);
    Employee steve = new Employee("Steve", 77);
    
    List<Employee> employees = Arrays.asList(new Employee[] {bob,peter,anna,steve});
    
    List<String> names = new LinkedList<String>();
    
    for (Employee e : employees) {
      if(e.isOld()) {
        names.add(e.getName())
      }
    }
  }
}
