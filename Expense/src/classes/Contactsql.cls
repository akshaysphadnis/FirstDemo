public class Contactsql {
    
    public List<Contact> con{set;get;}
    
    public pageReference show()
    {
        con=[select id,name,account.name,account.industry from contact Limit 5];
        return null;
    }

}