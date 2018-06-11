trigger CountContact1 on Account (before insert) {

    public List<Contact> conlist;
    
    for(Account acc:trigger.old)
    {
        conlist=[select id from contact where accountid=:acc.id];
        acc.Count__c=conlist.size();   
        update acc; 
    }
    
}