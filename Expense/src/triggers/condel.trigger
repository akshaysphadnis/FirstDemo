trigger condel on Account (before delete) {
    
    Set<id> acclist=new Set<id>();
    
    for(Account acc:trigger.old)
    {
        acclist.add(acc.Id);
    }

    List<Contact> con=[Select id from Contact where accountid in:acclist];
    delete con;
}