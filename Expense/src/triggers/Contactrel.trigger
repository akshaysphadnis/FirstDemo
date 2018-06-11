trigger Contactrel on Contact (after insert) {
    
    if(trigger.isAfter)
    {
        if(trigger.isInsert)
        {
            contactrelclass conins=new contactrelclass();
            conins.contactprimemethod(trigger.new);
        }
    }

}