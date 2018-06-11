public class Contactex {
    
    public Contact record{get;set;}
    
    public String City{
        
        get{
            
                return record.Account.BillingCity;
        }
        private set;
        
    }
    
    public Contactex(ApexPages.StandardController sc)
    {   
       
        record=(Contact)sc.getRecord();
    }

}