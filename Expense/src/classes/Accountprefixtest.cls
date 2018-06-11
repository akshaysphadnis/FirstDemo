@isTest
public class Accountprefixtest {
    
	public static testmethod void testprefix()
    {
        String myname='mrrobot';
        
        Account acc=new Account(name=myname);
       	insert acc; 
        Account a=[Select name from Account where name=:myname];
       
        System.assertEquals(myname,a.Name);
       
        
    }

}