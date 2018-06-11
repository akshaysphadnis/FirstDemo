public class AccountProcessor {
     @future
    public static void countContacts(Set<Id> Ids)  
    {
        List<Account> listacc=[Select id,Number_of_Contacts__c,(Select id from Contacts) From Account Where Id In:Ids];
        
        For(Account acc:listacc)
        {
            List<Contact> conlst=acc.contacts;
            acc.Number_of_Contacts__c=conlst.size();
        }
        update listacc;
    }
}