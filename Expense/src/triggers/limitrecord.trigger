trigger limitrecord on Opportunity (before insert) {

    for(Opportunity op:trigger.new)
    {
        
        
        integer Reccount=[Select Count() from Opportunity];
        
        if(Reccount>35)
        {
           op.Adderror('limit exceed');
        }
    }

}