public class custom {
    
    public Candidate__c can{get;set;}
    public Position__c pos{set;get;}
    public Job_Application__c job{set;get;}
    
    
    public Custom(ApexPages.StandardController Controller)
    {
    	    can=new candidate__c();
        	pos=new position__c();
        	job=new Job_Application__c();
        	
    		can=(Candidate__c)Controller.getRecord();
   			pos=(Position__c)Controller.getRecord();
        	job=(Job_Application__c)Controller.getRecord();
    }    
    
    
    public Pagereference save() 
    {
        insert can;
        insert pos;
        insert job;
        return null;
        
    }

}