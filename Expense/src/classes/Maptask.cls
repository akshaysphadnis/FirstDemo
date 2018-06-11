public class Maptask {
    
    Map<id,user> userid=new Map<id,user>();
    
    List<User> userlist=[Select id,name from user];
    public void mapmethod()
    {
    	for(User us:userlist)
    	{
        	userid.put(us.id,us);
    	}
    }
    
    
  }