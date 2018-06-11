global class prac {
    
    public List<Job_Application__c> Job{set;get;}
    
    public pageReference show()
    {
        
        Job=[SELECT Position_Title__c,Status__c,JobApplications__r.State__c FROM Job_Application__c]; 
      	return null;   
    }

}