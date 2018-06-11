trigger salesrepupdate on Account (before insert,before update) {
    
    Set<Id> accset=new Set<Id>();
    
    for(Account acc:trigger.new)
    {
        accset.add(acc.OwnerId);
    }
    
    Map<Id,user> usermap=new Map<Id,user>([Select Name from user where id in:accset]);
    
    for(Account acc:trigger.new)
    {
        User usr=usermap.get(acc.OwnerId);
        acc.Sales_Rep__c=usr.Name;
    }

    }