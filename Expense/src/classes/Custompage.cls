public class Custompage
{
    public Candidate__c can{get;set;}
    public Position__c pos{get;set;}
    public Job_Application__c job{get;set;}
    
    public Custompage(ApexPages.StandardController Controller)
    {
    	   can=new candidate__c(); 
        	pos=new position__c();
        	job=new Job_Application__c();
    }    
    
    public candidate__c getcan(candidate__c op)
    {
        this.can=op;
        return can;
    }
    public Position__c getpos(Position__c po)
    {
        this.pos=po;
        return pos;
    }
    public Job_Application__c getjob(Job_Application__c jo)
    {
        this.job=jo;
        return job;
    }
    
    public Pagereference save() 
    {
        return null;
        
    }
}