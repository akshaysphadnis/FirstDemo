@istest
public class TestRestrictContactByName {
    
    @istest static void invalidname()
    {
    	Contact con=new Contact(Lastname='INVALIDNAME');
    	
        
        Test.startTest();
        try{
            insert con;
        }
        catch(Exception e)
        {
            Test.stopTest();
        }
       
    }
    
    

}