package com.example.demo.Models;
import javax.persistence.*;


@Entity
@Table(name = "employee")
public class Employee {
    @Id
    @Column(name = "employeeid")
    private String employeeId;
    @Column(name = "employeefirstname")
    private String employeefirstName;
    @Column(name = "employeelastname")
    private String employeelastName;
    @Column(name = "employeeemail")
    private String employeeEmail;
    @Column(name = "employeeaddress")
    private String employeeAddress;
    @Column(name = "employeetype")
    private String employeeType;


    public Employee() {
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeefirstName() {
        return employeefirstName;
    }

    public void setEmployeefirstName(String employeefirstName) {
        this.employeefirstName = employeefirstName;
    }

    public String getEmployeelastName() {
        return employeelastName;
    }

    public void setEmployeelastName(String employeelastName) {
        this.employeelastName = employeelastName;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeAddress() {
        return employeeAddress;
    }

    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }

    public String getEmployeeType() {
        return employeeType;
    }

    public void setEmployeeType(String employeeType) {
        this.employeeType = employeeType;
    }
}