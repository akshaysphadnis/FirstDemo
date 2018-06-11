trigger Customerupdate on Customer__c (before update) {
    
    List<test__c> tes=new List<test__c>();
    
    for(Customer__C cust:Trigger.old)
    {
        test__c t=new test__C();
       	 t.Name=cust.Name;
        t.Phone__c=cust.Phone__c;
        t.Salary__c=cust.Salary__c;
        tes.add(t);
        
    }
	insert tes;
    
    
}