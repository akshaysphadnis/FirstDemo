public with sharing class akshay1{

    public ApexPages.StandardController Controller;
    public String Lastname{set;get;}
    public List<SelectOption> myoption{set;get;} 
    public String myval{set;get;}
    public Contact con=new Contact();
    public akshay1(ApexPages.StandardController Controller)
    {
        con=(Contact)Controller.getRecord();
    	this.controller=controller;
        list<contact> cont=new list<contact>();
        cont=[select accountid from contact];
	    /*list<contact>myoption = new List<contact>();
        for(contact co:cont)
        {
            myoption.add(co);
        }*/
    }
    
    
    public pageReference show()
    {   
       	//Contact.AccountId=myval;
        insert con;
       	return null;
    }
    
    
    
}