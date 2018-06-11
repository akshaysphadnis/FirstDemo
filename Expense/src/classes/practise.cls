public class practise {
   
    public Candidate__C can{set;get;}
   
    
    public practise(ApexPages.StandardController Controller)
    {	
        can=new Candidate__c();
        can=(Candidate__c)Controller.getRecord();
    }
    
    Public Pagereference save()
    {
        insert can;
        return null;
    }

}