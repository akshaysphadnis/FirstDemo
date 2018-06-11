public with sharing class task2 {
    
      public Account acc {get;set;}
      public List<Contact> con{ get;set;} 
      public List<Opportunity> opp{get;set;}
   	  
      public task2(ApexPages.StandardController sc) 
      {
      	 this.acc = (Account)sc.getRecord();
      }
    
    
    public pageReference show()
    {
        con=[Select name,Account.name from Contact where accountid=:acc.ParentId];
        opp=[Select name,Account.name from Opportunity where accountid=:acc.ParentId];
        return null;
        
        
    }
    
    

}