public class insacc {

    public pageReference show()
    {
		List<Candidate__c> pos=new List<Candidate__c>();
       	
        pos=[Select Id,name,Email__c from Candidate__c where name='C-00014'];
        
        
       
        pos[0].Email__c='jarvis@gmail.com';
        
            update pos;
        
       return null;
    }         
       
        
        
        
        
    
}