@isTest
public class updatephonetest {

    @isTest public static void phonetest(){
        
        Account acc=new Account(name='charlie');
        insert acc;
        
        Contact con=new Contact(lastname='puth',AccountId=acc.Id);
      	insert con;
        
        System.assertEquals(acc.Phone,con.Phone);
    }
    
}