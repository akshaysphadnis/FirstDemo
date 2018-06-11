public class ContactAndLeadSearch {
    
    public static List<List<Sobject>> searchContactsAndLeads(String x)
    {
        List<List<Sobject>> searchlist=[Find 'Smith' IN All FIELDS RETURNING Lead(Firstname,Lastname),Contact(Firstname,Lastname)];
   		
        return searchlist;
   	}
	
}