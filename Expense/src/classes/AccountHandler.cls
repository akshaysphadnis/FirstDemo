public class AccountHandler {
    
    	
        public static Account insertNewAccount(String n)
    	{
    	    	Account acc=new Account(name=n);
        	
            try
    		{
    	    	
        		insert acc;
    		}
    	
    		catch(DmlException e)
    		{
					return null;
             }
            return acc;
        }
}