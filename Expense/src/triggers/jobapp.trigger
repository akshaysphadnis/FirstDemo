trigger jobapp on Position__c (before delete) {
    
     Set<id> acclist=new Set<id>();
    
    for(Position__c acc:trigger.old)
    {
        acclist.add(acc.Id);
    }

    List<Job_Application__c> con=[Select id from Job_Application__c where JobApp__c in:acclist];
    delete con;

}