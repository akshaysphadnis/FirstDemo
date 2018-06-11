trigger CaseTrigger on Case (before update) {

    {
        for(Case c: trigger.new)
        {
           if(C.Status=='Working'||c.Status=='Escalated'||c.Status=='Closed')
           {
               c.OwnerId=c.CreatedById;
           }
        }
    }
    
}