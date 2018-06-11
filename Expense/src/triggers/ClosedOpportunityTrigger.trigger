trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    
 List<Task> task=new List<Task>();
    
    for(Opportunity opp:Trigger.new)
    {
        If(opp.StageName=='CLOSED WON')
        {
                Task t=new Task();
                t.Subject='Follow Up Test Task';
                t.WhatId=opp.Id;
                task.add(t);
        }
    }
    
    if(task.size()>0)
    {
        insert task;
    }
}