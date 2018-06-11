@isTest
public class ParkLocatorTest {

    @isTest static void testCallout() {  
    
      Test.setMock(WebServiceMock.class, new ParkServiceMock());
      
        String country = 'India';
    
        
        
        
        System.assertEquals(new List<String>{'India', 'Germany', 'Japan'},     ParkLocator.country(country)); 
            
            
        
            
    }
    
    
}