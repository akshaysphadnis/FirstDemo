trigger avoidduplicate on Account (before insert) {

    for(Account acc:trigger.new)
    {
        
        System.debug('The account name is'+acc.name);
        integer Reccount=[Select Count() from Account where name=:acc.name];
        
        if(Reccount>0)
        {
            acc.name.Adderror('Duplicate name spotted');
        }
    }

}