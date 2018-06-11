public class CustomerList {

    public List<Customer> result{set;get;}
    public List<SelectOption> myoption{set;get;}
    public String myval{set;get;}
    public CustomerList()
    {
        
        Customer s1=new Customer('ak',12);
        Customer s2=new Customer('akki',14);
        result=new List<customer>();
        result.add(s1);
        result.add(s2);
        
       SelectOption a1=new SelectOption('null','none');
       SelectOption a2=new SelectOption('one','jan');
       SelectOption a3=new SelectOption('two','feb'); 
        myoption=new List<SelectOption>();
        myoption.add(a1);
        myoption.add(a2);
        myoption.add(a3);
        
        
    }	
}