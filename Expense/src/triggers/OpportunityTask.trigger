trigger OpportunityTask on Opportunity (after insert) {

    Set<Id> setid=new Set<Id>();
    List<Account> acclist=new List<Account>();
    List<Task> tasklist=new List<Task>();
    for(Opportunity opp:trigger.new)
    {
		setid.add(opp.AccountId);
    }
    acclist=[Select id,OwnerId,(Select id from opportunities) from Account where id In:setid];
    
    for(Account acc:acclist)
    {
        if(acc.Opportunities.size()>0)
        {
            Task t1=new Task();
            t1.WhatId=acc.Id;
            t1.OwnerId=acc.OwnerId;
            t1.Subject='Task Created';
            t1.Description='New task is created';
			tasklist.add(t1);            
        }
    }
    insert tasklist;
}