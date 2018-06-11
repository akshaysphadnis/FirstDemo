/*@isTest
private class AccountManagerTest {
  
    @isTest static void testGetCaseById() {
        Id recordId = createAccountRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri ='https://na1.salesforce.com/services/apexrest/Accounts/'+ recordId +'/contacts' ;
           // 'https://yourInstance.salesforce.com/services/apexrest/Accounts/'
           // + recordId;
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount!=null);
        System.assertEquals('Akshay', thisAccount.Name);
    }

    static Id createAccountRecord() {
        // Create test record
                  Account acc=new Account();
        			acc.Name='Akshay';
       				 insert acc;
        			Contact con=new Contact();
        				con.AccountId=acc.Id;
        				con.lastName='Akshaycontact';
        			
        			insert con;
        	return acc.Id;
}
}*/


@isTest
private class AccountManagerTest {

    private static testMethod void getAccountTest1() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri = 'https://na1.salesforce.com/services/apexrest/Accounts/'+ recordId +'/contacts' ;
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test record', thisAccount.Name);

    }

    // Helper method
        static Id createTestRecord() {
        // Create test record
        Account TestAcc = new Account(
          Name='Test record');
        insert TestAcc;
        Contact TestCon= new Contact(
        LastName='Test', 
        AccountId = TestAcc.id);
        return TestAcc.Id;
    }      
}