public class ownerchangeclass {
    
    public void ownermethod(List<Account> owr)
    {
  		Set<id> setid=new Set<id>();
        Map< id,String> mapid=new Map<id,String>();
        
        for(Account acc:owr)
        {
            setid.add(acc.OwnerId);
        }
		
		List<User> usr=[Select id,name from user where id In:setid];
		
        for(user us:usr)
        {
            mapid.put(us.id,us.name);
        }
        
        for(Account acc:owr)
        {
            acc.owner__c=mapid.get(acc.OwnerId);
        }
    }
}