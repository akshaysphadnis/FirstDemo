trigger CountContact on Contact (after insert,after delete,after undelete,after update){

    Set<Id> aId=new Set<Id>();
    list<contact> conlist=new List<Contact>();
    
    if(Trigger.isInsert||Trigger.isUndelete)
    {
        for(Contact cont:Trigger.new)
        {
            aId.add(cont.AccountId);
        }
        
        List<Account> acc=[Select id,Count__c,(Select id from contacts) from Account where Id in:aId];
      //  List<Contact> con=[Select id from Contact where Accountid in:aId];
        
        for(Account a:acc)
        {
           for(Contact c:a.contacts)
           {
               conlist.add(c);
           }
            a.Count__c=conlist.size();
            update a;
        }
        
        
        
   }
    
    if(Trigger.isdelete||Trigger.isupdate)
    {
        for(Contact con:trigger.old)
        {
            aid.add(con.AccountId);
        }
        
        List<Account> acc=[Select id,count__c,(Select id from Contacts) from Account where Id in:aId];
        for(Account a:acc)
        {
           for(Contact c:a.contacts)
           {
               conlist.add(c);
           }
            a.Count__c=conlist.size();
            update a;
        }
        
    }
}