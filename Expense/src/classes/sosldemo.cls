public with sharing class sosldemo {

    public List<Opportunity> oplist{set;get;}
    public List<Lead> leadlist{get;set;}
    public List<Contact> conlist{get;set;}
    public List<Account> acclist{set;get;}
    
    public sosldemo()
    {
        
    }
    
    public void sosl()
    {
        oplist = new List<opportunity>();
        leadlist=new List<Lead>();
        conlist=new List<Contact>();
        acclist=new List<Account>();
        
        List<List<Sobject>> searchList=[FIND 'Batman' IN ALL FIELDS RETURNING Account(Id,Name,type),Contact(name,email),Opportunity(name,StageName),Lead(Company,name,Status)];
        
        acclist=((List<Account>)searchList[0]);
        conlist=((List<Contact>)searchList[1]);
        oplist=((List<Opportunity>)searchList[2]);
        leadlist=((List<Lead>)searchList[3]);
        
    }
}