@isTest
public class AccountProcessorTest {
    @isTest
    public static void testContact()
    {
        Account a=new Account(name='bat');
        insert a;
        Contact c=new Contact();
        c.lastname='miller';
        c.AccountId=a.Id;
        insert c;
        
        Set<id> setaccid=new Set<id>();
        setaccid.add(a.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(Setaccid);        
        Test.stopTest();
        List<Account> acc=[Select Number_of_Contacts__c from Account where id =:a.Id Limit 1];
        
        System.assertEquals(acc.size(),1);    
    }

    
}