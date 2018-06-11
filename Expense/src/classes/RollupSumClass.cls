public class RollupSumClass {

    list<Account> acclist=new list<Account>();
    list<Account> listacc=new list<Account>();
    public void RollupMethod(Set<Id> newid)
    {
          acclist=[Select id,Total__c,(Select id,Amount__c from Contacts)from Account where id In:newId];
    	
        	for(Account acc:acclist)
            {
                Decimal sum=0;
                for(Contact con:acc.contacts)
                {
                    Sum=con.Amount__c+Sum;
                }
                acc.Total__c=Sum;
                listacc.add(acc);
            }
        update acclist;
    }
    
}