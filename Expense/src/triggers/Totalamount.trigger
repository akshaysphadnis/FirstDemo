trigger Totalamount on Item__c (after insert,after update,after undelete,after delete) {
    
    Set<id> setid=new Set<id>();
    List<Product__c> prolist=new List<Product__C>();
    if(trigger.isInsert||trigger.isUndelete)
    {
        
        for(Item__c it:trigger.new)
        {
            setid.add(it.Product__c);
        }
    }
    if(Trigger.isDelete||Trigger.isUpdate)
    {

        for(Item__c it:trigger.old)
        {
            setid.add(it.Product__c);
        }
    }
    
   
}