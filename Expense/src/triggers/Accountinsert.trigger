trigger Accountinsert on Account (before insert) {
    
    for(Account a:Trigger.new)
    {
        List<Account> newname=[Select Id,name from Account where name=:a.name];
        
        if(newname.size()>0)
        {
            a.name.addError('Account Already exist');
        }
    }
    
}