package com.example.demo.controllers;
import com.example.demo.Models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.Optional;
import java.util.UUID;

@Controller
public class MainController {

    @RequestMapping("/")
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

    @RequestMapping("/location")
    public ModelAndView location(){
        ModelAndView mv = new ModelAndView("location");
        return mv;
    }

    @Autowired
	EmployeeRepo employeeRepo;

    //MAIN
    @RequestMapping("/employee")
    public ModelAndView employee(){
        ModelAndView mv = new ModelAndView("employee");
        mv.addObject("employeelist", employeeRepo.findAll());
        return mv;
    }

    //Search
    @RequestMapping( value = "/employee/search", method = RequestMethod.GET)
    public ModelAndView employeesearch(@RequestParam(value = "keyword", required = true) String keyword
    ) {
        ModelAndView mv = new ModelAndView("employee");
        mv.addObject("employeelist", employeeRepo.findByKeyword(keyword));
        return mv;
    }

    //EDIT
    @RequestMapping( value = "/employee/edit/{employeeId}", method = RequestMethod.GET)
    public ModelAndView employee_edit(@PathVariable("employeeId") String employeeId){
        ModelAndView mv = new ModelAndView("employee_edit");
        Optional<Employee> entry = employeeRepo.findById(employeeId);
        Employee entryToMap = entry.get();
        mv.addObject("selectedItem", entryToMap);
        return mv;
    }

    //SAVE
    @RequestMapping(value = "/employee/save", method = RequestMethod.POST)
    public ModelAndView employee_save( @RequestParam("employeeid") String employeeId,
                                       @RequestParam("employeefirstname") String employeefirstName,
                                      @RequestParam("employeelastname") String employeelastName, @RequestParam("employeeaddress") String employeeAddress,
                                      @RequestParam("employeeemail") String employeeEmail, @RequestParam("employeetype") String employeeType){
        ModelAndView mv = new ModelAndView("redirect:/employee/");
        Employee personToSave ;
        if(!employeeId.isEmpty())
        {
            Optional<Employee> users = employeeRepo.findById(employeeId);
            personToSave = users.get();
        }
        else
        {
            personToSave = new Employee();
            personToSave.setEmployeeId(UUID.randomUUID().toString());
        }
        personToSave.setEmployeefirstName(employeefirstName);
        personToSave.setEmployeelastName(employeelastName);
        personToSave.setEmployeeEmail(employeeEmail);
        personToSave.setEmployeeAddress(employeeAddress);
        personToSave.setEmployeeType(employeeType);
        employeeRepo.save(personToSave);
        mv.addObject("employeelist", employeeRepo.findAll());
        return mv;
    }

    //DELETE
    @RequestMapping( value = "/employee/delete/{employeeId}", method = RequestMethod.GET)
    public ModelAndView employee_delete(@PathVariable("employeeId") String employeeId){
        ModelAndView mv = new ModelAndView("redirect:/employee/");
        employeeRepo.deleteById(employeeId);
        return mv;
    }

	/*
	END OF Employee mapping-------------------------------------------------------------------------------------------------------------------
	*/

    @Autowired
	ClientRepo clientRepo;

    //MAIN
    @RequestMapping("/client")
    public ModelAndView client(){
        ModelAndView mv = new ModelAndView("client");

        mv.addObject("clientlist", clientRepo.findAll());
        return mv;
    }
    @RequestMapping( value = "/client/search", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(value = "keyword", required = true) String keyword
                               //@RequestParam(value = "clientlastname", required = false) String clientlastName
                               ) {

        ModelAndView mv = new ModelAndView("client");
        mv.addObject("clientlist", clientRepo.findByKeyword(keyword));
        return mv;
    }

    //EDIT
    @RequestMapping( value = "/client/edit/{clientId}", method = RequestMethod.GET)
    public ModelAndView client_edit(@PathVariable("clientId") String clientId){
        ModelAndView mv = new ModelAndView("client_edit");
        Optional<Client> entry = clientRepo.findById(clientId);
        Client entryToMap = entry.get();
        mv.addObject("selectedItem", entryToMap);
        return mv;
    }

    //SAVE
    @RequestMapping(value = "/client/save", method = RequestMethod.POST)
    public ModelAndView client_save(@RequestParam("clientid") String clientId, @RequestParam("clientlastname") String clientlastName, @RequestParam("clientfirstname") String clientfirstName,
                                    @RequestParam("clientaddress") String clientAddress, @RequestParam("clientemail") String clientEmail,
                                    @RequestParam("clientphoneno") String clientPhoneno){
        ModelAndView mv = new ModelAndView("client");
        Client entryToSave;

        if(!clientId.isEmpty())
        {
            Optional<Client> entity = clientRepo.findById(clientId);
            entryToSave = entity.get();
        }
        else
        {
            entryToSave = new Client();//replacement for the above comment block
            entryToSave.setClientId(UUID.randomUUID().toString());
        }

        entryToSave.setClientlastName(clientlastName);
        entryToSave.setClientfirstName(clientfirstName);
        entryToSave.setClientAddress(clientAddress);
        entryToSave.setClientEmail(clientEmail);
        entryToSave.setClientPhoneno(clientPhoneno);
        clientRepo.save(entryToSave);
        mv.addObject("clientlist", clientRepo.findAll());
        return mv;
    }

    //DELETE
    @RequestMapping( value = "/client/delete/{clientid}", method = RequestMethod.GET)
    public ModelAndView client_delete(@PathVariable("clientid") String clientid){
        ModelAndView mv = new ModelAndView("redirect:/client/");
        clientRepo.deleteById(clientid);
        return mv;
    }

