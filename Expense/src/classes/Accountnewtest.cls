@isTest
public class Accountnewtest {
    
    @isTest public static void contactdelete()
    {    
        string myname='Smith';
    	Account a=new Account(name=myname);
    	
        insert a;
        
        List<Contact> con=[Select name from Contact where name=:myname];
        System.assertEquals(0,con.size());
            
    }    
        
    }