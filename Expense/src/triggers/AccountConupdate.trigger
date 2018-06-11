trigger AccountConupdate on Contact(After delete)
{
    Set<id> setid=new Set<id>();
    list<Account> listacc=new list<Account>();  
    if(trigger.isDelete)
    {

        for(Contact con:trigger.old)
        {
            setid.add(con.Accountid);
        
        }
        
    List<Account> acclist=[Select id,name from Account where id In:setid];

    for(Account acc:acclist)
    {
        
        acc.Site='changed';
        listacc.add(acc);
    }

    update listacc;
}
        
            


}