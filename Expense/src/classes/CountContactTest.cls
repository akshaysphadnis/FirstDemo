@isTest
public class CountContactTest {
    
    static testmethod void updatecount()
    {
    Account a=new Account(name='shubham');
    insert a;
    
    Contact con=new Contact(lastname='shahane',AccountId=a.Id);
    insert con;
    
    //Map<id,Decimal> mapid=new Map<id,integer>();
      //  mapid.put(a.Id,a.Count__c);
    System.assertEquals(1,a.Count__c);    
       
        }
}