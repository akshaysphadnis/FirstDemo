trigger PhoneUpdate on Contact (after insert,after update) {

   
    Map<id,String> mapid=new Map<id,String>();
    List<Account> acclist=new List<Account>();
    List<Account> listacc=new List<Account>();
    for(Contact con:trigger.new)
    {
        mapid.put(con.AccountId,con.Phone); 
    }   
    
    acclist=[Select id,phone from Account where id In:mapid.keySet()];
    
    for(Account acc:acclist)
    {
        acc.phone=mapid.get(acc.Id);
        listacc.add(acc);
    }
    update listacc;
    
}