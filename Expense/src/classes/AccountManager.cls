//@RestResource(urlMapping='/Account/*/contacts')
/*global class AccountManager{
@HttpGet
    global static Account getaccount()
    {
        RestRequest request=Restcontext.request;
        
        String aid=request.requestURI.substringBetween('Accounts/','/contacts');
    	
        List<Account> result=[Select id,name,(Select id,name from contacts) from Account where id =:aid];
        
        System.debug(result);
        if(result==null){
           return result[0]; 
        } else{
            Account a = new Account();
            return a;
        }           
    
    }
}*/
@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest req = RestContext.request;
        String accId = req.requestURI.substringBetween('Accounts/', '/contacts');
        Account acc = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) 
                       FROM Account WHERE Id = :accId];
        return acc;
    }
}