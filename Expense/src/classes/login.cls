public with sharing class login {
    
    public Registration__C reg{get;set;}
    public Registration__c reglist{get;set;}
    public login(apexpages.StandardController sc)
    {
        this.reg=(Registration__C)sc.getRecord();
    }

    public PageReference show()
    {
		reglist=[select name,password__c from Registration__c where name=:reg.name and password__c=:reg.password__c LIMIT 1];        
        
        if(reglist!=Null)
        {
            PageReference pg=new PageReference('https://c.ap5.visual.force.com/apex/loginvf1');
            return pg;
        }
        else
        {
        return null;
        }
        
   }
        public PageReference ak()
        {
            PageReference pag=new PageReference('https://c.ap5.visual.force.com/apex/loginvf2');
            return pag;
        }
    
}