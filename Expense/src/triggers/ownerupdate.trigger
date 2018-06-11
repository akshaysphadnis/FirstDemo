trigger ownerupdate on Account (before update,after insert) {
    
    if(trigger.isbefore)
    {
        if(trigger.isupdate)
        {
            ownerchangeclass ownr=new ownerchangeclass();
            ownr.ownermethod(trigger.new);
        }
    }

}