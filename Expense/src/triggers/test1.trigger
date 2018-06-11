trigger test1 on Account (before insert) {
    
    for(Account a:Trigger.new)
    {
        a.Description='New Description';
    }

}