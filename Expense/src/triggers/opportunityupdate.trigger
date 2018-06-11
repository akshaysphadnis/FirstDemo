trigger opportunityupdate on Customer_Project__c (after insert,after update) {
    
    List<Opportunity> opps=new List<Opportunity>();
    
    for(Customer_Project__C cp:trigger.new)
    {
        if(Cp.Status__c=='Active')
        {
            opportunity opp=new opportunity();
   			opp.id=cp.oppotunity__c;
            opp.Active_Customer_project__c=true;
            opps.add(opp);
        }
        else
        {
            opportunity opp=new opportunity();
   			opp.id=cp.oppotunity__c;
            opp.Active_Customer_project__c=false;
            opps.add(opp);
        }
        update opps;
    }

}