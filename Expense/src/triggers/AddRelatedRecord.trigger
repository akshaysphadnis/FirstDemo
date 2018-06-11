trigger AddRelatedRecord on Account(after insert, after update) {
    List<Opportunity> oppList = new List<Opportunity>();
    
    // Add an opportunity for each account if it doesn't already have one.
    // Iterate over accounts that are in this trigger but that don't have opportunities.
    for (Account a : [SELECT Id,Name FROM Account
                     WHERE Id IN :Trigger.New AND
                     Id NOT IN (SELECT AccountId FROM Opportunity)]) {
        // Add a default opportunity for this account
        oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                   StageName='Prospecting',
                                   CloseDate=System.today().addMonths(1),
                                   AccountId=a.Id)); 
    }
    
    if (oppList.size() > 0) {
        insert oppList;
    }
}


/*trigger AddRelatedRecord on Account (after insert,after update) {
    
    List<Opportunity> opp=new List<Opportunity>();
    
    Map<Id,Account> accwthopp=new Map<Id,Account>([Select Id,(Select Id From Opportunities) FROM Account WHERE ID IN:Trigger.New]);
    
    for(Account a:Trigger.new)
    {
        System.debug('Account with opportunity size='+accwthopp.get(a.id).Opportunities.size());
        if(accwthopp.get(a.id).Opportunities.size()==0)
        {
            opp.add(new Opportunity(Name=a.Name+'Opportunity',StageName='Prospecting',CloseDate=System.today().addMonths(1),AccountId=a.Id));
        }
        
    }
    if(Opp.size()>0)
    {
        insert opp;
    }

}*/