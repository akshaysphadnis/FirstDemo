@isTest
public class LeadTriggertest {

    @isTest public static void duptest() 
    {	
        Contact con=new Contact();
         con.LastName='alfred';
        con.Email='darkknight@gmail.com';
        insert con;
        Lead l=new Lead();
        l.LastName='wayne';
        l.Email='darkknight@gmail.com';
        l.Company='Wayne Enterprises';
       	
        
		Test.startTest();
        Database.SaveResult result=Database.insert(l,false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assertEquals('Duplicate lead',result.getErrors()[0].getMessage());
        
        
     
    }
}