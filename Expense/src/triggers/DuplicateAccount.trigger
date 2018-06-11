trigger DuplicateAccount on Account(before Insert,before update,after undelete)
{
    
    if(trigger.isupdate||trigger.isInsert||trigger.isUndelete)
    {
        Set<String> setid=new Set<String>();
        List<Account> acclist=new List<Account>();
        map<String,id> mapname=new map<String,id>();
        for(Account ac:trigger.new)
        {
            setid.add(ac.name);    
    
        }

        acclist=[Select id,name from Account where name In:setid];

        for(Account acc:acclist)
        {
            mapname.put(acc.name,acc.id);
        }
    
        for(Account a:trigger.new)
        {
            if(mapname.containsKey(a.name))
            {
                a.name.addError('Account name exist');
            }       
        }
    }
}