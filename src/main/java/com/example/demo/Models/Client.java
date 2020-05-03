package com.example.demo.Models;
import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "client")
public class Client {
    @Id
   // @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "clientid")
    private String clientId;
    @Column(name = "clientphoneno")
    private String clientPhoneno;
    @Column(name = "clientfirstname")
    private String clientfirstName;
    @Column(name = "clientlastname")
    private String clientlastName;
    @Column(name = "clientaddress")
    private String clientAddress;
    @Column(name = "clientemail")
    private String clientEmail;

    public Client() {
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getClientPhoneno() {
        return clientPhoneno;
    }

    public void setClientPhoneno(String clientPhoneno) {
        this.clientPhoneno = clientPhoneno;
    }

    public String getClientfirstName() {
        return clientfirstName;
    }

    public void setClientfirstName(String clientfirstName) {
        this.clientfirstName = clientfirstName;
    }

    public String getClientlastName() {
        return clientlastName;
    }

    public void setClientlastName(String clientlastName) {
        this.clientlastName = clientlastName;
    }

    public String getClientAddress() {
        return clientAddress;
    }

    public void setClientAddress(String clientAddress) {
        this.clientAddress = clientAddress;
    }

    public String getClientEmail() {
        return clientEmail;
    }

    public void setClientEmail(String clientEmail) {
        this.clientEmail = clientEmail;
    }
}
