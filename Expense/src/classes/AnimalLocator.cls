public class AnimalLocator {
    
    public static String getAnimalNameById(Integer ak)
    {
        String retval = null;
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ak);
        request.setMethod('GET');
        HttpResponse response=http.send(request);
        
        if(response.getStatusCode()==200)
        {
            Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
         	Map<String,Object> nameofanimal=(Map<String,Object>)results.get('animal');
            
            retval=string.valueOf(nameofanimal.get('name'));
        }
        
        return retval;    
        }
        
}