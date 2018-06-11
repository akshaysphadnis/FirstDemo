public class ContactSearch {
    
    public Static List<Contact> searchForContacts(String lastname,String mailingpostalCode )
    {
       List<Contact> con=[Select Id,Name From Contact where Lastname=:lastname And MailingPostalCode=:mailingpostalcode];
       return con;

    }
    
}