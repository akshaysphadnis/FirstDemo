public class pos {
    
    public List<Job_Application__c> post{set;get;}

    public pageReference show()
    {
        post=[Select Position_Title__c,Status__c,JobApp__r.Max_Pay__c,JobApp__r.Min_Pay__c from Job_Application__c];
            return null;
    }
}