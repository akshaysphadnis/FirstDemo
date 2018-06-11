trigger Contactcreate on Account (after insert,after update) {
    
    Map<id,decimal> accmap=new Map<id,decimal>();
    List<Contact> conlist=new List<Contact>();
    
    for(Account acc:trigger.new)
    {
        accmap.put(acc.id,acc.NumberofLocations__c);
    }
    
    for(Id accid:accmap.keySet())
    {
        for(decimal i=1;i<=accmap.get(accid);i++)
        {
            Contact con=new Contact();
            con.AccountId=accid;
            con.LastName='ak'+i;
            conlist.add(con);
        }
       
     }
    insert conlist;
        

}