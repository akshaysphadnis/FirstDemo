trigger Accountprefix on Account (before insert) {
    
    
    for(Account a:Trigger.new)
    {
        	a.Name='mr'+a.Name;
        	
    }
    
    

}