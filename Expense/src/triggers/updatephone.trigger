trigger updatephone on Contact (after insert) {

    
   List<Account> acc=new List<Account>();
    
    for(Contact con:Trigger.new)
    {
        Account a=[Select id,phone from Account where id=:con.AccountId];
        a.Phone=con.Phone;
        acc.add(a);
    }
    update acc;
    
}