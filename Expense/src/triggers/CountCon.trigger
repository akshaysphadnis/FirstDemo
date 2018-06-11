trigger CountCon on Contact (after insert,after update,after delete,after undelete) {

    Set<Id> setid=new Set<Id>();
    List<Contact> conlist=new List<Contact>();
    List<Account> acclist=new List<Account>();
    List<Account> listacc=new List<Account>();
    if(Trigger.isInsert||Trigger.isUndelete)
    {
        For(Contact con:trigger.new)
        {
            setid.add(con.AccountId);
        }
     }
    
    if(Trigger.isUpdate||Trigger.isDelete)
    {
        For(Contact con:trigger.old)
        {
            setid.add(con.AccountId);
        }
    }
    
    acclist=[Select id,Count__c,(Select id from Contacts)from Account where id In:setId];
    
    for(Account acc:acclist)
    {
        acc.Count__c=acc.Contacts.size();
        listacc.add(acc);
    }
    update listacc;

}