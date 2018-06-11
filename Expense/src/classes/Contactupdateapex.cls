public class Contactupdateapex {
    
    public void Contactup(List<Contact> listcon)
    {
        
        List<Contact_relationship__c> conrellist=new List<Contact_relationship__c>();
        for(Contact c:listcon)
        {
            if(c.Contact_relationship__c==true)
            {
                Contact_relationship__c rel=new Contact_relationship__c();
                rel.Name=c.Lastname;
                rel.Contact__c=c.id;
                
                conrellist.add(rel);
            }
        }
        insert conrellist;
    }

}