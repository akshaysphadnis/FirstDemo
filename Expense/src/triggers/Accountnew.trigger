trigger Accountnew on Account (before insert) {
    
    List<String> myname=new List<String>();
    
    for(Account a:Trigger.new)
    {
        myname.add(a.name);
    }
    
    List<Contact> con=[Select name from Contact where name=:myname];
    delete con;
}