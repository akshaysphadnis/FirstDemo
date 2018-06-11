@isTest
public class Customerupdatetest {

    @isTest public static void updatetest()
    {
        Customer__c cust=new Customer__C(name='ash',Phone__C='43434232');
        insert cust;
        
        cust.Name='ashley';
        update cust ;
       
        test__c t=[Select id,name from test__c where name='ash'];
        system.assertEquals(t.Name,'ash');
             
    }
    
}