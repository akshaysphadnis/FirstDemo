public class soql1 {

    public list<Invoice__c> con{get;set;}
    
    public PageReference show()
    {
        con=[Select id from Invoice__c];
        return null;
    }
}