public with sharing class soslprac {

    public List<Account> acc{get;set;}
    public List<Contact> con{get;set;}
    public List<Opportunity> opp{get;set;}
    public List<Lead> led{get;set;}
    
    public void sosl()
    {
        acc=new List<Account>();
        con=new List<Contact>();
        opp=new List<Opportunity>();
        led=new List<Lead>();
        
        List<List<Sobject>> searchlist= [FIND 'test' IN ALL FIELDS RETURNING Account(id,type,name),Contact(name,email),Opportunity(name),Lead(Company,name)];

    
    
    acc = ((List<Account>)searchList[0]);
    con = ((List<Contact>)searchList[1]);
    opp=  ((List<Opportunity>)searchList[2]);
    led=  ((List<Lead>)searchList[3]);    
    }    
  }