	/*
		END OF Client mapping-------------------------------------------------------------------------------------------------------------------
	*/

    @Autowired
    ServiceRepo serviceRepo;

    //MAIN
    @RequestMapping("/service")
    public ModelAndView service(){
        ModelAndView mv = new ModelAndView("service");
        mv.addObject("servicelist", serviceRepo.findAll());
        return mv;
    }

    //Search
    @RequestMapping( value = "/service/search", method = RequestMethod.GET)
    public ModelAndView servicesearch(@RequestParam(value = "keyword", required = true) String keyword
                              //@RequestParam(value = "clientlastname", required = false) String clientlastName
    ) {

        ModelAndView mv = new ModelAndView("service");
        mv.addObject("servicelist", serviceRepo.findByKeyword(keyword));
        return mv;
    }

    //EDIT
    @RequestMapping( value = "/service/edit/{serviceid}", method = RequestMethod.GET)
    public ModelAndView service_edit(@PathVariable("serviceid") String serviceId){
        ModelAndView mv = new ModelAndView("service_edit");
        Optional<Service> entry = serviceRepo.findById(serviceId);
        Service entryToMap = entry.get();
        mv.addObject("selectedItem", entryToMap);
        return mv;
    }

    //SAVE
    @RequestMapping(value = "/service/save", method = RequestMethod.POST)
    public ModelAndView service_save( @RequestParam("serviceid") String serviceId,
                                      @RequestParam("servicetype") String serviceType,
                                      @RequestParam("servicetypedescription") String servicetypeDescription,
                                      @RequestParam("servicecost") String serviceCost){
        ModelAndView mv = new ModelAndView("redirect:/service/");
        Service entryToSave;

        if(!serviceId.isEmpty())
        {
            Optional<Service> entity = serviceRepo.findById(serviceId);
            entryToSave = entity.get();
        }
        else
        {
            entryToSave = new Service();
            entryToSave.setServiceId(UUID.randomUUID().toString());
        }

        entryToSave.setServiceType(serviceType);
        entryToSave.setServiceTypedescription(servicetypeDescription);
        entryToSave.setServiceCost(serviceCost);
        serviceRepo.save(entryToSave);
        mv.addObject("servicelist", serviceRepo.findAll());
        return mv;
    }

    //DELETE
    @RequestMapping( value = "/service/delete/{serviceid}", method = RequestMethod.GET)
    public ModelAndView service_delete(@PathVariable("serviceid") String serviceId){
        ModelAndView mv = new ModelAndView("redirect:/service/");
        serviceRepo.deleteById(serviceId);
        return mv;
    }

    /*
        END OF Service mapping-------------------------------------------------------------------------------------------------------------------
    */

    @Autowired
	QuoteRepo quoteRepo;

    //MAIN
    @RequestMapping("/quote")
    public ModelAndView quote(){
        ModelAndView mv = new ModelAndView("quote");
        mv.addObject("quotelist", quoteRepo.findAll());
        mv.addObject("employeelist", employeeRepo.findAll());
        mv.addObject("clientlist", clientRepo.findAll());
        mv.addObject("servicelist", serviceRepo.findAll());
        return mv;
    }

    @RequestMapping( value = "/quote/search", method = RequestMethod.GET)
    public ModelAndView quotesearch(@RequestParam(value = "keyword", required = true) String keyword
    ) {

        ModelAndView mv = new ModelAndView("quote");
        mv.addObject("quotelist", quoteRepo.findByKeyword(keyword));
        return mv;
    }

    //VIEW
    @RequestMapping( value = "/quote/view/{transactionid}", method = RequestMethod.GET)
    public ModelAndView view(@PathVariable("transactionid") String quoteid){
        ModelAndView mv = new ModelAndView("quote_view");
        Optional<Quote> person = quoteRepo.findById(quoteid);
        Quote personToMap = person.get();
        mv.addObject("selectedItem", personToMap);
        return mv;
    }

    //SAVE //Quote Table
    @RequestMapping(value = "/quote/save", method = RequestMethod.POST)
    public ModelAndView quote_save(@RequestParam("clientid") String clientId,
                                           @RequestParam("serviceid") String serviceId,
                                   @RequestParam("employeeid") String employeeId, @RequestParam("receiptno") String receiptNo){
        ModelAndView mv = new ModelAndView("redirect:/quote/");
        Quote entryToSave  = new Quote();

        if(!clientId.isEmpty())
        {
            Optional<Client> client = clientRepo.findById(clientId);
            entryToSave.setClient(client.get());
        }
        if(!employeeId.isEmpty())
        {
            Optional<Employee> employee = employeeRepo.findById(employeeId);
            entryToSave.setEmployee(employee.get());
        }
       if(!serviceId.isEmpty())
        {
            Optional<Service> service = serviceRepo.findById(serviceId);
            entryToSave.setService(service.get());
        }
        entryToSave.setTransactionId(UUID.randomUUID().toString());
            entryToSave.setReceiptNo(receiptNo);

        quoteRepo.save(entryToSave);
        mv.addObject("quotelist", quoteRepo.findAll());
        return mv;
    }

    //DELETE
    @RequestMapping( value = "/quote/delete/{transactionid}", method = RequestMethod.GET)
    public ModelAndView quote_delete(@PathVariable("transactionid") String transactionId){
        ModelAndView mv = new ModelAndView("redirect:/quote/");
        quoteRepo.deleteById(transactionId);
        return mv;
    }

	/*
		END OF Quote mapping-------------------------------------------------------------------------------------------------------------------
	*/

}