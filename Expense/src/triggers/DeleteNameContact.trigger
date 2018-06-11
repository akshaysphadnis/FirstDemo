trigger DeleteNameContact on Account (before insert,before update) {
Set<String> setname=new Set<String>();
List<Contact> conlist=new List<Contact>();
    
    if(trigger.isInsert||trigger.isUpdate)
    {
        for(Account acc:trigger.new)
        {
            setname.add(acc.name);
        }
        
        conlist=[Select id,name from Contact where name In:setname];
        delete conlist;
    }
    
}