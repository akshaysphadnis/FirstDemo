@isTest
public class Accountinserttest {
    
    @isTest public static void testdup()
    {
        String addError='Account Already exist';
        String myname='Batman';
        Account a2=new Account(name=myname);
   
        List<Account> acc=[Select name from Account where name=:myname];
        
        if(acc.size()==0)
        {
            System.assertEquals(0,acc.size());
            insert a2;
        }
    	else
        {
            System.assertEquals('Account Already exist',addError);
        }
       
    }
 
}