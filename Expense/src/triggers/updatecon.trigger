trigger updatecon on Contact (before insert) {
    
    
    List<Account> acc=new List<Account>();
    
    for(Contact con:trigger.new){
        
        Account a=[Select id,name from Account where id=:con.AccountId];
        
        a.Phone=con.Phone;
        acc.add(a);
        
        
        
    }    

}