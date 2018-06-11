@isTest
public  class AnimalLocatorTest {
	@isTest
    public static void testgetcall(){
    Test.setMock(HttpCalloutMock.class,new AnimalLocatorMock());
   	String response=AnimalLocator.getAnimalNameById(1);
    system.debug(response);
	System.assertEquals(response,'chicken'); 
        
        
      }                                                      
                                                          
}