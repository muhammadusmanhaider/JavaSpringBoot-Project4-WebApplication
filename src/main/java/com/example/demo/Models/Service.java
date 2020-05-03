package com.example.demo.Models;
import javax.persistence.*;

@Entity
@Table(name = "service")
public class Service {
    @Id
    @Column(name = "serviceid")
    private String serviceId;
    @Column(name = "servicetype")
    private String serviceType;
    @Column(name = "servicetypedescription")
    private String serviceTypedescription;
    @Column(name = "servicecost")
    private String serviceCost;


    public Service() {
    }

    public String getServiceId() {
        return serviceId;
    }

    public void setServiceId(String serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    public String getServiceTypedescription() {
        return serviceTypedescription;
    }

    public void setServiceTypedescription(String serviceTypedescription) {
        this.serviceTypedescription = serviceTypedescription;
    }

    public String getServiceCost() {
        return serviceCost;
    }

    public void setServiceCost(String serviceCost) {
        this.serviceCost = serviceCost;
    }
}