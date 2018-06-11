global class LeadProcessor implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('SELECT ID,LEADSOURCE FROM LEAD');
    }
    
    global void execute(Database.BatchableContext bc,List<Lead> scope)
    {
        List<lead> leadlist= new List<lead>();
        for(Lead ld:scope)
        {
            ld.Leadsource='Dreamforce';
            leadlist.add(ld);
        }
        
        update leadlist;
    }
    
    global void finish(Database.BatchableContext bc)
    {
    }
    
    
        
    
}