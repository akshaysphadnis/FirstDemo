trigger UpdateSalesRep on Account (before insert,before update) {
    
    Set<Id> setowner=new Set<Id>();
    
    for(Account acc:trigger.new)
    {
        setowner.add(acc.OwnerId);
    }
    
    Map<Id,user> usermap=new Map<Id,user>([Select name from User where id in:setowner]);
    
    for(Account acc:trigger.new)
    {
        user usr=usermap.get(acc.OwnerId);
        acc.Sales_Rep__c=usr.Name;   
    }
}