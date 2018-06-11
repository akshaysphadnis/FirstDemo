public class Contactrelupdateapex {
    
    public void Contactrelup(List<Contact_relationship__c> conrel)
    {
    		Set<id> setlist=new Set<id>();
        
        for(Contact_relationship__c listcon:conrel)
        {
            setlist.add(listcon.ownerId);
        }
        
        map<id,String> maplist=new map<id,String>();
        
        List<user> u=[Select id,name from user where id in:setlist];
        
        for(user usr:u)
        {
            maplist.put(usr.id,usr.name);
        }
        
        if(u!=null&&u.size()>0)
        {
            for(Contact_relationship__c listcon:conrel)
            {
                if(listcon.ownerid!=null)
                {
                    listcon.Name=maplist.get(listcon.ownerid);
                }
            }
        }
    }
        
    }