trigger PreventDuplicateAccount on Account(before Insert)
{
    
    if(trigger.isInsert)
   {
        Set<String> setid=new Set<String>();
        List<Account> acclist=new List<Account>();
        map<String,id> mapname=new map<String,id>();
        for(Account acc:trigger.new)
        {
            setid.add(acc.name);    
    
        }

        acclist=[Select id,name from Account where name In:setid];

        for(Account acc:acclist)
        {
            mapname.put(acc.name,acc.id);
        }
    
        for(Account acc:trigger.new)
        {
            if(mapname.containsKey(acc.name))
            {
                acc.name.addError('Account name exist');
            }       
        }
    }
}