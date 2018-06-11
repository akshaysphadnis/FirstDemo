public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(integer noofcon,string lastname)
    {
     	 	List<Contact> con=new List<Contact>();
        		
        	 for(Integer i=1;i<=noofcon;i++)
             {
					Contact a = new Contact(Firstname='Test'+i,lastName='Test'+i);
                 	con.add(a);
				}
        return con;

    }

}